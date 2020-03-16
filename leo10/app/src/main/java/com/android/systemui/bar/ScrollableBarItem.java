package com.android.systemui.bar;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;


public abstract class ScrollableBarItem extends BarItem {
    protected Context mContext;

    public ScrollableBarItem(Context context) {
        this.mContext = context;
    }

    public ScrollableBarItemView getScrollableBarItemView(ViewGroup viewGroup) {
        return (ScrollableBarItemView) LayoutInflater.from(this.mContext).inflate(0, viewGroup, false);
    }
}
