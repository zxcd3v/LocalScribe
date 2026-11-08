#!/usr/bin/env python3
"""Create a durable local APK signing identity. Never overwrite an existing key or print its password."""
import argparse
import os
import pathlib
import secrets
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--directory', type=pathlib.Path, required=True)
args = parser.parse_args()
folder = args.directory.resolve()
folder.mkdir(parents=True, exist_ok=True)
key = folder / 'localscribe.p12'
properties = folder / 'keystore.properties'
if key.exists() or properties.exists():
    raise SystemExit('Signing identity already exists; reuse it to preserve app updates.')
keytool = shutil.which('keytool')
if not keytool and os.environ.get('JAVA_HOME'):
    keytool = str(pathlib.Path(os.environ['JAVA_HOME']) / 'bin/keytool')
if not keytool:
    raise SystemExit('Set JAVA_HOME to a JDK or add keytool to PATH.')
password = secrets.token_urlsafe(32)
env = dict(os.environ, LOCALSCRIBE_SIGNING_PASSWORD=password)
subprocess.run([
    keytool, '-genkeypair', '-keystore', str(key), '-storetype', 'PKCS12',
    '-alias', 'localscribe', '-keyalg', 'RSA', '-keysize', '3072', '-validity', '10000',
    '-dname', 'CN=LocalScribe, O=LocalScribe', '-storepass:env', 'LOCALSCRIBE_SIGNING_PASSWORD',
    '-keypass:env', 'LOCALSCRIBE_SIGNING_PASSWORD', '-noprompt',
], env=env, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.PIPE)
properties.write_text(f'storeFile={key.as_posix()}\nstorePassword={password}\nkeyAlias=localscribe\nkeyPassword={password}\n')
for f in [key, properties]:
    f.chmod(0o600)
print('Signing identity created in', folder)
