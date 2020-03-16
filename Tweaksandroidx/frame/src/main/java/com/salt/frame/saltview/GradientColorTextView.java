package com.salt.frame.saltview;

import android.content.Context;

import android.graphics.Color;
import android.graphics.LinearGradient;

import android.graphics.Shader;
import android.util.AttributeSet;

import android.widget.TextView;




public class GradientColorTextView extends TextView {
    public GradientColorTextView(Context context) {
        super(context);
    }

    public GradientColorTextView(Context context,
                                               AttributeSet attrs) {
        super(context, attrs);

    }
    public GradientColorTextView(Context context,
                                               AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);

    }
    public boolean isFocused() {
        return true;
    }

    @Override
    protected void onLayout(boolean changed,
                            int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (changed) {
            getPaint().setShader(new LinearGradient(
                    0, 0, getWidth(), getHeight(),
                    new int[]{Color.BLUE,
                            Color.GREEN,
                            Color.RED},
                    new float[]{0.3f, 0.9f, 0.6f},
                    Shader.TileMode.MIRROR));
        }
    }

}
