package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;

public class BarTransitions {
    private boolean mAlwaysOpaque = false;
    protected BarBackgroundDrawable mBarBackground;
    protected int mMode;
    private final String mTag;
    private final View mView;

    protected static class BarBackgroundDrawable extends Drawable {
        private boolean mAnimating;
        protected int mBlackOpaque;
        private int mColor;
        private int mColorStart;
        private long mEndTime;

        private int mGradientAlpha;
        private int mGradientAlphaStart;
        private int mMode = -1;
        protected int mOpaque;
        private Paint mPaint = new Paint();


        public BarBackgroundDrawable(Context context, int i) {
            Resources resources = context.getResources();

        }

        public void applyModeBackground(int i, int i2, boolean z) {
            if (this.mMode != i2) {
                this.mMode = i2;
                this.mAnimating = z;
                if (z) {
                    long elapsedRealtime = SystemClock.elapsedRealtime();

                    this.mEndTime = 200 + elapsedRealtime;
                    this.mGradientAlphaStart = this.mGradientAlpha;
                    this.mColorStart = this.mColor;
                }
                invalidateSelf();
            }
        }

        public void draw(Canvas canvas) {

        }

        public void finishAnimation() {
            if (this.mAnimating) {
                this.mAnimating = false;
                invalidateSelf();
            }
        }



        public int getOpacity() {
            return 3;
        }

        public boolean needToGetQSColoringColor() {
            return false;
        }

        protected void onBoundsChange(Rect rect) {
            super.onBoundsChange(rect);

        }

        public void setAlpha(int i) {
        }

        public void setColorFilter(ColorFilter colorFilter) {
        }

        public void setFraction(float f) {
        }

        public void setTint(int i) {

            invalidateSelf();
        }

        public void setTintMode(Mode mode) {

            invalidateSelf();
        }

        public void updateOpaqueColor(int i) {
        }
    }

    public BarTransitions(View view, int i) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("BarTransitions.");
        stringBuilder.append(view.getClass().getSimpleName());
        this.mTag = stringBuilder.toString();
        this.mView = view;
        this.mBarBackground = new BarBackgroundDrawable(this.mView.getContext(), i);
        this.mView.setBackground(this.mBarBackground);
    }

    public static String modeToString(int i) {
        if (i == -1) {
            return "MODE_NONE";
        }
        if (i == 0) {
            return "MODE_OPAQUE";
        }
        if (i == 1) {
            return "MODE_SEMI_TRANSPARENT";
        }
        if (i == 2) {
            return "MODE_TRANSLUCENT";
        }
        if (i == 3) {
            return "MODE_LIGHTS_OUT";
        }
        if (i == 4) {
            return "MODE_TRANSPARENT";
        }
        if (i == 5) {
            return "MODE_WARNING";
        }
        if (i == 6) {
            return "MODE_LIGHTS_OUT_TRANSPARENT";
        }
        if (i == 7) {
            return "MODE_BLACK_OPAQUE";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Unknown mode ");
        stringBuilder.append(i);
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    protected void applyModeBackground(int i, int i2, boolean z) {
        this.mBarBackground.applyModeBackground(i, i2, z);
    }

    public void finishAnimations() {
        this.mBarBackground.finishAnimation();
    }

    public int getMode() {
        return this.mMode;
    }

    public boolean isAlwaysOpaque() {
        return this.mAlwaysOpaque;
    }

    protected boolean isLightsOut(int i) {
        return i == 3 || i == 6;
    }

    protected void onTransition(int i, int i2, boolean z) {
        applyModeBackground(i, i2, z);
    }

    public void setAutoDim(boolean z) {
    }

    public void setAutoDimOff(boolean z) {
    }

    public void setFraction(float f) {
        if (this.mBarBackground != null) {
            this.mBarBackground.setFraction(f);
        }
    }

    public void transitionTo(int i, boolean z) {
        if (isAlwaysOpaque() && (i == 1 || i == 2 || i == 4)) {
            i = 0;
        }

        if (this.mMode != i) {
            int i2 = this.mMode;
            this.mMode = i;
            Log.d(this.mTag, String.format("%s -> %s animate=%s", new Object[]{modeToString(i2), modeToString(i), Boolean.valueOf(z)}));
            onTransition(i2, this.mMode, z);
        }
    }
}
