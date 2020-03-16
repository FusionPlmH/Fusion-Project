package com.android.keyguard;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.RippleDrawable;
import android.os.PowerManager;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.android.internal.widget.LockPatternUtils;

import java.io.File;
import java.util.Random;

public class NumPadKey extends ViewGroup {
    static String[] sKlondike;
    private int mDigit;

    public NumPadKey(Context context) {
        this(context, null);
    }

    public NumPadKey(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NumPadKey(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 2131558524);
    }

    protected NumPadKey(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);



    }
    public void setDigit(int i) {
        this.mDigit = i;
        updateText();
    }
    private void updateText() {

    }
    @Override
    protected void onLayout(boolean b, int i, int i1, int i2, int i3) {

    }


}
