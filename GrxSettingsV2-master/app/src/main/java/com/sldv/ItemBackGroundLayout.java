package com.sldv;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by yuyidong on 15/9/24.
 */
class ItemBackGroundLayout extends ViewGroup {
    /* 下一个View的距离 */
    private int mMarginLeft = 0;
    private int mMarginRight = 0;
    /* 添加的子View */
    private List<View> mBtnViews;

    public ItemBackGroundLayout(Context context) {
        this(context, null);
    }

    public ItemBackGroundLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ItemBackGroundLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        mBtnViews = new ArrayList<>();
        setVisibility(GONE);
    }

    protected View addMenuItem(MenuItem menuItem) {
        int count = getChildCount();
        FrameLayout parent = new FrameLayout(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(menuItem.width, LayoutParams.MATCH_PARENT);
        layoutParams.gravity = Gravity.CENTER;
        parent.setLayoutParams(layoutParams);
        parent.addView(createBG(menuItem));
        parent.setTag(menuItem);
        if (!TextUtils.isEmpty(menuItem.text)) {
            parent.addView(createTextView(menuItem));
            addView(parent, count);
            mBtnViews.add(parent);
            return parent;
        } else if (menuItem.icon != null) {
            parent.addView(createImageView(menuItem));
            addView(parent, count);
            mBtnViews.add(parent);
            return parent;
        } else {
            throw new IllegalArgumentException("必须得有一个!");
        }
    }

    private ImageView createBG(MenuItem menuItem) {
        ImageView imageView = new ImageView(getContext());
        imageView.setImageDrawable(menuItem.background);
        //imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        //Grx
        imageView.setScaleType(ImageView.ScaleType.CENTER);

        return imageView;
    }

    private TextView createTextView(MenuItem menuItem) {
        TextView textView = new TextView(getContext());
        textView.setText(menuItem.text);
        textView.setTextSize(menuItem.textSize);
        textView.setTextColor(menuItem.textColor);
        textView.setGravity(Gravity.CENTER);
        return textView;
    }

    private ImageView createImageView(MenuItem menuItem) {
        ImageView imageView = new ImageView(getContext());
        imageView.setImageDrawable(menuItem.icon);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        return imageView;
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int total = getChildCount();
        for (int i = 0; i < total; i++) {
            View view = getChildAt(i);
            MenuItem menuItem = (MenuItem) view.getTag();
            measureChild(view, MeasureSpec.makeMeasureSpec(menuItem.width, MeasureSpec.EXACTLY),
                    heightMeasureSpec);
        }
    }

    @Override
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int total = getChildCount();
        mMarginLeft = 0;
        mMarginRight = getMeasuredWidth();
        for (int i = 0; i < total; i++) {
            View view = getChildAt(i);
            MenuItem menuItem = (MenuItem) view.getTag();
            if (menuItem.direction == MenuItem.DIRECTION_LEFT) {
                view.layout(mMarginLeft, t, menuItem.width + mMarginLeft, b);
                mMarginLeft += menuItem.width;
            } else {
                view.layout(mMarginRight - menuItem.width, t, mMarginRight, b);
                mMarginRight -= menuItem.width;
            }
        }
    }

    protected List<View> getBtnViews() {
        return mBtnViews;
    }
}
