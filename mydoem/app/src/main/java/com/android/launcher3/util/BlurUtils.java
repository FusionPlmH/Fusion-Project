package com.android.launcher3.util;

import android.annotation.SuppressLint;
import android.util.Log;
import android.util.Range;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import com.android.launcher3.Launcher;

import java.util.ArrayList;

public final class BlurUtils {
    public static final float BLUR_MAX_AMOUNT = 0.3f;
    private static final float BLUR_UPDATE_LEVEL = 14.0f;
    private static final float DEFAULT_BLUR_AMOUNT = 0.2f;
    private static final long DEFAULT_BLUR_DURATION = -1;
    private static final String TAG = "BlurUtils";
    private static boolean mBlurAllapps = false;
    private static boolean sBlur = false;
    private static float sBlurAmount = 0.0f;
    private static ArrayList<Range> sRangeList = new ArrayList();

    static {
        sRangeList.add(Range.create(Integer.valueOf(7), Integer.valueOf(8)));
        sRangeList.add(Range.create(Integer.valueOf(9), Integer.valueOf(10)));
        sRangeList.add(Range.create(Integer.valueOf(13), Integer.valueOf(14)));
        sRangeList.add(Range.create(Integer.valueOf(15), Integer.valueOf(16)));
        sRangeList.add(Range.create(Integer.valueOf(17), Integer.valueOf(18)));
        sRangeList.add(Range.create(Integer.valueOf(19), Integer.valueOf(21)));
        sRangeList.add(Range.create(Integer.valueOf(22), Integer.valueOf(23)));
    }

    private BlurUtils() {
    }

    public static void actualizaBlur() {
       // sBlurAmount = ((float) Launcher.mNivelBlur) / 200.0f;
    }

    public static void blurAllapps(boolean z) {
        mBlurAllapps = z;
    }

    public static boolean blurAllapps() {
        return mBlurAllapps;
    }

    public static void blurByWindowManager(boolean z, Window window) {
       // if (Launcher.mNivelBlurEscritorio == 0) {
        //    blurByWindowManager(z, window, sBlurAmount, (long) Launcher.mDuracionBlurGeneral);
      //  }
    }

    public static void blurByWindowManager(boolean z, Window window, float f, long j) {
        float f2 = sBlurAmount;
        f2 = f;
        Log.i(TAG, "blurByWindowManager with show = " + z + ", dest = " + window + ", amount = " + f2 + ", duration = " + j + ", sBlur=" + sBlur);
      //  if (sBlur != z || !Utilities.compareByStage(sRangeList, f2, f2, BLUR_UPDATE_LEVEL, BLUR_MAX_AMOUNT)) {
           // if (!(!sBlur && z && f2 == 0.0f) && LauncherFeature.supportBackgroundBlurByWindow()) {
                LayoutParams attributes = window.getAttributes();
                if (z) {
                 //   attributes.samsungFlags |= 64;
                  //  attributes.dimDuration = j;
                    attributes.dimAmount = f2;
                    window.addFlags(2);
                } else {
                  //  attributes.samsungFlags |= 64;
                   // attributes.dimDuration = j;
                    window.clearFlags(2);
                }
                sBlur = z;
                if (!z) {
                    f = 0.0f;
           //     }
            }
      //  }
    }

    public static void blurByWindowManager(boolean z, Window window, int i, int i2) {
       // if (Launcher.mNivelBlurEscritorio == 0) {
           // blurByWindowManager(z, window, ((float) i) / 200.0f, (long) i2);
       // }
    }

    public static void blurByWindowManagerHome(boolean z, Window window, int i, int i2) {
        blurByWindowManager(z, window, ((float) i) / 200.0f, (long) i2);
    }

    public static float getBlurAmount() {
        return sBlur ? sBlurAmount : 0.0f;
    }

    public static void resetBlur() {
        sBlur = false;
        sBlurAmount = 0.0f;
    }
}
