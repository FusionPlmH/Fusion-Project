package com.android.launcher3.common.base.view;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;

import java.util.ArrayList;

public class CellLayoutChildren extends ViewGroup {
    private int mCellHeight;
    private int mCellWidth;
    private int mCountX;
    private int mHeightGap;
    private final int[] mTmpCellXY = new int[2];
    private int mWidthGap;

    public CellLayoutChildren(Context context) {
        super(context);
    }

    @Override
    protected void onLayout(boolean b, int i, int i1, int i2, int i3) {

    }

    protected void buildCustomAnimationSet(View view, int i, int i2, int i3, int i4) {
    }

    public void cancelLongPress() {
        super.cancelLongPress();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).cancelLongPress();
        }
    }

}
