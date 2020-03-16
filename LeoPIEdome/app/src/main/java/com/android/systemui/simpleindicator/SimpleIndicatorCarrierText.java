package com.android.systemui.simpleindicator;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.android.keyguard.CarrierText;
import com.android.systemui.Dependency;

public class SimpleIndicatorCarrierText extends CarrierText implements SimpleIndicatorSubscriber {
    private boolean mHideMySelf = false;
    private int mOriginalVisibility = 8;
    private String mSubscribeCode;

    public SimpleIndicatorCarrierText(Context context) {
        super(context);
    }

    public SimpleIndicatorCarrierText(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @SuppressLint("WrongConstant")
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mOriginalVisibility = getVisibility();
        verifySubscribeCode();
       // ((SimpleIndicatorManager) Dependency.get(SimpleIndicatorManager.class)).registerSubscriber(this.mSubscribeCode, this);
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
     //   ((SimpleIndicatorManager) Dependency.get(SimpleIndicatorManager.class)).unregisterSubscriber(this.mSubscribeCode);
    }

    @SuppressLint("WrongConstant")
    public void updateQuickStarStyle() {
        //boolean hide = ((SimpleIndicatorManager) Dependency.get(SimpleIndicatorManager.class)).isLockCarrierDisabled();
       // if (this.mHideMySelf != hide) {
        //    this.mHideMySelf = hide;
       //     setVisibility(this.mOriginalVisibility);
       // }
    }

    public void setVisibility(int visibility) {
        int newVis = visibility;
        this.mOriginalVisibility = visibility;
       // super.setVisibility(this.mHideMySelf ? 8 : newVis);
    }

    public void verifySubscribeCode() throws RuntimeException {
        if (getTag() != null) {
            this.mSubscribeCode = getTag().toString();
        }
        if (TextUtils.isEmpty(this.mSubscribeCode)) {
            throw new RuntimeException("[QuickStar]SlimIndicatorCarrierText getTag() is null");
        }
    }
}
