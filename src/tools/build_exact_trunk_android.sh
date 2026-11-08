#!/usr/bin/env bash
# Experimental native-only build. Does not replace app/src/main/jniLibs or APKs.
set -euo pipefail
project="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
ndk="${1:?Usage: build_exact_trunk_android.sh /path/to/ndk [x86_64|arm64-v8a|all]}"
selected="${2:-all}"
case "$selected" in x86_64|arm64-v8a|all) ;; *) exit 2 ;; esac
export LOCALSCRIBE_TRUNK_ONNX="$project/build/integrated-084/wespeaker-trunk.fp32.onnx"
python3 - "$project" "$LOCALSCRIBE_TRUNK_ONNX" <<'PY'
import hashlib, sys
from pathlib import Path
project, graph = map(Path, sys.argv[1:])
expected = {
    graph: '0e07ba7ac80acb63c9ad7df618ea6c56ed5adcb7bcfe68d681663de61291a1c9',
    project/'model-inputs/extra/wespeaker-multimask-tail.safetensors': 'b97b090ceebcf10924732ad4552a2d867d76d38dcc1409a13687a6ba71ff1ef3',
}
for path, digest in expected.items():
    if hashlib.sha256(path.read_bytes()).hexdigest() != digest:
        raise SystemExit(f'Unverified graph or source model: {path}')
PY
export CARGO_TARGET_DIR="$project/build/integrated-084/android-target"
toolchain="$ndk/toolchains/llvm/prebuilt/linux-x86_64/bin"
for spec in "x86_64 x86_64-linux-android" "arm64-v8a aarch64-linux-android"; do
    read -r abi target <<<"$spec"
    if [[ "$selected" != all && "$selected" != "$abi" ]]; then continue; fi
    key="${target//-/_}"
    export "CC_$key=$toolchain/${target}26-clang"
    export "CXX_$key=$toolchain/${target}26-clang++"
    export "AR_$key=$toolchain/llvm-ar"
    export "CARGO_TARGET_${key^^}_LINKER=$toolchain/${target}26-clang"
    export RUSTFLAGS="-C link-arg=-Wl,-z,max-page-size=16384"
    cargo rustc --locked --release --ignore-rust-version --target "$target" \
        --manifest-path "$project/app/src/main/diarization/Cargo.toml" \
        --features embedded-ort-trunk -j "${DIAR_BUILD_JOBS:-2}" -- \
        -C link-arg=-Wl,-soname,liblocalscribe_diar.so
    output="$project/build/integrated-084/android/$abi"
    mkdir -p "$output"
    "$toolchain/llvm-strip" --strip-unneeded \
        -o "$output/liblocalscribe_diar.so" "$CARGO_TARGET_DIR/$target/release/liblocalscribe_diar.so"
    sha256sum "$output/liblocalscribe_diar.so" > "$output/liblocalscribe_diar.so.sha256"
done
