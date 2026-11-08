#!/usr/bin/env python3
"""Sign a release APK with an old -> new certificate lineage; passwords never enter argv."""
import argparse
import os
from pathlib import Path
import subprocess


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--input', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--old-properties', type=Path, required=True)
    parser.add_argument('--new-properties', type=Path, required=True)
    parser.add_argument('--lineage', type=Path, required=True)
    parser.add_argument('--sdk', type=Path, default=os.environ.get('ANDROID_SDK_ROOT'))
    args = parser.parse_args()
    if not args.sdk:
        parser.error('Set ANDROID_SDK_ROOT or --sdk')
    if args.input.resolve() == args.output.resolve():
        parser.error('Use a separate output file')
    suffix = '.bat' if os.name == 'nt' else ''
    signer = str(args.sdk / 'build-tools/36.0.0' / ('apksigner' + suffix))
    env = dict(os.environ)

    def identity(path, prefix):
        # Format emitted by create_signing_key.py: UTF-8, simple key=value, forward-slash paths.
        values = dict(line.split('=', 1) for line in path.read_text().splitlines()
                      if line.strip() and not line.lstrip().startswith('#'))
        key = Path(values['storeFile'])
        if not key.is_absolute():
            key = path.resolve().parent / key
        if not key.is_file():
            raise SystemExit(f'Signing key does not exist: {key}')
        env[prefix + '_STORE'] = values['storePassword']
        env[prefix + '_KEY'] = values['keyPassword']
        return ['--ks', str(key), '--ks-key-alias', values['keyAlias'],
                '--ks-pass', 'env:' + prefix + '_STORE', '--key-pass', 'env:' + prefix + '_KEY']

    old = identity(args.old_properties, 'LOCALSCRIBE_OLD')
    new = identity(args.new_properties, 'LOCALSCRIBE_NEW')
    args.lineage.parent.mkdir(parents=True, exist_ok=True)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    if not args.lineage.exists():
        subprocess.run([signer, 'rotate', '--out', str(args.lineage),
                        '--old-signer', *old, '--new-signer', *new], env=env, check=True)
    subprocess.run([signer, 'sign', *old, '--next-signer', *new,
                    '--lineage', str(args.lineage), '--rotation-min-sdk-version', '28',
                    '--v4-signing-enabled', 'false', '--alignment-preserved', 'true',
                    '--debuggable-apk-permitted', 'false',
                    '--out', str(args.output), str(args.input)], env=env, check=True)
    subprocess.run([signer, 'verify', '--verbose', '--print-certs', str(args.output)],
                   env=env, check=True)


if __name__ == '__main__':
    main()
