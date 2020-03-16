package com.android.systemui.bar;

import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;


public class ScrollableBarItemView extends View {
    public final String TAG;



    public ScrollableBarItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Bar.");
        stringBuilder.append(getClass().getSimpleName());
        this.TAG = stringBuilder.toString();
    }

    /* access modifiers changed from: private */
    public void clipBottom() {

    }


    public void performAddAnimation(long j, long j2, boolean z) {
    }

    public void performRemoveAnimation(long j, long j2, float f, boolean z, float f2, Runnable runnable, AnimatorListenerAdapter animatorListenerAdapter) {
    }
}
