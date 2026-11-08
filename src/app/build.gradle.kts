import groovy.json.JsonSlurper
import groovy.json.JsonOutput
import java.security.MessageDigest
import java.util.Properties
import java.util.zip.ZipFile

plugins {
    id("com.android.application")
    kotlin("android")
    kotlin("plugin.serialization")
    id("org.jetbrains.kotlin.plugin.compose")
}

val signingFile =
    providers
        .gradleProperty("signingProperties")
        .map { rootProject.file(it) }
        .getOrElse(rootProject.file("keystore.properties"))
val signing =
    Properties().apply { if (signingFile.isFile) signingFile.inputStream().use { load(it) } }

// Integration source was supplied as an APK. Keep its original DEX in the
// final package; the separate manifest is selected only by the packaging tool.
val integratedBuild = providers.gradleProperty("integratedBuild").orNull == "true"

android {
    if (integratedBuild) sourceSets.getByName("main").manifest.srcFile("src/integrated/AndroidManifest.xml")
    namespace = "ru.localscribe"
    compileSdk = 36
    buildToolsVersion = "36.0.0"
    defaultConfig {
        applicationId = "ru.localscribe"
        minSdk = 26
        targetSdk = 37
        versionCode = 20
        versionName = if (integratedBuild) "0.8.6-dev" else "0.8.6-core-dev"
        resValue("string", "app_name", if (integratedBuild) "LocalScribe" else "Локальный диалог")
        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
        ndk { abiFilters += listOf("arm64-v8a", "x86_64") }
    }
    buildFeatures { compose = true }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    signingConfigs {
        if (signingFile.isFile)
            create("standalone") {
                storeFile = rootProject.file(signing.getProperty("storeFile"))
                storePassword = signing.getProperty("storePassword")
                keyAlias = signing.getProperty("keyAlias")
                keyPassword = signing.getProperty("keyPassword")
            }
    }
    buildTypes {
        debug {
            applicationIdSuffix = ".debug"
            versionNameSuffix = "-debug"
            resValue("string", "app_name", "Локальный диалог · тест")
        }
        release {
            isMinifyEnabled = false // Keep official JNI class/method names intact.
            isDebuggable = false
            if (signingFile.isFile) signingConfig = signingConfigs.getByName("standalone")
        }
    }
    androidResources { noCompress += listOf("zip", "onnx", "gguf") }
    testOptions { unitTests.isIncludeAndroidResources = true }
    packaging {
        jniLibs {
            useLegacyPackaging = false
            excludes += setOf("**/libsherpa-onnx-c-api.so", "**/libsherpa-onnx-cxx-api.so")
        }
        resources.excludes += "/META-INF/{AL2.0,LGPL2.1}"
    }
}

kotlin { compilerOptions { jvmTarget.set(org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17) } }

dependencies {
    implementation(project(":core"))
    implementation(project(":analysis"))
    implementation(project(":ort"))
    implementation(files(rootProject.file("vendor-sources/sherpa-onnx-2.0.1.aar")))
    implementation(platform("androidx.compose:compose-bom:2025.10.01"))
    implementation("androidx.activity:activity-compose:1.11.0")
    implementation("androidx.compose.material3:material3")
    implementation("androidx.compose.foundation:foundation")
    implementation("androidx.compose.ui:ui-tooling-preview")
    implementation("androidx.lifecycle:lifecycle-viewmodel-compose:2.9.4")
    implementation("androidx.lifecycle:lifecycle-runtime-compose:2.9.4")
    implementation("androidx.documentfile:documentfile:1.1.0")
    implementation("androidx.core:core-ktx:1.17.0")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.10.2")
    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.9.0")
    androidTestImplementation("androidx.test.ext:junit:1.3.0")
    androidTestImplementation("androidx.test:runner:1.7.0")
    androidTestImplementation("androidx.test:rules:1.7.0")
    testImplementation("junit:junit:4.13.2")
    testImplementation("org.robolectric:robolectric:4.16.1")
    testImplementation("androidx.compose.ui:ui-test-junit4")
    debugImplementation("androidx.compose.ui:ui-test-manifest")
}

// Carry upstream notices with standalone APK distributions as well as the source archive.
val syncLicenseAssets by
    tasks.registering(Sync::class) {
        from(rootProject.file("licenses")) { exclude("sherpa-CHANGELOG.txt") }
        from(rootProject.file("models.lock.json")) { rename { "supported-models.json" } }
        into(layout.buildDirectory.dir("generated/legalAssets/licenses"))
    }

android.sourceSets
    .getByName("main")
    .assets
    .srcDir(layout.buildDirectory.dir("generated/legalAssets"))

tasks.named("preBuild").configure { dependsOn(syncLicenseAssets) }

