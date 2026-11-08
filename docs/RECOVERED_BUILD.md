# Код и пересборка финальной версии LocalScribe

## Состав проекта

| Каталог или файл | Содержимое |
|---|---|
| `src/final-apk/` | Восстановленный smali-код приложения, декодированные ресурсы и манифест финальной версии LocalScribe. |
| `src/ux1/src/` | Java-код дополнений интерфейса: расчёт прогресса и вспомогательные действия. |
| `src/ux1/tests/` | Проверка расчёта прогресса и оставшегося времени. |
| `src/app/`, `src/core/`, `src/analysis/`, `src/ort/` | Сохранённый Kotlin/Gradle-проект предыдущего этапа, версия 0.8.6. |
| `src/vendor-sources/`, `src/licenses/` | Доступные исходники зависимостей, лицензии и атрибуция. |
| `LocalScribe.apk` из Releases | Базовая бинарная поставка: полный байткод зависимостей, модели и нативные библиотеки. |

Оригинальный Kotlin/Gradle-проект финальной версии не сохранился. Smali получен из её байткода. Ниже описана пересборка восстановленного кода с бинарными компонентами из APK; это не сборка всех компонентов из оригинальных исходников.

## Подготовка

Нужны Python 3.11 или новее, Java 21, [Apktool 3.0.3](https://github.com/iBotPeaches/Apktool/releases/tag/v3.0.3) и [APK финальной версии](https://github.com/zxcd3v/LocalScribe/releases/download/v0.9.3-UX1/LocalScribe.apk). Скрипт проверяет SHA-256 обоих входных файлов. Скачивание инструментов выполняется на компьютере; установленному приложению интернет не требуется.

| Файл | SHA-256 |
|---|---|
| `LocalScribe.apk` | `bad7914dfc89fdb90897979ae9ec5694427fe8a671e83de8a53dabfaa8298e32` |
| `apktool_3.0.3.jar` | `dbf930b076c6b9be08d57c449cacefc3bdd6b71ebd59b3066fc0e1f5b14f9423` |

Оставьте не менее 8 ГБ свободного места для промежуточных файлов. Команда выполняется из корня репозитория; каталог `build/recovered` не должен существовать.

```bash
python src/tools/rebuild_recovered.py \
  --base-apk /path/to/LocalScribe.apk \
  --apktool /path/to/apktool_3.0.3.jar \
  --work build/recovered
```

При необходимости передайте `--java /path/to/java`. Скрипт не скачивает зависимости и не использует ключи подписи.

## Что выполняет скрипт

1. Проверяет контрольные суммы базового APK и Apktool.
2. Извлекает 13 DEX, бинарные манифест и таблицу ресурсов во временный компактный APK.
3. Дизассемблирует DEX, сохраняя полный код зависимостей.
4. Накладывает smali из `src/final-apk/` и собирает все 13 DEX заново.
5. Формирует новый APK с пересобранным байткодом. Модели, нативные библиотеки, манифест и ресурсы копируются из базовой поставки.
6. Проверяет размеры и CRC сохранённых элементов ZIP, записывает SHA-256 результата и логи.

Результат: `build/recovered/LocalScribe-recovered-unsigned.apk`. Старые подписи не переносятся.

## Выравнивание и подпись

Используйте `zipalign` и `apksigner` из Android SDK Build Tools. Пример для собственного ключа, пароль запрашивается инструментом:

```bash
zipalign -P 16 -v 4 \
  build/recovered/LocalScribe-recovered-unsigned.apk \
  build/recovered/LocalScribe-recovered-aligned.apk
apksigner sign --ks /path/to/your-release.jks \
  --out build/recovered/LocalScribe-recovered.apk \
  build/recovered/LocalScribe-recovered-aligned.apk
zipalign -c -P 16 -v 4 build/recovered/LocalScribe-recovered.apk
apksigner verify --verbose build/recovered/LocalScribe-recovered.apk
```

Пересборка меняет байткод и подпись; побайтового совпадения с опубликованным APK не ожидается. При другом ключе Android не разрешит обновление поверх установленной версии. Перед удалением приложения экспортируйте важные результаты.

Проверка сборки не заменяет запуск на Android: перед использованием пересобранного APK повторите импорт, обработку в авиарежиме, просмотр, экспорт и запись микрофона. Опубликованный APK остаётся отдельным проверяемым артефактом.

[Результаты проверок](TESTING.md) · [Материалы сдачи](SUBMISSION.md)
