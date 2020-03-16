package com.android.systemui.slimindicator;

import android.content.Context;
import android.util.AttributeSet;
import com.android.keyguard.CarrierText;
import com.android.systemui.Dependency;


public class SlimIndicatorCarrierText extends CarrierText  {
    private Context mContext;
    private boolean mHideMySelf;
    private float mOriginalAlpha;
    private int mOriginalVisibility;

    public SlimIndicatorCarrierText(Context context) {
        this(context, null);
    }

    public SlimIndicatorCarrierText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOriginalVisibility = 8;
        this.mOriginalAlpha = 1.0f;
        this.mHideMySelf = false;
        this.mContext = context;
    }


}