// Optional full distribution: same app with a verified model pack embedded in its APK.
// Omitting -PbundledModels retains a small build with manual local ZIP import.
val bundledModelsPath = providers.gradleProperty("bundledModels")
val bundledAssets = layout.buildDirectory.dir("generated/bundledAssets")
val syncBundledModels by
    tasks.registering {
        inputs.property("bundledModelsPath", bundledModelsPath.orElse(""))
        inputs.file(rootProject.file("models.lock.json"))
        if (bundledModelsPath.isPresent) inputs.file(rootProject.file(bundledModelsPath.get()))
        outputs.dir(bundledAssets)
        doLast {
            val destination = bundledAssets.get().asFile
            destination.deleteRecursively()
            destination.mkdirs()
            if (bundledModelsPath.isPresent) {
                val pack = rootProject.file(bundledModelsPath.get())
                require(pack.isFile) { "Model ZIP not found: $pack" }
                val lockText = rootProject.file("models.lock.json").readText()
                val locked = JsonSlurper().parseText(lockText) as Map<*, *>
                val hashes = locked["files"] as Map<*, *>
                var unpackedBytes = 0L
                ZipFile(pack).use { zip ->
                    val actualManifest =
                        zip.getInputStream(zip.getEntry("manifest.json")).bufferedReader().use {
                            it.readText()
                        }
                    require(JsonSlurper().parseText(actualManifest) == locked) {
                        "Model manifest differs from models.lock.json"
                    }
                    require(
                        zip.entries()
                            .asSequence()
                            .filter { !it.isDirectory }
                            .map { it.name }
                            .toSet() == hashes.keys + "manifest.json"
                    ) {
                        "Unexpected files in model ZIP"
                    }
                    for (entry in zip.entries().asSequence().filter { !it.isDirectory }) {
                        require(entry.size > 0) { "Invalid model file size" }
                        unpackedBytes += entry.size
                        if (entry.name != "manifest.json") {
                            val digest = MessageDigest.getInstance("SHA-256")
                            zip.getInputStream(entry).use { input ->
                                val buffer = ByteArray(65536)
                                while (true) {
                                    val count = input.read(buffer)
                                    if (count < 0) break
                                    digest.update(buffer, 0, count)
                                }
                            }
                            require(
                                digest.digest().joinToString("") { "%02x".format(it) } ==
                                    hashes[entry.name]
                            ) {
                                "Corrupt model: ${entry.name}"
                            }
                        }
                    }
                }
                pack.copyTo(destination.resolve("models-ru.zip"))
                destination
                    .resolve("bundled-models.json")
                    .writeText("""{"unpackedBytes":$unpackedBytes,"manifest":$lockText}""")
            }
        }
    }

android.sourceSets.getByName("main").assets.srcDir(bundledAssets)

tasks.named("preBuild").configure { dependsOn(syncBundledModels) }

// Independently cached English ASR and Russian text editor weights.
val extraModelsPath = providers.gradleProperty("extraModelsDir")
// Offline ASR, diarization and manual notes remain available without the optional text editor.
val includeTextEditor = providers.gradleProperty("includeTextEditor").map { it.toBooleanStrict() }.orElse(true)
val extraModelAssets = layout.buildDirectory.dir("generated/extraModelAssets")
val syncExtraModels by tasks.registering {
    val lock = rootProject.file("extra-models.lock.json")
    inputs.property("extraModelsPath", extraModelsPath.orElse(""))
    inputs.property("includeTextEditor", includeTextEditor)
    inputs.file(lock)
    if (extraModelsPath.isPresent) inputs.dir(rootProject.file(extraModelsPath.get()))
    outputs.dir(extraModelAssets)
    doLast {
        val destination = extraModelAssets.get().asFile
        destination.deleteRecursively()
        destination.mkdirs()
        if (extraModelsPath.isPresent) {
            val source = rootProject.file(extraModelsPath.get())
            val entries = (JsonSlurper().parse(lock) as List<*>).map { it as Map<*, *> }
                .filter { includeTextEditor.get() || it["file"] != "qwen3-0.6b-q8_0.gguf" }
            val models = destination.resolve("models-next").apply { mkdirs() }
            for (entry in entries) {
                val file = source.resolve(entry["file"] as String)
                require(file.isFile && file.length() == (entry["bytes"] as Number).toLong()) {
                    "Missing or incomplete model: ${file.name}"
                }
                val digest = MessageDigest.getInstance("SHA-256")
                file.inputStream().use { input ->
                    val buffer = ByteArray(65536)
                    while (true) {
                        val n = input.read(buffer)
                        if (n < 0) break
                        digest.update(buffer, 0, n)
                    }
                }
                require(digest.digest().joinToString("") { "%02x".format(it) } == entry["sha256"]) {
                    "Incorrect SHA-256: ${file.name}"
                }
                file.copyTo(models.resolve(file.name))
            }
            destination.resolve("extra-models.json").writeText(JsonOutput.toJson(entries))
        }
    }
}
android.sourceSets.getByName("main").assets.srcDir(extraModelAssets)
tasks.named("preBuild").configure { dependsOn(syncExtraModels) }

// Prebuilt JNI is convenient for Gradle-only work, but must match the checked-in C++.
val verifyEditorNative by tasks.registering {
    val manifest = file("src/main/cpp/editor-build.json")
    inputs.file(manifest)
    inputs.file(file("src/main/jniLibs/x86_64/liblocalscribe_llama_avx.so"))
    inputs.files(file("src/main/cpp/editor.cpp"), file("src/main/cpp/CMakeLists.txt"))
    inputs.files(listOf("arm64-v8a", "x86_64").map { file("src/main/jniLibs/$it/liblocalscribe_llama.so") })
    doLast {
        val expected = JsonSlurper().parse(manifest) as Map<*, *>
        fun sha(file: java.io.File): String = MessageDigest.getInstance("SHA-256")
            .digest(file.readBytes()).joinToString("") { "%02x".format(it) }
        for ((name, hash) in expected["sources"] as Map<*, *>) {
            require(sha(file("src/main/cpp/$name")) == hash) {
                "Native editor source changed: rebuild with tools/build_llama_android.sh"
            }
        }
        for ((abi, hash) in expected["libraries"] as Map<*, *>) {
            require(sha(file("src/main/jniLibs/$abi/liblocalscribe_llama.so")) == hash) {
                "Native editor binary differs for $abi: rebuild with tools/build_llama_android.sh"
            }
        }
        for ((path, hash) in expected["auxiliaryLibraries"] as Map<*, *>) {
            require(sha(file("src/main/jniLibs/$path")) == hash) {
                "Optional native editor differs: rebuild with tools/build_llama_android.sh"
            }
        }
    }
}
tasks.named("preBuild").configure { dependsOn(verifyEditorNative) }
