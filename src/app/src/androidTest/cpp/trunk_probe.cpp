// Test-only proof that the production JNI bridge actually binds the candidate.
#include <jni.h>
#include <dlfcn.h>

extern "C" JNIEXPORT jstring JNICALL
Java_ru_localscribe_ExactTrunkPerformanceTest_boundLibrary(JNIEnv* env, jobject) {
    void* handle = dlopen("liblocalscribe_diar_jni.so", RTLD_NOW | RTLD_NOLOAD);
    if (!handle) return env->NewStringUTF("ERROR: JNI bridge not found in test namespace");
    void* symbol = dlsym(handle, "diar_open_workers");
    Dl_info info{};
    const char* path = symbol && dladdr(symbol, &info) && info.dli_fname
        ? info.dli_fname : "ERROR: could not resolve bound diarizer";
    jstring result = env->NewStringUTF(path);
    dlclose(handle);
    return result;
}
