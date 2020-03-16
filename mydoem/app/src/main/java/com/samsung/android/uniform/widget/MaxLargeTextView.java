package com.samsung.android.uniform.widget;

import android.content.Context;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import android.util.AttributeSet;
import com.samsung.android.uniform.utils.ACLog;

public class MaxLargeTextView extends ClockTextView {
    private static final float BASE_FONT_SCALE = 1.0f;
    private static final float MAX_FONT_SCALE = 1.2f;
    private static final String TAG = MaxLargeTextView.class.getSimpleName();
boolean mLeoSize;
    public MaxLargeTextView(Context context) {
        this(context, null);
    }

    public MaxLargeTextView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public MaxLargeTextView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);

    }

    private void setTextSizeInternal(Context context) {

        float scale = BASE_FONT_SCALE;
        try {
            scale = System.getFloat(context.getContentResolver(), "font_scale");
        } catch (SettingNotFoundException e) {
            ACLog.e(TAG, "font_scale settings not found");
        }
        if (scale > MAX_FONT_SCALE) {
            scale = MAX_FONT_SCALE;
        }

            setTextSize(0, getTextSize() * scale);




    }



}
