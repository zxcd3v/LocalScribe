package ru.localscribe.ux;

import android.app.Activity;
import android.content.Intent;
import android.os.SystemClock;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Toast;
import java.lang.ref.WeakReference;
import java.util.Locale;

/** Small UI adapter; no models, audio, database writes or recognition calls. */
public final class UxPatch {
    private static final ProgressEstimate estimate = new ProgressEstimate();
    private static long manualUntil;
    private static volatile boolean overlayVisible;
    private static WeakReference<Button> overlayButton = new WeakReference<>(null);

    public static String progressLabel(String stage, float progress) {
        return estimate.format(stage, progress, SystemClock.elapsedRealtime());
    }

    public static void resetProgress() {
        estimate.reset();
    }

    public static void pauseFollowing() {
        manualUntil = SystemClock.elapsedRealtime() + 8000;
    }

    public static boolean following(boolean current) {
        return current || SystemClock.elapsedRealtime() >= manualUntil;
    }

    public static Button overlayButton(final Activity activity, LinearLayout parent,
                                       String label, final Runnable enable) {
        String lower = label.toLowerCase(Locale.ROOT);
        if (!lower.contains("плавающ")) return null;
        final Button button = new Button(activity);
        // The old hide action is absorbed into the single toggle.
        if (lower.contains("скрыть")) return button;
        button.setAllCaps(false);
        button.setMinHeight((int) (48 * activity.getResources().getDisplayMetrics().density));
        button.setTag("localscribe-overlay-toggle");
        button.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View view) {
                try {
                    if (overlayVisible) {
                        Intent intent = new Intent().setClassName(activity,
                                "ru.localscribe.integration.OverlayService");
                        activity.stopService(intent);
                    } else {
                        enable.run();
                    }
                    refreshOverlay();
                } catch (RuntimeException failure) {
                    Toast.makeText(activity, "Не удалось переключить плавающую кнопку",
                            Toast.LENGTH_LONG).show();
                }
            }
        });
        parent.addView(button, new LinearLayout.LayoutParams(-1, -2));
        overlayButton = new WeakReference<>(button);
        refreshOverlay();
        return button;
    }

    public static void overlayAttached(boolean attached) {
        overlayVisible = attached;
        refreshOverlay();
    }

    public static void refreshOverlay() {
        final Button button = overlayButton.get();
        if (button == null) return;
        button.post(new Runnable() {
            @Override public void run() {
                String label = "Плавающая кнопка: " + (overlayVisible ? "включена" : "выключена");
                button.setText(label);
                button.setContentDescription(label);
            }
        });
    }
}
