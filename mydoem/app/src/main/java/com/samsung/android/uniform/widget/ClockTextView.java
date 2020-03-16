package com.samsung.android.uniform.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.widget.TextView;


import com.dome.leo.R;

import static com.os.leo.utils.FontsUtils.setLeoRomFonts;


public class ClockTextView extends TextView {
    private static final String TAG = ClockTextView.class.getSimpleName();
    boolean mLeoFont;
    public ClockTextView(Context context) {
        this(context, null);
    }

    public ClockTextView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ClockTextView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.ClockTextView, defStyleAttr, 0);
        try {

            a.recycle();
        } catch (Throwable th) {
            a.recycle();
        }


    }
    public void  setLeoDefaultTextFont(){
        mLeoFont=false;

    }
    public void  setLeoTextFont(int style){
        mLeoFont=true;
        setLeoRomFonts(0,style);
    }

    protected void onDraw(Canvas canvas) {
        Shader shader = getPaint().getShader();
        if (shader != null) {
            getPaint().setShadowLayer(getShadowRadius(), getShadowDx(), getShadowDy(), getShadowColor());
            getPaint().setShader(null);
            super.onDraw(canvas);
            getPaint().clearShadowLayer();
            getPaint().setShader(shader);
        }
        super.onDraw(canvas);
    }
}
