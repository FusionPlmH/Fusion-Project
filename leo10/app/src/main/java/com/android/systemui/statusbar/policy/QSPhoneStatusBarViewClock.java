package com.android.systemui.statusbar.policy;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

public class QSPhoneStatusBarViewClock extends TextView {

    public QSPhoneStatusBarViewClock(Context context) {
        super(context);
    }

    public QSPhoneStatusBarViewClock(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public QSPhoneStatusBarViewClock(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        onDensityOrFontScaleChanged();
    }

    public void onDensityOrFontScaleChanged() {
           setVisibility(GONE);
    }
}