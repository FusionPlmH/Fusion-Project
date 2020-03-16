package com.android.systemui.statusbar.policy;

import android.content.Context;
import android.util.AttributeSet;
import com.android.systemui.FontSizeUtils;

public class QSPhoneStatusBarViewClock extends QSClock {
    public QSPhoneStatusBarViewClock(Context context) {
        super(context);
    }

    public QSPhoneStatusBarViewClock(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public QSPhoneStatusBarViewClock(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void onDensityOrFontScaleChanged() {
        FontSizeUtils.updateFontSize(this, 2131167103);
    }
}
