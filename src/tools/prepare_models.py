#!/usr/bin/env python3
"""Download pinned public model artifacts, verify bytes, produce an offline SAF-importable ZIP.
No pip packages required. Never sends user audio anywhere.
"""
import argparse, hashlib, json, pathlib, shutil, tarfile, urllib.request, zipfile
ROOT=pathlib.Path(__file__).resolve().parents[1]
ARTIFACTS={
 "tone.tar.bz2":("https://github.com/k2-fsa/sherpa-onnx/releases/download/asr-models/sherpa-onnx-streaming-t-one-russian-2025-09-08.tar.bz2","b9c907450e99a6e5049e279bf18368a17db0bdc5e63b7fa978943138debbe3ae"),
 "speaker.onnx":("https://github.com/k2-fsa/sherpa-onnx/releases/download/speaker-recongition-models/wespeaker_en_voxceleb_resnet34_LM.onnx","e9848563da86f263117134dfd7ad63c92355b37de492b55e325400c9d9c39012"),
 "silero.onnx":("https://github.com/k2-fsa/sherpa-onnx/releases/download/asr-models/silero_vad.onnx","9e2449e1087496d8d4caba907f23e0bd3f78d91fa552479bb9c23ac09cbb1fd6")
}
ARTIFACTS.update({'pyannote.tar.bz2': ('https://github.com/k2-fsa/sherpa-onnx/releases/download/speaker-segmentation-models/sherpa-onnx-pyannote-segmentation-3-0.tar.bz2', '24615ee884c897d9d2ba09bb4d30da6bb1b15e685065962db5b02e76e4996488'), 'emo.int8.onnx': ('https://huggingface.co/vvpreo/gigaam-v3-onnx/resolve/03cf125f754af526260037bc96f4edf0642e963b/emo.int8.onnx', '5639b328486d5af9c1a7aff2c584df8319250034310c5a4b7ff4eae95d555b02'), 'emo.yaml': ('https://huggingface.co/vvpreo/gigaam-v3-onnx/resolve/03cf125f754af526260037bc96f4edf0642e963b/emo.yaml', '9211da81fc7018babed37b253700e2d58d3ce33ae4478ce9f8f771197c726103'), 'mossformer2.onnx': ('https://huggingface.co/mhavo/mossformer2-ss-16k-onnx/resolve/3be7f95237b5121caf41dec4c62b0af341a640af/mossformer2_ss_16k.onnx', '54f956bd96736b6f8713d6d31599c31f12cfe591875768088cbe893193f7f1b6'), 'moss-manifest.json': ('https://huggingface.co/mhavo/mossformer2-ss-16k-onnx/resolve/3be7f95237b5121caf41dec4c62b0af341a640af/MANIFEST.json', '97c593c75fe5d702d4db380342520814eefe60c8aa3c2b93c607069dcbb44e11')})
GIGAAM_FILES = ('encoder.int8.onnx', 'decoder.onnx', 'joiner.onnx', 'tokens.txt')
GIGAAM_SOURCE = 'https://huggingface.co/Alexxerm/gigaam-v3-e2e-rnnt-sherpa-onnx/resolve/c0acd38c8aeb2bdc04da221bd661ffcdb9645f7d'
LOCK = json.loads((ROOT / 'models.lock.json').read_text())
ARTIFACTS.update({
 f'gigaam-v3-{name}': (f'{GIGAAM_SOURCE}/{name}', LOCK['files'][f'gigaam-v3/{name}'])
 for name in GIGAAM_FILES
})
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for block in iter(lambda:f.read(1024*1024),b''):h.update(block)
 return h.hexdigest()
def main():
 a=argparse.ArgumentParser();a.add_argument('--cache',type=pathlib.Path,default=ROOT/'build/model-downloads');a.add_argument('--output',type=pathlib.Path,default=ROOT/'models-ru.zip');a.add_argument('--verify-only',action='store_true',help='Verify extraction against the lock without creating another ZIP');args=a.parse_args()
 args.cache.mkdir(parents=True,exist_ok=True)
 for name,(url,digest) in ARTIFACTS.items():
  p=args.cache/name
  if not p.exists():
   print('Downloading',name,flush=True);tmp=p.with_suffix('.partial');urllib.request.urlretrieve(url,tmp);tmp.replace(p)
  if sha(p)!=digest:raise RuntimeError(f'SHA-256 mismatch: {p}; remove this cache file and retry. Do not accept new bytes silently.')
 stage=args.cache/'pack';shutil.rmtree(stage,ignore_errors=True);stage.mkdir()
 specs=[('tone.tar.bz2','streaming',{'model.onnx','tokens.txt','LICENSE'})]
 gigaam=stage/'gigaam-v3'
 gigaam.mkdir()
 for name in GIGAAM_FILES:
  shutil.copyfile(args.cache/f'gigaam-v3-{name}',gigaam/name)
 for archive,folder,names in specs:
  with tarfile.open(args.cache/archive) as t:
   for m in t.getmembers():
    basename=pathlib.Path(m.name).name
    if m.isfile() and basename in names:
     dest=stage/folder/basename;dest.parent.mkdir(exist_ok=True)
     with t.extractfile(m) as i,dest.open('wb') as o:shutil.copyfileobj(i,o)
 with tarfile.open(args.cache/'pyannote.tar.bz2') as t:
  member=next(m for m in t.getmembers() if m.isfile() and pathlib.Path(m.name).name=='model.int8.onnx')
  (stage/'advanced').mkdir()
  with t.extractfile(member) as i,(stage/'advanced/segmentation.int8.onnx').open('wb') as o:shutil.copyfileobj(i,o)
 for name in ['emo.int8.onnx','emo.yaml','mossformer2.onnx','moss-manifest.json']:shutil.copyfile(args.cache/name,stage/'advanced'/name)
 for name in ['speaker.onnx','silero.onnx']:shutil.copyfile(args.cache/name,stage/name)
 (stage/'licenses').mkdir()
 for name in ['MODELS-NOTICE.txt','silero-vad-MIT.txt','sherpa-onnx.txt']:shutil.copyfile(ROOT/'licenses'/name,stage/'licenses'/name)
 shutil.copytree(ROOT/'licenses/advanced',stage/'licenses/advanced')
 lock=json.loads((ROOT/'models.lock.json').read_text())
 actual={p.relative_to(stage).as_posix():sha(p) for p in stage.rglob('*') if p.is_file()}
 if actual!=lock['files']:raise RuntimeError('Extracted files differ from models.lock.json')
 (stage/'manifest.json').write_text(json.dumps(lock,ensure_ascii=False,indent=2))
 if args.verify_only:
  print('Verified',len(actual),'files against models.lock.json');return
 args.output.parent.mkdir(parents=True,exist_ok=True)
 with zipfile.ZipFile(args.output,'w',zipfile.ZIP_DEFLATED,compresslevel=1) as z:
  for p in sorted(stage.rglob('*')):
   if p.is_file():z.write(p,p.relative_to(stage).as_posix())
 print('Ready:',args.output,'SHA-256:',sha(args.output))
if __name__=='__main__':main()
