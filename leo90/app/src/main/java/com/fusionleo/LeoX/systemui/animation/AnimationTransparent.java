package com.fusionleo.LeoX.systemui.animation;

import android.os.Handler;
import android.view.View;

import com.fusionleo.LeoX.systemui.widget.*;


public class AnimationTransparent {
	private static int currentAlpha = 255;
	private static int endAlpha = 100;
	private static int startAlpha = 255;
	private static long time4Trans = 2000L;
	private static Handler handler4Transparent = new Handler();
	private static int periodTime = 10;
	private static Runnable runnable4Transparent = () -> transparenting();

	public static void start() {
		periodTime = (int) (time4Trans / Math.abs(startAlpha - endAlpha));
		handler4Transparent.postDelayed(runnable4Transparent, 1L);
		MeterBase.MeterMap.get(MeterBack.NAME).setVisibility(View.GONE);
	MeterBase.MeterMap.get(MeterFlashlight.NAME).setVisibility(View.GONE);
		MeterBase.MeterMap.get(MeterRecent.NAME).setVisibility(View.GONE);
	}

	public static void stop() {
		currentAlpha = startAlpha;
		handler4Transparent.removeCallbacks(runnable4Transparent);
		MeterBase.MeterMap.get(MeterHome.NAME).setAlpha(startAlpha / 255.0f);
		MeterBase.MeterMap.get(MeterBack.NAME).setVisibility(View.VISIBLE);
		MeterBase.MeterMap.get(MeterFlashlight.NAME).setVisibility(View.VISIBLE);
		MeterBase.MeterMap.get(MeterRecent.NAME).setVisibility(View.VISIBLE);
	}

private static void transparenting() {
		if (currentAlpha <= endAlpha) {
			return;
		}
		currentAlpha = currentAlpha - 1;
		MeterBase.MeterMap.get(MeterHome.NAME).setAlpha(currentAlpha / 255.0f);
		periodTime = (int) (time4Trans / Math.abs(startAlpha - endAlpha));
		handler4Transparent.postDelayed(runnable4Transparent, periodTime);
	}
}
