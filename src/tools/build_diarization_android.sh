#!/usr/bin/env bash
set -euo pipefail
project="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
ndk="${1:?Usage: build_diarization_android.sh /path/to/ndk}"
toolchain="$ndk/toolchains/llvm/prebuilt/linux-x86_64/bin"
export CARGO_TARGET_DIR="$project/build/diarization/target"
export RAYON_NUM_THREADS=2
for spec in "arm64-v8a aarch64-linux-android aarch64" "x86_64 x86_64-linux-android x86_64"; do
    read -r abi target machine <<<"$spec"
    compiler="$toolchain/${target}26-clang"
    cxx="$toolchain/${target}26-clang++"
    key="${target//-/_}"
    export "CC_$key=$compiler" "CXX_$key=$cxx" "AR_$key=$toolchain/llvm-ar"
    linker_key="CARGO_TARGET_${key^^}_LINKER"
    export "$linker_key=$compiler"
    export RUSTFLAGS="-C link-arg=-Wl,-z,max-page-size=16384"
    cargo build --locked --release --ignore-rust-version --target "$target" \
        --manifest-path "$project/app/src/main/diarization/Cargo.toml" -j "${DIAR_BUILD_JOBS:-3}"
    output="$project/app/src/main/jniLibs/$abi"
    mkdir -p "$output"
    "$toolchain/llvm-strip" --strip-unneeded \
        -o "$output/liblocalscribe_diar.so" "$CARGO_TARGET_DIR/$target/release/liblocalscribe_diar.so"
    "$cxx" -shared -fPIC -O2 -nostdlib++ "$project/app/src/main/cpp/diarization_jni.cpp" \
        -L"$output" -llocalscribe_diar -Wl,-z,max-page-size=16384 -Wl,-soname,liblocalscribe_diar_jni.so \
        -o "$output/liblocalscribe_diar_jni.so"
done
