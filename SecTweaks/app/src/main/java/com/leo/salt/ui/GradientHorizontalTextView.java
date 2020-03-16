package com.leo.salt.ui;


import android.content.Context;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;

import com.leo.salt.R;

import java.util.Random;

import static android.graphics.Color.GREEN;


public class GradientHorizontalTextView extends TextView {
private LinearGradient mLinearGradient;
private Matrix mGradientMatrix;//渐变矩阵
private Paint mPaint;//画笔
private int mViewWidth = 0;//textView的宽
private int mTranslate = 0;//平移量
private boolean mAnimating = true;//是否动画
private int delta = 10;//移动增量
public GradientHorizontalTextView(Context ctx)
{
this(ctx,null);
}
public GradientHorizontalTextView(Context context, AttributeSet attrs) {
super(context, attrs);
}
@Override
protected void onSizeChanged(int w, int h, int oldw, int oldh) {
super.onSizeChanged(w, h, oldw, oldh);
if (mViewWidth == 0) {
mViewWidth = getMeasuredWidth();
if (mViewWidth > 0) {
mPaint = getPaint();
String text = getText().toString();
int size;
if(text.length()>0)
{
size = mViewWidth*2/text.length();
}else{
size = mViewWidth;
}
mLinearGradient = new LinearGradient(-size, 0, 80, 80,
new int[] { Color.WHITE, getCustomizedColor(getContext()), Color.DKGRAY },
new float[] { 0, 0.5f, 1 }, Shader.TileMode.CLAMP); //边缘融合
mPaint.setShader(mLinearGradient);//设置渐变
mGradientMatrix = new Matrix();
}
}
}
    static int getCustomizedColor(Context c) {
        int[] customizedColors = c.getResources().getIntArray(R.array.material_designer_colors);
        int customizedColor = customizedColors[new Random().nextInt(customizedColors.length)];
        return customizedColor;
    }
@Override
protected void onDraw(Canvas canvas) {
super.onDraw(canvas);
if (mAnimating && mGradientMatrix != null) {
float mTextWidth = getPaint().measureText(getText().toString());//获得文字宽
mTranslate += delta;//默认向右移动
if (mTranslate > mTextWidth+1 || mTranslate<1) {
delta = -delta;//向左移动
}
mGradientMatrix.setTranslate(mTranslate, 0);
mLinearGradient.setLocalMatrix(mGradientMatrix);
postInvalidateDelayed(50);//刷新
}
}
   
}