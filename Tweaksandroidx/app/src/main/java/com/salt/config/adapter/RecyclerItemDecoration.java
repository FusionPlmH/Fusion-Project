package com.salt.config.adapter;

import android.content.Context;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;


import androidx.recyclerview.widget.RecyclerView;

import com.salt.config.R;
import com.salt.config.bean.DataBean;

import java.util.List;

import static org.salt.preference.colorpicker.Utils.getColorAttr;

/**
     * 添加分割线
     */
public class RecyclerItemDecoration extends RecyclerView.ItemDecoration{


    private int dividerHeight;
    private Paint dividerPaint;
    private int dividerleft;
    private int dividerright;
    public RecyclerItemDecoration(Context context) {
        dividerPaint = new Paint();
        dividerPaint.setColor(context.getColor(R.color.list_divider_color));
        dividerHeight = context.getResources().getDimensionPixelSize(R.dimen.divider_height);
        dividerleft = context.getResources().getDimensionPixelSize(R.dimen.divider_left);
        dividerright= context.getResources().getDimensionPixelSize(R.dimen.divider_right);
    }


    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        super.getItemOffsets(outRect, view, parent, state);
        outRect.bottom = dividerHeight;
    }

    @Override
    public void onDraw(Canvas c, RecyclerView parent, RecyclerView.State state) {
        int childCount = parent.getChildCount();
        int left =dividerleft;
        int right = parent.getWidth() - dividerright;

        for (int i = 0; i < childCount - 1; i++) {
            View view = parent.getChildAt(i);
            float top = view.getBottom();
            float bottom = view.getBottom() + dividerHeight;
            c.drawRect(left, top, right, bottom, dividerPaint);
        }
    }
}