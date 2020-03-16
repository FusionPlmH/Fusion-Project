package com.leo.fusionleo.kernel.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.GridView;
import android.widget.ListView;



public class OverScrollListView extends GridView {
    public OverScrollListView(Context context) {
        super(context);
    }

    public OverScrollListView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public OverScrollListView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }


    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int expandSpec = MeasureSpec.makeMeasureSpec(Integer.MAX_VALUE >> 2,
                MeasureSpec.AT_MOST);
        super.onMeasure(widthMeasureSpec, expandSpec);
    }
}
