#include <jni.h>
#include <cstddef>

extern "C" {
void *diar_open_workers(const char *, const char *, bool, double, unsigned int);
char *diar_push(void *, const float *, size_t);
char *diar_finish(void *);
void diar_close(void *);
const char *diar_error();
void diar_string_free(char *);
}

static jstring result(JNIEnv *env, char *text) {
    if (!text) {
        env->ThrowNew(env->FindClass("java/lang/IllegalStateException"), diar_error());
        return nullptr;
    }
    jstring out = env->NewStringUTF(text);
    diar_string_free(text);
    return out;
}

extern "C" JNIEXPORT jlong JNICALL
Java_ru_localscribe_engine_NativeDiarizer_open(
    JNIEnv *env, jobject, jstring path, jstring runtime, jboolean secondary, jdouble step, jint workers) {
    const char *model = env->GetStringUTFChars(path, nullptr);
    if (!model) return 0;
    const char *ort = env->GetStringUTFChars(runtime, nullptr);
    if (!ort) { env->ReleaseStringUTFChars(path, model); return 0; }
    void *handle = diar_open_workers(model, ort, secondary, step, static_cast<unsigned int>(workers));
    env->ReleaseStringUTFChars(path, model);
    env->ReleaseStringUTFChars(runtime, ort);
    if (!handle) env->ThrowNew(env->FindClass("java/lang/IllegalStateException"), diar_error());
    return reinterpret_cast<jlong>(handle);
}

extern "C" JNIEXPORT jstring JNICALL
Java_ru_localscribe_engine_NativeDiarizer_push(
    JNIEnv *env, jobject, jlong handle, jfloatArray samples) {
    jsize length = env->GetArrayLength(samples);
    jfloat *audio = env->GetFloatArrayElements(samples, nullptr);
    if (!audio) return nullptr;
    char *out = diar_push(reinterpret_cast<void *>(handle), audio, length);
    env->ReleaseFloatArrayElements(samples, audio, JNI_ABORT);
    return result(env, out);
}

extern "C" JNIEXPORT jstring JNICALL
Java_ru_localscribe_engine_NativeDiarizer_finish(JNIEnv *env, jobject, jlong handle) {
    return result(env, diar_finish(reinterpret_cast<void *>(handle)));
}

extern "C" JNIEXPORT void JNICALL
Java_ru_localscribe_engine_NativeDiarizer_release(JNIEnv *, jobject, jlong handle) {
    diar_close(reinterpret_cast<void *>(handle));
}
