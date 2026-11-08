#!/usr/bin/env python3
"""Reproduce the integration baseline from the supplied APK, preserving all DEX.

Decompiled Java is evidence, not a replacement for bytecode. In particular JADX
cannot reconstruct PlaybackService.record reliably. Future native-only builds
must keep its original DEX, manifest and resources intact.
"""
import argparse
import hashlib
import json
from pathlib import Path, PurePosixPath
import zipfile

BASE_SHA256 = 'd2cc79e9b4da2375f414dad1917cfacbb864a4c72d99e9b91755d1123a108de8'


def sha256_file(path):
    digest = hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b''):
            digest.update(chunk)
    return digest.hexdigest()


def unpack(apk, destination):
    digest = sha256_file(apk)
    if digest != BASE_SHA256:
        raise ValueError(f'Unexpected integration baseline SHA-256: {digest}')
    destination.mkdir(parents=True, exist_ok=True)
    entries = []
    with zipfile.ZipFile(apk) as archive:
        seen = set()
        for entry in archive.infolist():
            path = PurePosixPath(entry.filename)
            if path.is_absolute() or '..' in path.parts or entry.filename in seen:
                raise ValueError(f'Unsafe or duplicate ZIP entry: {entry.filename}')
            seen.add(entry.filename)
            target = destination / entry.filename
            if not target.resolve().is_relative_to(destination.resolve()):
                raise ValueError(f'Extraction escapes destination: {entry.filename}')
            if entry.is_dir():
                target.mkdir(parents=True, exist_ok=True)
                continue
            target.parent.mkdir(parents=True, exist_ok=True)
            item_hash = hashlib.sha256()
            with archive.open(entry) as source, target.open('wb') as output:
                for chunk in iter(lambda: source.read(1024 * 1024), b''):
                    item_hash.update(chunk)
                    output.write(chunk)
            entries.append({'name': entry.filename, 'bytes': entry.file_size,
                            'sha256': item_hash.hexdigest(), 'crc32': entry.CRC})
    manifest = {'apk': str(apk.resolve()), 'sha256': digest, 'entries': entries}
    (destination.parent / 'unpacked-manifest.json').write_text(
        json.dumps(manifest, indent=2), encoding='utf-8')
    print(f'Extracted and verified {len(entries)} entries; all original models and DEX retained.')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('apk', type=Path)
    parser.add_argument('destination', type=Path)
    args = parser.parse_args()
    unpack(args.apk, args.destination)
