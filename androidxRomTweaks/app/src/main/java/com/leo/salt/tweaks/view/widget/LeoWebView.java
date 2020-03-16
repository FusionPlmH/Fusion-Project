package com.leo.salt.tweaks.view.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.WebView;
import android.widget.GridView;

public class LeoWebView extends WebView {

    public LeoWebView(Context context) {
        super(context);
    }

    public LeoWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LeoWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override
    protected void onScrollChanged(int l, int t, int oldl, int oldt) {
        super.onScrollChanged(l, t, oldl, oldt);
        if (mScrollListener != null) {
            mScrollListener.onScrollChanged(t);
        }
    }

    public interface IScrollListener {
        void onScrollChanged(int scrollY);
    }

    private IScrollListener mScrollListener;

    public void setOnScrollListener(IScrollListener listener) {
        mScrollListener = listener;
    }

}
