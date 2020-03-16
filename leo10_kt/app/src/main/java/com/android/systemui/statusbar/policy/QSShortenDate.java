package com.android.systemui.statusbar.policy;

import android.content.Context;
import android.util.AttributeSet;

public class QSShortenDate extends QSDate {
    public QSShortenDate(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mSaltDateMode=0;
    }

    public void notifyTimeChanged(String str, String str2, boolean z, String str3, String str4) {
        if (!str3.equals(this.mLastText)) {
            String string=str4+mSaltDateText;
            setText(string);
            this.mLastText = string;
        }
    }
}
