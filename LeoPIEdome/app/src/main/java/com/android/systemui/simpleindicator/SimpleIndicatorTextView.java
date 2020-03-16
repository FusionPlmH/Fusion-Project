package com.android.systemui.simpleindicator;

import android.content.Context;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.widget.TextView;

public class SimpleIndicatorTextView extends TextView implements SimpleIndicatorSubscriber {
    private boolean mHideMySelf = false;
    private int mOriginalVisibility = 8;
    private String mSubscribeCode;

    public SimpleIndicatorTextView(Context context) {
        super(context);
    }

    public SimpleIndicatorTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }


    public void verifySubscribeCode() throws RuntimeException {
        if (getTag() != null) {
            this.mSubscribeCode = getTag().toString();
        }
        if (TextUtils.isEmpty(this.mSubscribeCode)) {
            throw new RuntimeException("[QuickStar]SimpleIndicatorTextView getTag() is null");
        }
    }

    @Override
    public void updateQuickStarStyle() {

    }
}
