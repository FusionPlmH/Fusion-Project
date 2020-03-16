package com.salt.frame.saltview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.WebView;
import android.widget.GridView;

public class SaltWebView extends WebView {

    public SaltWebView(Context context) {
        super(context);
    }

    public SaltWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SaltWebView(Context context, AttributeSet attributeSet, int i) {
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
