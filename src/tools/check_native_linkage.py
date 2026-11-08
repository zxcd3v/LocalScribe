#!/usr/bin/env python3
"""Check both Android ABIs against their actual ORT exports (requires readelf)."""
from pathlib import Path
import re, subprocess, json, struct
ROOT = Path(__file__).resolve().parents[1]

def symbols(p):
    return subprocess.check_output(['readelf', '--dyn-syms', '--wide', str(p)], text=True).splitlines()

result = {}
for abi, machine in [('arm64-v8a', 183), ('x86_64', 62)]:
    runtime = ROOT / f'sherpa/src/main/jniLibs/{abi}/libonnxruntime.so'
    libraries = [ROOT / f'sherpa/src/main/jniLibs/{abi}/libsherpa-onnx-jni.so',
                 ROOT / f'ort/src/main/jniLibs/{abi}/libonnxruntime4j_jni.so']
    for lib in [runtime, *libraries]:
        assert struct.unpack_from('<H', lib.read_bytes(), 18)[0] == machine, lib
    exports = {line.split()[-1].replace('@@', '@') for line in symbols(runtime)
               if ' GLOBAL ' in line and ' UND ' not in line}
    result[abi] = {}
    for lib in libraries:
        required = {re.sub(r' \(\d+\)$', '', line.strip()).split()[-1]
                    for line in symbols(lib) if ' UND ' in line and '@VERS_' in line}
        assert required, lib
        assert not required - exports, (lib, required - exports)
        result[abi][lib.name] = sorted(required)
print(json.dumps({'runtime': '1.28.2', 'satisfied_versioned_imports': result}, indent=2))
