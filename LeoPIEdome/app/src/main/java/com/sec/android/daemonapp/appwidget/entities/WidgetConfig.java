package com.sec.android.daemonapp.appwidget.entities;

import android.support.annotation.FloatRange;
import com.sec.android.daemonapp.common.WidgetUtil;

public class WidgetConfig {
    public static final int MODE_BG_BLACK = 2;
    public static final int MODE_BG_WHITE = 1;
    public static final int MODE_TEXT_BLACK = 32;
    public static final int MODE_TEXT_SHADOW_BLACK = 512;
    public static final int MODE_TEXT_SHADOW_WHITE = 256;
    public static final int MODE_TEXT_WHITE = 16;
    private final boolean mIsDCM;
    private final boolean mIsSupportIndex;
    private final boolean mIsTablet;
    private final int mLocationService;
    private final int mTempScale;
    private final int mTheme;
    private final float mTransparency;
    private final int mWidgetMode;
    private final int mWidgetSize;

    public static final class Builder {
        private boolean mIsApplyOpenTheme;
        private boolean mIsDCM;
        private boolean mIsSupportIndex;
        private boolean mIsTablet;
        private boolean mIsWhiteWallpaper;
        private int mLocationService;
        private int mMode;
        private int mSize;
        private int mTempScale;
        private int mTheme;
        private float mTransparency;

        /* renamed from: build */
        public WidgetConfig lambda$getConfig$14$WidgetPresenter() {
            return new WidgetConfig(this.mTempScale, this.mLocationService, this.mIsSupportIndex, this.mSize, this.mTransparency, this.mMode, WidgetUtil.getDrawMode(this.mTheme, this.mTransparency, this.mIsApplyOpenTheme, this.mIsWhiteWallpaper), this.mIsDCM, this.mIsTablet);
        }

        public Builder isApplyOpenTheme(boolean z) {
            this.mIsApplyOpenTheme = z;
            return this;
        }

        public Builder isDCM(boolean z) {
            this.mIsDCM = z;
            return this;
        }

        public Builder isSupportIndex(boolean z) {
            this.mIsSupportIndex = z;
            return this;
        }

        public Builder isTablet(boolean z) {
            this.mIsTablet = z;
            return this;
        }

        public Builder isWhiteWallpaper(boolean z) {
            this.mIsWhiteWallpaper = z;
            return this;
        }

        public Builder locationService(int i) {
            this.mLocationService = i;
            return this;
        }

        /* renamed from: mode */
        public Builder lambda$getConfig$8$WidgetPresenter(int i) {
            this.mMode = i;
            return this;
        }

        public Builder size(int i) {
            this.mSize = i;
            return this;
        }

        public Builder tempScale(int i) {
            this.mTempScale = i;
            return this;
        }

        public Builder theme(int i) {
            this.mTheme = i;
            return this;
        }

        public Builder transparency(@FloatRange(from = 0.0d, to = 1.0d) float f) {
            this.mTransparency = f;
            return this;
        }
    }

    public WidgetConfig(int i, int i2, boolean z, int i3, float f, int i4, int i5, boolean z2, boolean z3) {
        this.mTempScale = i;
        this.mLocationService = i2;
        this.mIsSupportIndex = z;
        this.mWidgetSize = i3;
        this.mTransparency = f;
        this.mWidgetMode = i4;
        this.mTheme = i5;
        this.mIsDCM = z2;
        this.mIsTablet = z3;
    }

    public int getLocationService() {
        return this.mLocationService;
    }

    public int getTempScale() {
        return this.mTempScale;
    }

    public int getTheme() {
        return this.mTheme;
    }

    public float getTransparency() {
        return this.mTransparency;
    }

    public int getWidgetMode() {
        return this.mWidgetMode;
    }

    public int getWidgetSize() {
        return this.mWidgetSize;
    }

    public boolean isDCM() {
        return this.mIsDCM;
    }

    public boolean isSupportIndex() {
        return this.mIsSupportIndex;
    }

    public boolean isTablet() {
        return this.mIsTablet;
    }

    public String toString() {
        return "WidgetConfig{mTempScale=" + this.mTempScale + ", mLocationService=" + this.mLocationService + ", mIsSupportIndex=" + this.mIsSupportIndex + ", mWidgetSize=" + this.mWidgetSize + ", mTransparency=" + this.mTransparency + ", mWidgetMode=" + this.mWidgetMode + ", mTheme=" + this.mTheme + ", mIsDCM=" + this.mIsDCM + ", mIsTablet=" + this.mIsTablet + '}';
    }
}
