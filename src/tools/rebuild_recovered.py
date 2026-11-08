"""Reassemble recovered smali; retain models, native libraries and resources from UX1."""

import argparse
import hashlib
from pathlib import Path
import re
import shutil
import subprocess
from zipfile import ZipFile, ZIP_STORED


APK_SHA256 = "bad7914dfc89fdb90897979ae9ec5694427fe8a671e83de8a53dabfaa8298e32"
APKTOOL_SHA256 = "dbf930b076c6b9be08d57c449cacefc3bdd6b71ebd59b3066fc0e1f5b14f9423"
DEX = re.compile(r"classes(?:[2-9]|1[0-3])?\.dex\Z")


def sha256(path):
    with path.open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def run(command, log):
    with log.open("w", encoding="utf-8") as stream:
        result = subprocess.run(command, stdout=stream, stderr=subprocess.STDOUT)
    if result.returncode:
        print("\n".join(log.read_text(encoding="utf-8", errors="replace").splitlines()[-12:]))
        raise SystemExit(f"Command failed ({result.returncode}); see {log}")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--base-apk", type=Path, required=True)
    parser.add_argument("--apktool", type=Path, required=True)
    parser.add_argument("--java", default="java")
    parser.add_argument("--work", type=Path, required=True,
                        help="New directory; existing directories are never overwritten")
    args = parser.parse_args()
    base, jar, work = (p.resolve() for p in (args.base_apk, args.apktool, args.work))
    for path, expected in ((base, APK_SHA256), (jar, APKTOOL_SHA256)):
        if sha256(path) != expected:
            raise SystemExit(f"SHA-256 mismatch: {path}")
    source = Path(__file__).resolve().parents[1] / "final-apk"
    smali = sorted(source.glob("smali*/**/*.smali"))
    if not smali:
        raise SystemExit("Recovered smali is missing")
    work.mkdir(parents=True, exist_ok=False)
    mini = work / "code-input.apk"
    with ZipFile(base) as original, ZipFile(mini, "w") as output:
        dex_names = sorted(n for n in original.namelist() if DEX.fullmatch(n))
        if len(dex_names) != 13:
            raise SystemExit("Expected all 13 DEX files")
        for name in dex_names + ["AndroidManifest.xml", "resources.arsc"]:
            output.writestr(name, original.read(name), compress_type=ZIP_STORED)
    decoded, framework = work / "decoded", work / "framework"
    framework.mkdir()
    java = [args.java, "-Xmx2g", "-jar", str(jar)]
    run(java + ["d", "-r", "--no-assets", "-p", str(framework),
                "-o", str(decoded), str(mini)], work / "decode.log")
    for path in smali:
        target = decoded / path.relative_to(source)
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(path, target)
    run(java + ["b", "--no-apk", "-p", str(framework), str(decoded)],
        work / "assemble.log")
    replacements = {name: decoded / "build" / "apk" / name for name in dex_names}
    if any(not path.is_file() or path.stat().st_size < 112
           for path in replacements.values()):
        raise SystemExit("Assembler did not produce all 13 DEX files")
    unsigned = work / "LocalScribe-recovered-unsigned.apk"
    copied = 0
    with ZipFile(base) as original, ZipFile(unsigned, "w", allowZip64=True) as output:
        for entry in original.infolist():
            name = entry.filename
            upper = name.upper()
            if upper.startswith("META-INF/") and upper.endswith(
                    (".RSA", ".DSA", ".EC", ".SF", "/MANIFEST.MF")):
                continue
            entry.extra = b""
            if name in replacements:
                entry.compress_type = ZIP_STORED
                output.writestr(entry, replacements[name].read_bytes())
            else:
                with original.open(entry) as src, output.open(entry, "w") as dst:
                    shutil.copyfileobj(src, dst, 4 * 1024 * 1024)
                copied += 1
    with ZipFile(base) as original, ZipFile(unsigned) as rebuilt:
        for entry in original.infolist():
            if entry.filename in replacements or entry.filename not in rebuilt.namelist():
                continue
            actual = rebuilt.getinfo(entry.filename)
            if (entry.CRC, entry.file_size) != (actual.CRC, actual.file_size):
                raise SystemExit(f"Payload mismatch: {entry.filename}")
    digest = sha256(unsigned)
    (work / "SHA256SUMS.txt").write_text(f"{digest}  {unsigned.name}\n", encoding="ascii")
    print(f"Recovered smali files: {len(smali)}")
    print(f"Assembled DEX files: {len(replacements)}")
    print(f"Unchanged non-DEX entries (size + CRC): {copied}")
    print(f"Unsigned APK: {unsigned}")
    print(f"SHA-256: {digest}")
    print("Next: zipalign, sign with your own key, verify, test on Android.")


if __name__ == "__main__":
    main()
