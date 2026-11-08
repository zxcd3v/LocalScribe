# ASR: состояние измерений

07.11.2026. **WER, CER, RTF, peak RAM и время загрузки текущего Android-конвейера не измерены в этом отчёте.** Исторические утверждения `codex_context/TESTING.md` относятся к другим запускам/версиям и не являются новым baseline. Успех unit-тестов не означает точное распознавание.

Текущая конфигурация: GigaAM v3 E2E RNN-T, INT8 encoder, greedy_search, CPU/sherpa-onnx, 16 кГц и 64 mel; T-one CTC для live, 8 кГц; английский Whisper Tiny INT8 с language=en. Начала слов основаны на эмиссиях ASR, не forced alignment. Смена модели без подтверждённого улучшения не выполнялась.

| Доступный WAV | Измеренная длительность, с | Назначение |
|---|---:|---|
| `test-audio/offline-small/0.wav` | 9.240 | Официальный model smoke; ранее отмечен пропуск тихого VAD |
| `test-audio/offline-small/1.wav` | 7.080 | Официальный model smoke |
| `test-audio/streaming/0.wav` | 6.360 | T-one smoke |
| `test-audio/speaker-b-16k.wav` | 3.600 | Производный фрагмент, не независимая запись |
| `app/src/main/assets/demos/client.wav` | 22.411 | Синтетическое демо |
| `app/src/main/assets/demos/clinic.wav` | 24.466 | Синтетическое демо |
| `app/src/main/assets/demos/interview.wav` | 21.866 | Синтетическое демо |

Длительности получены через стандартный `wave` по PCM-заголовкам. Происхождение: `test-audio/SOURCES.md`, `demo-audio/README.md`. Демо имеют намеренно контрастные синтетические голоса. Их нельзя считать независимым корпусом разговорной русской речи. Эталонные файлы JSON намеренно не читались по ограничению пользователя; verified transcript/reference pairs для нового WER-прогона не установлены.

## Сравнение применимых backend

| Вариант | Подтверждённая интеграция | Решение |
|---|---|---|
| GigaAM/T-one через sherpa-onnx | Есть текущие Kotlin-конфиги и готовые Android ABI | Сохранить до парного замера |
| Whisper Tiny через sherpa-onnx | Есть текущие веса и английская конфигурация | Измерить отдельно EN и RU; текущий language=en не является RU-бейзлайном |
| whisper.cpp, multilingual tiny/base/small | Upstream содержит Android пример, CPU и quantization | Кандидат отдельной ветки эксперимента; в текущем APK не интегрирован |
| faster-whisper / CTranslate2 | Upstream описывает Python >=3.9 и desktop CPU/CUDA-замеры | Не считать готовым Android backend; нужны NDK/JNI, упаковка и device-проверка |

Первичные источники: [sherpa Android](https://k2-fsa.github.io/sherpa/onnx/android/index.html), [whisper.cpp](https://github.com/ggml-org/whisper.cpp), [faster-whisper](https://github.com/SYSTRAN/faster-whisper). Публикуемые upstream скорости и память на desktop не перенесены на Android и не используются как результаты LocalScribe. Лицензии конкретных весов фиксировать отдельно от лицензии backend.

## Воспроизводимый следующий замер

Сохранить один корпус с проверенными UTF-8 эталонами: чистая/тихая/шумная речь, смешанные RU/EN термины, короткие фразы, быстрые смены и длинный разговор. Для каждой конфигурации использовать те же файлы, VAD, число потоков, декодирование и устройство. Зафиксировать SHA моделей, API/ABI, RAM эмулятора 4096 MiB, доступную память, cold/warm запуск.

WER = (S+D+I)/N после заранее закреплённой нормализации регистра, пунктуации, ё/е и чисел; дополнительно сохранить строгий WER и CER. Не удалять ошибки нормализацией постфактум. При N=0 оценивать ложные вставки отдельно. RTF = время всего обязательного конвейера / длительность исходного аудио. Отдельно измерять подготовку моделей, декодирование, VAD, ASR, диаризацию, сохранение, экспорт и необязательную текстовую правку. Cold/warm время и PSS/RSS снимать на устройстве. Непроведённые измерения оставлять N/A, а не нулём.

Добавлен `tools/score_transcript.py`: входы reference/hypothesis в UTF-8 TSV с колонками speaker_id, start_ms, end_ms, text. Команда PowerShell: `py -3.11 tools/score_transcript.py reference.tsv hypothesis.tsv | Select-Object -First 30`. Нормализация NFKC/casefold, пунктуация игнорируется, ё сохраняется. Для одновременно произнесённых реплик нужен одинаковый порядок текстовой линеаризации в обоих TSV: обычный WER не решает перестановку текстов overlap. Шесть unit-тестов вычислителя прошли; это проверка метрики, не измерение точности ASR.
