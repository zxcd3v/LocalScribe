#!/usr/bin/env python3
"""Build clearly synthetic demo WAVs. Requires piper-tts==1.3.0, numpy and ffmpeg.
The supplied model directory must contain ru_RU-{denis,dmitri}-medium.onnx + .onnx.json.
Source scripts are never installed as transcripts: Android runs its normal ASR pipeline.
"""
import argparse, hashlib, io, json, subprocess, wave
from pathlib import Path
import numpy as np
from piper import PiperVoice, SynthesisConfig

SCRIPTS = {
    'client': ('Созвон с клиентом', [
        'Добрый день. Давайте обсудим макет приложения. Нам нужен экран истории и удобный поиск по разговорам.',
        'Хорошо. Я подготовлю новый вариант к пятнице. Какие изменения для вас сейчас самые важные?',
        'Сначала исправим поиск и названия участников. Затем проверим экспорт документов.',
        'Договорились. В пятницу покажу результат и отправлю список изменений.'
    ]),
    'clinic': ('Приём у врача', [
        'Здравствуйте. Я записан на плановый приём. Подскажите, пожалуйста, где можно оставить документы?',
        'Добрый день. Положите их на стол. Сегодня мы обсудим ваши вопросы и план следующей встречи.',
        'Спасибо. Я принёс результаты предыдущего обследования и записал вопросы в блокнот.',
        'Отлично. Начнём с ваших вопросов. В конце приёма согласуем удобное время следующего визита.'
    ]),
    'interview': ('Интервью', [
        'Расскажите, пожалуйста, зачем вы решили создать приложение для записи разговоров?',
        'Мне хотелось сохранить важные детали встречи и быстро найти нужную реплику. Все данные остаются на устройстве.',
        'Какая функция оказалась самой полезной во время работы над проектом?',
        'Поиск по тексту и переход к исходному аудио. Можно сразу проверить, что человек действительно сказал.'
    ]),
}

def main():
    ap = argparse.ArgumentParser(); ap.add_argument('--models', type=Path, required=True)
    ap.add_argument('--output', type=Path, required=True); args = ap.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    voices = [PiperVoice.load(str(args.models / f'ru_RU-{v}-medium.onnx')) for v in ['denis', 'dmitri']]
    manifest = {'synthetic': True, 'engine': 'piper-tts==1.3.0', 'models': {}, 'second_voice_pitch_semitones': 4, 'demos': []}
    for v in ['denis', 'dmitri']:
        manifest['models'][v] = {ext: hashlib.sha256((args.models/f'ru_RU-{v}-medium.{ext}').read_bytes()).hexdigest() for ext in ['onnx', 'onnx.json']}
    for key, (title, lines) in SCRIPTS.items():
        chunks = [np.zeros(11025, dtype=np.int16)]
        for i, line in enumerate(lines):
            out = io.BytesIO()
            with wave.open(out, 'wb') as w: voices[i % 2].synthesize_wav(line, w, SynthesisConfig(length_scale=0.92))
            with wave.open(io.BytesIO(out.getvalue())) as w: raw = w.readframes(w.getnframes())
            if i % 2:
                # Deliberately distinct synthetic demo voice; not a natural-speaker benchmark.
                raw = subprocess.run(['ffmpeg', '-v', 'error', '-f', 's16le', '-ar', '22050', '-ac', '1', '-i', 'pipe:0',
                    '-af', 'rubberband=pitch=1.259921:formant=shifted', '-f', 's16le', 'pipe:1'], input=raw, stdout=subprocess.PIPE, check=True).stdout
            chunks.append(np.frombuffer(raw, dtype=np.int16))
            chunks.append(np.zeros(11025, dtype=np.int16))
        temp = args.output / f'{key}-22k.wav'
        with wave.open(str(temp), 'wb') as w:
            w.setnchannels(1); w.setsampwidth(2); w.setframerate(22050); w.writeframes(np.concatenate(chunks).tobytes())
        dest = args.output / f'{key}.wav'
        subprocess.run(['ffmpeg', '-v', 'error', '-y', '-i', str(temp), '-ar', '16000', '-ac', '1', '-c:a', 'pcm_s16le', str(dest)], check=True)
        temp.unlink()
        with wave.open(str(dest)) as w: duration = w.getnframes() / w.getframerate()
        manifest['demos'].append({'id':key, 'title':title, 'duration_seconds':duration, 'sha256':hashlib.sha256(dest.read_bytes()).hexdigest(), 'script':lines})
        print(key, duration, flush=True)
    (args.output / 'provenance.json').write_text(json.dumps(manifest, ensure_ascii=False, indent=2)+'\n')

if __name__ == '__main__': main()
