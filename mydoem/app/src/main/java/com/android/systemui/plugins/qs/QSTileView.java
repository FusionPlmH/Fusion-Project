package com.android.systemui.plugins.qs;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;


public abstract class QSTileView extends LinearLayout {
    public static final int VERSION = 1;

    public abstract int getDetailY();





    public abstract View updateAccessibilityOrder(View view);

    public QSTileView(Context context) {
        super(context);
    }
}
