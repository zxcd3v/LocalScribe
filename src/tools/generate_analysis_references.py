#!/usr/bin/env python3
"""Reproduce the feature/probability fixtures. Requires numpy, torch/torchaudio 2.6.0+cpu,
onnxruntime 1.28.0. This tool never uploads audio; not an Android runtime dependency.
Run: python tools/generate_analysis_references.py --emotion-model /models/advanced/emo.int8.onnx
"""
import argparse,json,wave
from pathlib import Path
import numpy as np,torch,torchaudio,onnxruntime as ort
root=Path(__file__).resolve().parents[1]
a=argparse.ArgumentParser();a.add_argument('--emotion-model',required=True);args=a.parse_args()
p=root/'analysis/src/test/resources'
rng=np.random.default_rng(20261101)
x=(rng.normal(0,.02,16000)+.1*np.sin(2*np.pi*220*np.arange(16000)/16000)).astype(np.float32)
features=torchaudio.transforms.MelSpectrogram(sample_rate=16000,n_mels=64,n_fft=400,win_length=400,hop_length=160,center=True)
x.astype('<f4').tofile(p/'mel-input.f32')
features(torch.from_numpy(x)).clamp(1e-9,1e9).log().numpy().astype('<f4').tofile(p/'mel-reference.f32')
with wave.open(str(p/'speaker-a.wav')) as f:x=np.frombuffer(f.readframes(f.getnframes()),dtype='<i2').astype(np.float32)/32768
v=features(torch.from_numpy(x)).clamp(1e-9,1e9).log().numpy()[None]
options=ort.SessionOptions();options.intra_op_num_threads=2;options.inter_op_num_threads=1
probs=ort.InferenceSession(args.emotion_model,options).run(None,{'features':v,'feature_lengths':np.array([v.shape[-1]],np.int64)})[0][0]
probs.astype('<f4').tofile(p/'emotion-reference.f32')
print(json.dumps({'torch':torch.__version__,'torchaudio':torchaudio.__version__,'onnxruntime':ort.__version__,'probabilities':probs.tolist()}))
