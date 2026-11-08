#!/usr/bin/env bash
set -euo pipefail

project="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
ndk="${1:?Usage: bash tools/build_llama_android.sh /path/to/android-ndk-r28c [build-dir]}"
work="${2:-$project/build/llama-android}"
archive="$project/vendor-sources/llama.cpp-b6500.tar.gz"
mkdir -p "$work"
work="$(cd -- "$work" && pwd)"
printf '%s  %s\n' f2a188b194f25178460eecda7a7619b34d0b53421588faa2e6f0287a96674f28 "$archive" | sha256sum -c
tar -xzf "$archive" -C "$work"
for abi in arm64-v8a x86_64; do
    cmake -S "$project/app/src/main/cpp" -B "$work/$abi" \
        -DLLAMA_SOURCE_DIR="$work/llama.cpp-b6500" \
        -DCMAKE_TOOLCHAIN_FILE="$ndk/build/cmake/android.toolchain.cmake" \
        -DANDROID_ABI="$abi" -DANDROID_PLATFORM=android-26 -DLOCALSCRIBE_AVX_VARIANT=OFF \
        -DANDROID_STL=c++_static -DCMAKE_BUILD_TYPE=Release
    cmake --build "$work/$abi" --target localscribe_llama -j "${LLAMA_BUILD_JOBS:-4}"
    dest="$project/app/src/main/jniLibs/$abi"
    mkdir -p "$dest"
    "$ndk/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-strip" --strip-unneeded \
        -o "$dest/liblocalscribe_llama.so" "$work/$abi/liblocalscribe_llama.so"
done

# Keep the portable backend and add AVX/F16C only as an optional x86 library.
cmake -S "$project/app/src/main/cpp" -B "$work/x86_64-avx" \
    -DLLAMA_SOURCE_DIR="$work/llama.cpp-b6500" \
    -DCMAKE_TOOLCHAIN_FILE="$ndk/build/cmake/android.toolchain.cmake" \
    -DANDROID_ABI=x86_64 -DANDROID_PLATFORM=android-26 -DLOCALSCRIBE_AVX_VARIANT=ON \
    -DANDROID_STL=c++_static -DCMAKE_BUILD_TYPE=Release
cmake --build "$work/x86_64-avx" --target localscribe_llama -j "${LLAMA_BUILD_JOBS:-4}"
"$ndk/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-strip" --strip-unneeded \
    -o "$project/app/src/main/jniLibs/x86_64/liblocalscribe_llama_avx.so" \
    "$work/x86_64-avx/liblocalscribe_llama_avx.so"

# Stamp only after both builds succeed, so Gradle rejects stale or partially rebuilt JNI.
python3 - "$project" <<'PY_STAMP'
from pathlib import Path
import hashlib, json, sys
root = Path(sys.argv[1])
data = {
    "format": 1,
    "sources": {name: hashlib.sha256((root / "app/src/main/cpp" / name).read_bytes()).hexdigest()
                for name in ("editor.cpp", "CMakeLists.txt")},
    "auxiliaryLibraries": {"x86_64/liblocalscribe_llama_avx.so": hashlib.sha256(
        (root / "app/src/main/jniLibs/x86_64/liblocalscribe_llama_avx.so").read_bytes()).hexdigest()},
    "libraries": {abi: hashlib.sha256((root / "app/src/main/jniLibs" / abi /
                    "liblocalscribe_llama.so").read_bytes()).hexdigest()
                  for abi in ("arm64-v8a", "x86_64")},
}
(root / "app/src/main/cpp/editor-build.json").write_text(json.dumps(data, indent=2) + "\n")
PY_STAMP
