package com.android.systemui.simpleindicator;

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

    public SimpleIndicatorCarrierText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
       mOriginalVisibility = getVisibility();
        verifySubscribeCode();
        ((SimpleIndicatorManager) Dependency.get(SimpleIndicatorManager.class)).registerSubscriber(this.mSubscribeCode, this);
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((SimpleIndicatorManager) Dependency.get(SimpleIndicatorManager.class)).unregisterSubscriber(this.mSubscribeCode);
    }

    public void setVisibility(int i) {
        int i2 = i;
        mOriginalVisibility = i;
      setVisibility(this.mHideMySelf ? 8 : i2);
    }

    public void updateQuickStarStyle() {
        boolean isLockCarrierDisabled = ((SimpleIndicatorManager) Dependency.get(SimpleIndicatorManager.class)).isLockCarrierDisabled();
        if (this.mHideMySelf != isLockCarrierDisabled) {
            this.mHideMySelf = isLockCarrierDisabled;
            setVisibility(mOriginalVisibility);
        }
    }

    public void verifySubscribeCode() throws RuntimeException {
        if (getTag() != null) {
            this.mSubscribeCode = getTag().toString();
        }
        if (TextUtils.isEmpty(mSubscribeCode)) {
            throw new RuntimeException("[QuickStar]SlimIndicatorCarrierText getTag() is null");
        }
    }
}
