package ru.localscribe.ux;

/** Estimates display time from the existing progress signal only. */
public final class ProgressEstimate {
    private long started = -1;
    private long lastAdvance;
    private float baseline;
    private float previous;

    public synchronized void reset() {
        started = -1;
    }

    public synchronized String format(String stage, float progress, long now) {
        String title = stage == null || stage.trim().isEmpty() ? "Обработка записи" : stage;
        if (Float.isNaN(progress) || Float.isInfinite(progress) || progress < 0 || progress > 1) {
            return title + "\nПрогресс и оставшееся время уточняются";
        }
        if (started < 0 || progress < previous - 0.02f) {
            started = now;
            lastAdvance = now;
            baseline = progress;
        }
        if (progress > previous) lastAdvance = now;
        previous = progress;
        int percent = Math.min(100, (int) Math.floor(progress * 100.0 + 0.00001));
        String prefix = title + "\n" + percent + "%";
        if (progress >= 1) return prefix + " · Завершение этапа";
        float advanced = progress - baseline;
        long elapsed = now - started;
        if (elapsed < 3000 || advanced < 0.01f || now - lastAdvance > 30000) {
            return prefix + " · Осталось: оценка…";
        }
        long seconds = Math.max(1, (long) Math.ceil(elapsed / 1000.0 * (1 - progress) / advanced));
        if (seconds > 7 * 24 * 3600) return prefix + " · Осталось: оценка…";
        String time;
        if (seconds >= 3600) {
            time = (seconds / 3600) + " ч " + ((seconds % 3600) / 60) + " мин";
        } else if (seconds >= 60) {
            time = (seconds / 60) + " мин " + (seconds % 60) + " с";
        } else {
            time = seconds + " с";
        }
        return prefix + " · Осталось ≈ " + time;
    }
}
