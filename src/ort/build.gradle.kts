plugins { id("com.android.library") }

android {
    namespace = "ru.localscribe.ort"
    compileSdk = 36
    buildToolsVersion = "36.0.0"
    defaultConfig {
        minSdk = 26
        ndk { abiFilters += listOf("arm64-v8a", "x86_64") }
        consumerProguardFiles("consumer-rules.pro")
    }
}

dependencies { api(files("libs/onnxruntime.jar")) }
