#!/usr/bin/env python3
"""Verify the standalone release contents. Signature/alignment checks: tools/check_apk.sh."""
import argparse
import hashlib
import json
from pathlib import Path
import struct
import zipfile

ROOT = Path(__file__).resolve().parents[1]


def sha(stream):
    digest = hashlib.sha256()
    for block in iter(lambda: stream.read(1024 * 1024), b''):
        digest.update(block)
    return digest.hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('apk', type=Path)
    parser.add_argument('--models', type=Path, required=True)
    parser.add_argument('--stage-one', action='store_true',
                        help='Require the bundled Whisper and Qwen models and llama.cpp JNI')
    args = parser.parse_args()
    with args.models.open('rb') as source:
        expected = sha(source)
    with zipfile.ZipFile(args.apk) as apk:
        entry = apk.getinfo('assets/models-ru.zip')
        assert entry.compress_type == zipfile.ZIP_STORED, 'Model pack must not be compressed twice'
        with apk.open(entry) as stream:
            actual = sha(stream)
        assert actual == expected, 'Bundled ZIP differs from supplied models'
        info = json.loads(apk.read('assets/bundled-models.json'))
        assert info['manifest'] == json.loads((ROOT / 'models.lock.json').read_text())
        assert not any(n.endswith(('.p12', '.keystore', '.jks', 'keystore.properties'))
                       for n in apk.namelist()), 'Private signing material in APK'
        libraries = [n for n in apk.namelist() if n.endswith('.so')]
        extras = {}
        if args.stage_one:
            locked = json.loads((ROOT / 'extra-models.lock.json').read_text())
            assert json.loads(apk.read('assets/extra-models.json')) == locked
            assert {n for n in apk.namelist() if n.startswith('assets/models-next/') and not n.endswith('/')} == {
                f"assets/models-next/{model['file']}" for model in locked
            }, 'Unexpected extra model weights in APK'
            for model in locked:
                name = model['file']
                asset = apk.getinfo(f'assets/models-next/{name}')
                assert asset.file_size == model['bytes'], name
                if name.endswith(('.onnx', '.gguf')):
                    assert asset.compress_type == zipfile.ZIP_STORED, name
                with apk.open(asset) as stream:
                    assert sha(stream) == model['sha256'], name
                extras[name] = {'bytes': asset.file_size, 'sha256': model['sha256']}
        abis = {'arm64-v8a': 183, 'x86_64': 62}
        assert {n.split('/')[1] for n in libraries} == set(abis)
        for abi in abis:
            assert {f'lib/{abi}/{name}' for name in ['libsherpa-onnx-jni.so', 'libonnxruntime.so',
                    'libonnxruntime4j_jni.so']} <= set(libraries)
            if args.stage_one:
                for name in ('liblocalscribe_llama.so', 'liblocalscribe_diar.so',
                             'liblocalscribe_diar_jni.so'):
                    assert f'lib/{abi}/{name}' in libraries, f'{abi}: missing {name}'
                    with apk.open(f'lib/{abi}/{name}') as stream, \
                            (ROOT / 'app/src/main/jniLibs' / abi / name).open('rb') as source:
                        assert sha(stream) == sha(source), f'{abi}: wrong {name}'
        if args.stage_one:
            expected_native = json.loads((ROOT / 'app/src/main/cpp/editor-build.json').read_text())
            for filename, expected_hash in expected_native['sources'].items():
                assert hashlib.sha256((ROOT / 'app/src/main/cpp' / filename).read_bytes()).hexdigest() == expected_hash
            for abi, expected_hash in expected_native['libraries'].items():
                binary = apk.read(f'lib/{abi}/liblocalscribe_llama.so')
                assert hashlib.sha256(binary).hexdigest() == expected_hash, f'{abi}: stale native build'
                assert 'Предыдущие реплики — только контекст'.encode() in binary
            for path, expected_hash in expected_native.get('auxiliaryLibraries', {}).items():
                assert hashlib.sha256(apk.read(f'lib/{path}')).hexdigest() == expected_hash, f'{path}: stale optional native build'
        alignments = {}
        for name in libraries:
            with apk.open(name) as lib:
                header = lib.read(64)
                assert header[:6] == b'\x7fELF\x02\x01', 'Expected little-endian ELF64'
                assert struct.unpack_from('<H', header, 18)[0] == abis[name.split('/')[1]], name
                offset = struct.unpack_from('<Q', header, 32)[0]
                size, count = struct.unpack_from('<HH', header, 54)
                lib.seek(offset)
                loads = []
                for _ in range(count):
                    ph = lib.read(size)
                    if struct.unpack_from('<I', ph)[0] == 1:  # PT_LOAD
                        alignment = struct.unpack_from('<Q', ph, 48)[0]
                        assert alignment >= 16384, f'{name}: incompatible page alignment'
                        loads.append(alignment)
                assert loads
                alignments[name] = loads
    with args.apk.open('rb') as stream:
        apk_hash = sha(stream)
    print(json.dumps({'apk_bytes': args.apk.stat().st_size, 'apk_sha256': apk_hash,
                      'embedded_zip_bytes': entry.file_size, 'embedded_zip_sha256': actual,
                      'unpacked_model_bytes': info['unpackedBytes'],
                      'model_manifest_matches_lock': True, 'abis': sorted(abis),
                      'elf_load_alignment': alignments, 'extra_models': extras}, indent=2))


if __name__ == '__main__':
    main()
