package com.leo.salt.tweaks.view.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;
import android.widget.TextView;

import com.leo.salt.tweaks.R;

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
                    new int[]{getContext().getColor(R.color.colorPrimaryMain_setting), getContext().getColor(R.color.blue_btn_bg_pressed_color), getContext().getColor(R.color.colorPrimaryMain_ui)}, new float[]{0.5f, 0.9f, 0.3f},
                    Shader.TileMode.CLAMP));
        }
    }

}
