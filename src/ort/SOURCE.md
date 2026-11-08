# ONNX Runtime Java bridge, CPU

The Java classes in `libs/onnxruntime.jar` are unchanged `classes.jar` from Maven Central
`com.microsoft.onnxruntime:onnxruntime-android:1.28.0`.
AAR SHA-256: `f351a0638696f54b35184290dbc001d66daae17281ad0b548d2c70347d53b8a9`.
Sources JAR SHA-256: `c1d04265e3f6f0af7a82a899661008e93711c4bb76b577defe0fb21f7577d0f7`.

**The AAR's prebuilt JNI is NOT used:** it requires ELF symbol version `VERS_1.28.0`,
which conflicts with the sherpa distribution's `VERS_1.28.2`.
`libonnxruntime4j_jni.so` is rebuilt from Microsoft's unchanged v1.28.0 C sources
against the existing sherpa ORT 1.28.2. Both inference stacks use a single runtime.
The binding requests C API 23; real-model Linux tests exercise the same rebuilt
binding against ORT 1.28.2. Android linkage is checked statically; device execution
still needs the instrumentation test.

Vendored Java/C/header sources: `upstream/`, checksums `upstream/SOURCES.sha256`.
Source C files: https://github.com/microsoft/onnxruntime/tree/v1.28.0/java/src/main/native
The source JAR provides Java sources used to generate JNI headers. No model code is patched.
Build configuration: CPU only, no training, `ORT_VERSION=1.28.2`, API 26, NDK r28c,
16 KiB ELF LOAD alignment. The prebuilt result is checked in, so ordinary Gradle builds
need no NDK. The exact rebuild command is:

```bash
python3 tools/build_ort_jni.py --abi arm64-v8a --jdk "$JAVA_HOME" --ndk "$ANDROID_NDK_HOME"
python3 tools/build_ort_jni.py --abi x86_64 --jdk "$JAVA_HOME" --ndk "$ANDROID_NDK_HOME"
sha256sum -c ort.sha256
```

Linux validation build (use the official sherpa v2.0.1 Linux shared runtime):

```bash
python3 tools/build_ort_jni.py --jdk "$JAVA_HOME" \
  --runtime /path/to/sherpa/lib/libonnxruntime.so --output /tmp/localscribe-jni/libonnxruntime4j_jni.so
./gradlew :analysis:test -PanalysisModels=/path/to/models/advanced \
  -PtestOrtLibrary=/path/to/sherpa/lib/libonnxruntime.so \
  -PtestOrtJni=/tmp/localscribe-jni/libonnxruntime4j_jni.so
```

MIT license: `../licenses/onnxruntime-MIT.txt`; upstream copyright notices in each
source include Microsoft, Oracle and Arm. Third-party notices are in `../licenses/`.
Maven artifact: https://repo.maven.apache.org/maven2/com/microsoft/onnxruntime/onnxruntime-android/1.28.0/onnxruntime-android-1.28.0.aar

Since 0.6.1 both ARM64 and x86_64 are bundled, with separate JNI outputs and ABI-matched shared runtimes. NDK r28c Linux archive SHA-256: `dfb20d396df28ca02a8c708314b814a4d961dc9074f9a161932746f815aa552f`.
