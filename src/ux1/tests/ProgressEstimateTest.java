import ru.localscribe.ux.ProgressEstimate;

public final class ProgressEstimateTest {
    private static void contains(String value, String expected) {
        if (!value.contains(expected)) throw new AssertionError(value + " lacks " + expected);
    }
    public static void main(String[] args) {
        ProgressEstimate estimate = new ProgressEstimate();
        contains(estimate.format("Распознавание", 0f, 0), "0%");
        contains(estimate.format("Распознавание", .25f, 10000), "Осталось ≈ 30 с");
        contains(estimate.format("Распознавание", .5f, 20000), "50%");
        contains(estimate.format("Распознавание", .5f, 51000), "Осталось: оценка");
        contains(estimate.format("Следующий этап", .1f, 52000), "Осталось: оценка");
        contains(estimate.format("Этап", 1f, 60000), "100% · Завершение этапа");
        estimate.reset();
        contains(estimate.format("Этап", .7f, 70000), "Осталось: оценка");
        contains(estimate.format("Этап", Float.NaN, 80000), "уточняются");
        contains(estimate.format("Этап", Float.POSITIVE_INFINITY, 80000), "уточняются");
        contains(estimate.format("Этап", -1f, 80000), "уточняются");
        contains(estimate.format("Этап", 1.01f, 80000), "уточняются");
        contains(estimate.format(null, .7f, 80000), "Обработка записи");
        System.out.println("PASS: progress, ETA, stage reset, stall, unknown signal (12 assertions)");
    }
}
