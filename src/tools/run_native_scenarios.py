#!/usr/bin/env python3
"""Run real VAD + Russian ASR on generated WAV fixtures using upstream Linux CLI.
Exit success confirms execution, not speaker/overlap accuracy; inspect JSON and transcripts.
"""
import argparse
import json
import pathlib
import subprocess
import time

parser = argparse.ArgumentParser()
parser.add_argument('--sherpa', type=pathlib.Path, required=True, help='Extracted Linux release directory')
parser.add_argument('--models', type=pathlib.Path, required=True, help='Unpacked models-ru.zip')
parser.add_argument('--fixtures', type=pathlib.Path, required=True)
parser.add_argument('--out', type=pathlib.Path, required=True)
args = parser.parse_args()
args.out.mkdir(parents=True, exist_ok=True)
model = args.models / 'gigaam-v3'
command = [
    str(args.sherpa / 'bin/sherpa-onnx-vad-with-offline-asr'),
    f'--tokens={model / "tokens.txt"}',
    f'--encoder={model / "encoder.int8.onnx"}',
    f'--decoder={model / "decoder.onnx"}',
    f'--joiner={model / "joiner.onnx"}',
    f'--silero-vad-model={args.models / "silero.onnx"}',
    '--silero-vad-min-silence-duration=0.35',
    '--silero-vad-min-speech-duration=0.15',
    '--num-threads=2',
    '--model-type=nemo_transducer',
    '--feat-dim=64',
]
results = []
fixtures = sorted(args.fixtures.glob('*.wav'))
if not fixtures:
    raise SystemExit('No WAV fixtures found')
for fixture in fixtures:
    started = time.monotonic()
    result = subprocess.run(command + [str(fixture)], stdout=subprocess.PIPE,
                            stderr=subprocess.STDOUT, timeout=240, text=True)
    (args.out / (fixture.stem + '.log')).write_text(result.stdout, encoding='utf-8')
    lines = [line for line in result.stdout.splitlines() if ' -- ' in line and not line.startswith(' ')]
    results.append(dict(case=fixture.stem, exit=result.returncode,
                        wall_seconds=round(time.monotonic() - started, 3),
                        segments=len(lines), excerpt=lines[:3]))
    print(results[-1], flush=True)
(args.out / 'scenarios.json').write_text(json.dumps(results, ensure_ascii=False, indent=2), encoding='utf-8')
if any(result['exit'] != 0 for result in results):
    raise SystemExit('At least one native invocation failed; see logs')
