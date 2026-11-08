#!/usr/bin/env python3
"""Attach unmodified integration bytecode to a fresh integratedBuild APK.

The fresh source manifest must already declare integration components. Signing
and final alignment follow this step; original binaries are never overwritten.
"""
import argparse, hashlib, json, re, shutil, zipfile
from pathlib import Path
from unpack_integrated_apk import BASE_SHA256, sha256_file


def attach(fresh, baseline, output):
    if output.resolve() in {fresh.resolve(), baseline.resolve()}:
        raise ValueError('Preserve both input APKs')
    if sha256_file(baseline) != BASE_SHA256: raise ValueError('Unverified baseline')
    signature=re.compile(r'^META-INF/[^/]+\.(SF|RSA|DSA|EC)$|^META-INF/MANIFEST\.MF$',re.I)
    with zipfile.ZipFile(baseline) as original, zipfile.ZipFile(fresh) as source:
        dex=original.read('classes3.dex')
        # Binary Android XML stores names in UTF-8 or UTF-16; reject a build
        # lacking the deliberately selected source integration manifest.
        manifest=source.read('AndroidManifest.xml')
        for name in ['ru.localscribe.integration.ControlsActivity', 'ru.localscribe.integration.IntegrationProvider', 'ru.localscribe.integration.PlaybackService', 'ru.localscribe.integration.OverlayService']:
            short=name.removeprefix('ru.localscribe')
            if not any(value.encode(codec) in manifest for value in [name,short] for codec in ['utf-8','utf-16le']):
                raise ValueError(f'Missing integration component in fresh manifest: {name}')
        names=source.namelist()
        if len(names)!=len(set(names)): raise ValueError('Duplicate source entry')
        indices=[1 if name=='classes.dex' else int(re.fullmatch(r'classes(\d+)\.dex',name)[1])
                 for name in names if re.fullmatch(r'classes(?:\d+)?\.dex',name)]
        dest=f'classes{max(indices)+1}.dex'
        with zipfile.ZipFile(output,'w',allowZip64=True) as target:
            for entry in source.infolist():
                if signature.fullmatch(entry.filename): continue
                with source.open(entry) as src,target.open(entry,'w') as dst:
                    shutil.copyfileobj(src,dst,1024*1024)
            target.writestr(dest,dex,compress_type=zipfile.ZIP_DEFLATED)
    with zipfile.ZipFile(output) as result:
        if result.read(dest)!=dex: raise ValueError('Integration DEX changed')
    output.with_suffix(output.suffix+'.integration.json').write_text(json.dumps({
        'baseline_sha256':BASE_SHA256,'fresh_sha256':sha256_file(fresh),
        'integration_entry':dest,'integration_sha256':hashlib.sha256(dex).hexdigest(),
        'output_sha256':sha256_file(output),'signed':False},indent=2))
    print(f'Preserved original integration bytecode as {dest}; alignment and signing still required.')

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--fresh',type=Path,required=True);p.add_argument('--baseline',type=Path,required=True);p.add_argument('--output',type=Path,required=True)
    a=p.parse_args();attach(a.fresh,a.baseline,a.output)
