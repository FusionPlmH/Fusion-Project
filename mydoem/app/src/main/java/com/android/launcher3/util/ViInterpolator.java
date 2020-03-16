package com.android.launcher3.util;

import android.annotation.SuppressLint;
import android.view.animation.PathInterpolator;
import com.android.launcher3.common.drag.DragView;

import com.android.launcher3.common.drag.DragView;


public final class ViInterpolator {
    public static final int ACCELERATION = 1;
    public static final int DECELERATION = 2;
    public static final int SHARP = 3;
    public static final int SINE_IN_33 = 10;
    public static final int SINE_IN_50 = 11;
    public static final int SINE_IN_60 = 12;
    public static final int SINE_IN_70 = 13;
    public static final int SINE_IN_80 = 14;
    public static final int SINE_IN_90 = 15;
    public static final int SINE_IN_OUT_33 = 30;
    public static final int SINE_IN_OUT_50 = 31;
    public static final int SINE_IN_OUT_60 = 32;
    public static final int SINE_IN_OUT_70 = 33;
    public static final int SINE_IN_OUT_80 = 34;
    public static final int SINE_IN_OUT_90 = 35;
    public static final int SINE_OUT_33 = 20;
    public static final int SINE_OUT_50 = 21;
    public static final int SINE_OUT_60 = 22;
    public static final int SINE_OUT_70 = 23;
    public static final int SINE_OUT_80 = 24;
    public static final int SINE_OUT_90 = 25;
    public static final int STANDARD = 0;

    @SuppressLint("NewApi")
    public static PathInterpolator getInterploator(int i) {
        float f = 0;
        float f2;
        float f3 = 0;
        float f4;
        switch (i) {
            case 0:
                f = 0.4f;
                f2 = 0.0f;
                f3 = 0.2f;
                f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                break;
            case 1:
                f = 0.4f;
                f2 = 0.0f;
                f3 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                break;
            case 2:
                f = 0.0f;
                f2 = 0.0f;
                f3 = 0.2f;
                f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                break;
            case 3:
                f = 0.4f;
                f2 = 0.0f;
                f3 = 0.6f;
                f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                break;
            case 10:
                f = 0.33f;
                f2 = 0.0f;
                f3 = 0.83f;
                f4 = 0.83f;
                break;
            case 11:
                f = 0.5f;
                f2 = 0.0f;
                f3 = 0.83f;
                f4 = 0.83f;
                break;
            case 12:
                f = 0.6f;
                f2 = 0.0f;
                f3 = 0.83f;
                f4 = 0.83f;
                break;
            case 13:
                f = 0.7f;
                f2 = 0.0f;
                f3 = 0.83f;
                f4 = 0.83f;
                break;
            case 14:
                f = 0.8f;
                f2 = 0.0f;
                f3 = 0.83f;
                f4 = 0.83f;
                break;
            case 15:
              //  f = AppIconBounceAnimation.BOUNCE_ANIM_SCALE;
                f2 = 0.0f;
                f3 = 0.83f;
                f4 = 0.83f;
                break;
            case 20:
                f = 0.17f;
                f2 = 0.17f;
                f3 = 0.67f;
                f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                break;
            case 21:
                f = 0.17f;
                f2 = 0.17f;
                f3 = 0.5f;
                f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                break;
            case 22:
                f = 0.17f;
                f2 = 0.17f;
                f3 = 0.4f;
                f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                break;
            case SINE_OUT_70 /*23*/:
                f = 0.17f;
                f2 = 0.17f;
             //   f3 = BlurUtils.BLUR_MAX_AMOUNT;
                f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                break;
            case SINE_OUT_80 /*24*/:
                f = 0.17f;
                f2 = 0.17f;
                f3 = 0.2f;
                f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                break;
            case SINE_OUT_90 /*25*/:
                f = 0.17f;
                f2 = 0.17f;
                f3 = 0.1f;
                f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                break;
            case SINE_IN_OUT_33 /*30*/:
                f = 0.33f;
                f2 = 0.0f;
                f3 = 0.67f;
                f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                break;
            case SINE_IN_OUT_50 /*31*/:
                f = 0.33f;
                f2 = 0.0f;
                f3 = 0.5f;
                f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                break;
            case 32:
                f = 0.33f;
                f2 = 0.0f;
                f3 = 0.4f;
                f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                break;
            case SINE_IN_OUT_70 /*33*/:
                f = 0.33f;
                f2 = 0.0f;
              //  f3 = BlurUtils.BLUR_MAX_AMOUNT;
                f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                break;
            case SINE_IN_OUT_80 /*34*/:
                f = 0.33f;
                f2 = 0.0f;
                f3 = 0.2f;
                f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                break;
            case SINE_IN_OUT_90 /*35*/:
                f = 0.33f;
                f2 = 0.0f;
                f3 = 0.1f;
                f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                break;
            default:
                f4 = 0.0f;
                f3 = 0.0f;
                f2 = 0.0f;
                f = 0.0f;
                break;
        }
        return new PathInterpolator(f, f2, f3, f4);
    }
}
