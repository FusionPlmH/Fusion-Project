package com.leo.salt.tweaks.fota;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;

import com.leo.salt.tweaks.R;

import java.text.DecimalFormat;

import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.resource.Resource.getColorInt;

public class FotaProgressBar extends View {

    /**
     * 进度条最大值
     */
    private float mMax = 100;

    /**
     * 进度条当前进度值
     */
    private float mProgress = 0;

    /**
     * 默认已完成颜色
     */
    private final int DEFAULT_FINISHED_COLOR = getColorInt(R.color.colorAccentMain);

    /**
     * 默认未完成颜色
     */
    private final int DEFAULT_UNFINISHED_COLOR = getColorInt(R.color.gray_btn_bg_pressed_color);

    /**
     * 已完成进度颜色
     */
    private int mReachedBarColor;

    /**
     * 未完成进度颜色
     */
    private int mUnreachedBarColor;

    /**
     * 进度条高度
     */
    private float mBarHeight;

    /**
     * the progress text color.
     */
    private int mTextColor;

    /**
     * 后缀
     */
    private String mSuffix = "%";

    /**
     * 前缀
     */
    private String mPrefix = getApksStringInt(R.string.fota_complete);

    /**
     * 未完成进度条所在矩形区域
     */
    private RectF mUnreachedRectF = new RectF(0, 0, 0, 0);
    /**
     * 已完成进度条所在矩形区域
     */
    private RectF mReachedRectF = new RectF(0, 0, 0, 0);

    /**
     * 画笔
     */
    private Paint mPaint;

    private boolean mTextVisibility;


    public FotaProgressBar(Context context) {
        this(context, null);
    }

    public FotaProgressBar(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public FotaProgressBar(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initAttrs(context, attrs);
        initPainters();
    }



    private void initAttrs(Context context, AttributeSet attrs) {
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.FotaProgressBar);
        mMax = typedArray.getInteger(R.styleable.FotaProgressBar_FotaMax, (int) mMax);
        mProgress = typedArray.getInteger(R.styleable.FotaProgressBar_FotaProgress, (int) mProgress);
        mReachedBarColor = typedArray.getColor(R.styleable.FotaProgressBar_FotaReachedBarColor, DEFAULT_FINISHED_COLOR);
        mUnreachedBarColor = typedArray.getColor(R.styleable.FotaProgressBar_FotaUnreachedBarColor, DEFAULT_UNFINISHED_COLOR);
        mTextColor = typedArray.getColor(R.styleable.FotaProgressBar_FotaTextColor, DEFAULT_UNFINISHED_COLOR);
        mSuffix = TextUtils.isEmpty(typedArray.getString(R.styleable.FotaProgressBar_FotaSuffix)) ? mSuffix : typedArray.getString(R.styleable.FotaProgressBar_FotaSuffix);
        mPrefix = TextUtils.isEmpty(typedArray.getString(R.styleable.FotaProgressBar_FotaPrefix)) ? mPrefix : typedArray.getString(R.styleable.FotaProgressBar_FotaPrefix);
        mBarHeight = typedArray.getDimension(R.styleable.FotaProgressBar_FotaBarHeight, dp2px(2f));
        mTextVisibility = typedArray.getBoolean(R.styleable.FotaProgressBar_FotaTextVisibility, true);
        typedArray.recycle();
    }

    private void initPainters() {
        mPaint = new Paint(Paint.ANTI_ALIAS_FLAG);//抗锯齿
        mPaint.setAntiAlias(true);//防抖动
        mPaint.setStrokeCap(Paint.Cap.ROUND);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        calculateDrawRectFWithoutProgressText();
        mPaint.setColor(mUnreachedBarColor);
        canvas.drawRoundRect(mUnreachedRectF, mBarHeight / 2, mBarHeight / 2, mPaint);

        mPaint.setColor(mReachedBarColor);
        canvas.drawRoundRect(mReachedRectF, mBarHeight / 2, mBarHeight / 2, mPaint);


        mPaint.setColor(mTextColor);
        mPaint.setTextSize(mBarHeight * 0.6f);
        String mCurrentDrawText = new DecimalFormat("#").format(getProgress() * 100 / getMax());
        mCurrentDrawText = mPrefix + mCurrentDrawText + mSuffix;
        float mDrawTextWidth = mPaint.measureText(mCurrentDrawText);
        if (mTextVisibility && getProgress() > 0 && mReachedRectF.right >mDrawTextWidth) {
            canvas.drawText(mCurrentDrawText, mReachedRectF.right - mDrawTextWidth - mBarHeight * 0.4f, (int) ((getHeight() / 2.0f) - ((mPaint.descent() + mPaint.ascent()) / 2.0f)), mPaint);
        }


    }

    private void calculateDrawRectFWithoutProgressText() {
        mReachedRectF.left = getPaddingLeft();
        mReachedRectF.top = getHeight() / 2.0f - mBarHeight / 2.0f;
        mReachedRectF.right = (getWidth() - getPaddingLeft() - getPaddingRight()) / (getMax() * 1.0f) * getProgress() + getPaddingLeft();
        mReachedRectF.bottom = getHeight() / 2.0f + mBarHeight / 2.0f;

        mUnreachedRectF.left = getPaddingLeft();
        mUnreachedRectF.top = getHeight() / 2.0f + -mBarHeight / 2.0f;
        mUnreachedRectF.right = getWidth() - getPaddingRight();
        mUnreachedRectF.bottom = getHeight() / 2.0f + mBarHeight / 2.0f;
    }

    public float getMax() {
        return mMax;
    }

    public float getProgress() {
        return mProgress;
    }

    public void setMax(int max) {
        this.mMax = max;
        invalidate();
    }

    public void setProgress(float progress) {
        this.mProgress = checkProgress(progress);
        invalidate();
    }


    private float checkProgress(float progress) {
        if (progress < 0) return 0;
        return progress > mMax ? mMax : progress;
    }

    private int dp2px(float dpValue) {
        float scale = getContext().getResources().getDisplayMetrics().density;
        return (int) (dpValue * scale + 0.5f);
    }
}
