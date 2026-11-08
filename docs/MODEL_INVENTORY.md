# Фактические модели LocalScribe

Аудит 07.11.2026. Размеры получены из каталога файлов и центрального каталога ZIP, без чтения содержимого JSON. Старые `codex_context/MODELS.md` и `REQUIREMENTS.md` описывают также прежние версии; текущая диаризация проверена по `RecordingDiarization.kt` и `DIARIZATION.md`.

| Компонент | Файл | Размер, байт | Runtime / назначение | Лицензия по поставленным notices |
|---|---|---:|---|---|
| Русский ASR | `gigaam-v3/encoder.int8.onnx` | 224571327 | sherpa-onnx, GigaAM v3 E2E RNN-T, 16 кГц, 64 mel, greedy_search | MIT |
| ASR decoder / joiner | `gigaam-v3/decoder.onnx`; `joiner.onnx` | 1159351 / 687791 | Та же модель; не текстовая LLM | MIT |
| Потоковый ASR | `streaming/model.onnx` | 144193702 | T-one CTC, вход признаков 8 кГц; запись хранится 16 кГц | Apache-2.0 |
| VAD | `silero.onnx` | 643854 | Silero, 16 кГц | MIT |
| Speaker embedding | `speaker.onnx` | 26530550 | WeSpeaker ResNet34 | CC BY 4.0, атрибуция из `codex_context/MODELS.md` |
| Сегментация / overlap | `advanced/segmentation.int8.onnx` | 1540506 | pyannote 3.0; не разделитель источников | MIT |
| Два источника | `advanced/mossformer2.onnx` | 245120037 | MossFormer2, фиксированные окна 4 с / 16 кГц | Apache-2.0 |
| Эмоциональная окраска | `advanced/emo.int8.onnx` | 305928068 | GigaAM-Emo, 4 класса; дополнительная функция | MIT |
| Основная offline-диаризация | `extra/nemotron3.onnx` | 402167515 | JNI / parakeet-rs, последовательные блоки 10 с, глобальная сессия | OpenMDW-1.1 |
| Дополнительная диаризация | `extra/segmentation-3.0.safetensors` | 5897576 | speakrs/VBx, отключаемое уточнение | MIT для pyannote; Apache-2.0 для speakrs |
| WeSpeaker tail | `extra/wespeaker-multimask-tail.safetensors` | 26527656 | speakrs/VBx | Уведомления WeSpeaker сохранять |
| PLDA | `extra/plda_*.npy` | 267520 суммарно | Шесть матриц VBx | Проверить происхождение весов перед публикацией; отдельная атрибуция в текущем inventory не установлена |
| Английский ASR | `extra/tiny-encoder.int8.onnx`; `tiny-decoder.int8.onnx` | 12937772 / 89855401 | Whisper Tiny через sherpa, language=en | MIT |
| Текстовый редактор | `extra/qwen3-0.6b-q8_0.gguf` | 639446688 | llama.cpp, необязательная отдельная правка; не ASR | Apache-2.0 |
| Нативный WeSpeaker trunk | `native-assets/wespeaker-trunk.fp32.onnx` | 21291135 | Вход пересборки JNI, не дополнительная копия assets-модели | Уведомления WeSpeaker сохранять |

Первые восемь строк находятся в `model-inputs/models-ru.zip`: архив 723989393 байта, распаковка всех записей 950421613 байт. `extra/` расположен в `model-inputs/extra/`. В полном исходном APK обе группы уже встроены. ONNX Runtime 1.28.2 переиспользуется JNI; присутствуют arm64-v8a и x86_64. CPU provider выбран явно; GPU/NNAPI/NPU не подтверждены.

Измеренные SHA-256:

| Файл | SHA-256 |
|---|---|
| `models-ru.zip` | `6232cbabdfc1d18ff5ec0a0f5d075d2e132ed49032273186f176eed2a58f3eba` |
| `nemotron3.onnx` | `c32d6056f1ca52bdd50a74e1e7c66d91e5147bc29f19ffa4c39cbe5452397d15` |
| `qwen3-0.6b-q8_0.gguf` | `9465e63a22add5354d9bb4b99e90117043c7124007664907259bd16d043bb031` |
| `wespeaker-trunk.fp32.onnx` | `0e07ba7ac80acb63c9ad7df618ea6c56ed5adcb7bcfe68d681663de61291a1c9` |

Исходники notices находятся в `licenses/`, лицензии основного ZIP перечислены в его каталоге. Сопоставление всех файлов с lock-манифестами в этом аудите не выполнялось из-за запрета прямого чтения JSON. Хеши выше рассчитаны заново, но сами по себе не устанавливают авторство или полноту лицензирования.
