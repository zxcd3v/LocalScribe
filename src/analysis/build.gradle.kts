plugins { kotlin("jvm") }

kotlin { jvmToolchain(21) }

tasks.withType<org.jetbrains.kotlin.gradle.tasks.KotlinCompile>().configureEach {
    compilerOptions.jvmTarget.set(org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17)
}

tasks.withType<JavaCompile>().configureEach {
    sourceCompatibility = "17"
    targetCompatibility = "17"
}

dependencies {
    implementation(project(":core"))
    compileOnly(files("../ort/libs/onnxruntime.jar"))
    testImplementation("junit:junit:4.13.2")
    testImplementation("com.microsoft.onnxruntime:onnxruntime:1.28.0")
}

tasks.test {
    maxHeapSize = "1536m"
    if (providers.gradleProperty("testOrtLibrary").isPresent) {
        val runtimeLibrary = file(providers.gradleProperty("testOrtLibrary").get())
        systemProperty("onnxruntime.native.onnxruntime.path", runtimeLibrary.absolutePath)
        systemProperty(
            "onnxruntime.native.onnxruntime4j_jni.path",
            file(providers.gradleProperty("testOrtJni").get()).absolutePath,
        )
    }
    systemProperty("analysisModels", providers.gradleProperty("analysisModels").orElse("").get())
}
