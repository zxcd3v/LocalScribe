#!/usr/bin/env python3
"""Prepare an unsigned native-only experiment while retaining integration DEX.

Use the existing owner-safe signing tools afterwards, only for the separate test
emulator. This does not bump versionCode, replace the supplied APK, or install.
"""
import argparse
import hashlib
import json
import re
import shutil
from pathlib import Path
import zipfile
from unpack_integrated_apk import BASE_SHA256, sha256_file


def patch(apk, output, replacements):
    if apk.resolve() == output.resolve():
        raise ValueError('Original baseline must remain untouched')
    if sha256_file(apk) != BASE_SHA256:
        raise ValueError('Unexpected integration baseline')
    signatures = re.compile(r'^META-INF/[^/]+\.(SF|RSA|DSA|EC)$|^META-INF/MANIFEST\.MF$', re.I)
    report = {'baseline': BASE_SHA256, 'replacements': [], 'preserved_entries': 0}
    with zipfile.ZipFile(apk) as source:
        names = source.namelist()
        if len(names) != len(set(names)):
            raise ValueError('Duplicate baseline entry')
        for name, path in replacements.items():
            if name not in names or not re.fullmatch(r'lib/(arm64-v8a|x86_64)/liblocalscribe_diar\.so', name):
                raise ValueError(f'Unapproved replacement: {name}')
            if path.read_bytes()[:4] != b'\x7fELF':
                raise ValueError(f'Not ELF: {path}')
        with zipfile.ZipFile(output, 'w', allowZip64=True) as target:
            for entry in source.infolist():
                if signatures.fullmatch(entry.filename):
                    continue
                digest = hashlib.sha256()
                with target.open(entry, 'w') as dest:
                    if entry.filename in replacements:
                        with replacements[entry.filename].open('rb') as stream:
                            for block in iter(lambda: stream.read(1024 * 1024), b''):
                                digest.update(block); dest.write(block)
                        report['replacements'].append({'name': entry.filename,
                            'sha256': digest.hexdigest(), 'source': str(replacements[entry.filename])})
                    else:
                        with source.open(entry) as stream:
                            shutil.copyfileobj(stream, dest, 1024 * 1024)
                        report['preserved_entries'] += 1
    # Verify every unmodified entry byte-for-byte by cryptographic digest.
    with zipfile.ZipFile(apk) as source, zipfile.ZipFile(output) as candidate:
        for name in candidate.namelist():
            if name in replacements:
                continue
            def digest(archive):
                h = hashlib.sha256()
                with archive.open(name) as stream:
                    for block in iter(lambda: stream.read(1024 * 1024), b''): h.update(block)
                return h.digest()
            if digest(source) != digest(candidate):
                raise ValueError(f'Baseline content changed: {name}')
    report['output'] = str(output.resolve())
    report['output_sha256'] = sha256_file(output)
    output.with_suffix(output.suffix + '.json').write_text(json.dumps(report, indent=2))
    print(json.dumps(report, indent=2))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--base', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--arm64', type=Path)
    parser.add_argument('--x86-64', type=Path)
    args = parser.parse_args()
    replacements = {f'lib/{abi}/liblocalscribe_diar.so': path for abi, path in
                    [('arm64-v8a', args.arm64), ('x86_64', args.x86_64)] if path}
    if not replacements: parser.error('Supply at least one explicitly built native library')
    patch(args.base, args.output, replacements)
