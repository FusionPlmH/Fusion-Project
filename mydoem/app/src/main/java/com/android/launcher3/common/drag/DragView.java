package com.android.launcher3.common.drag;

import android.animation.FloatArrayEvaluator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.DecelerateInterpolator;
import com.android.launcher3.Launcher;

import java.util.Arrays;

public class DragView extends View {
    public static int COLOR_CHANGE_DURATION = 120;
    public static final float EXTRA_VIEW_SCALE_FACTOR = 1.0f;
    public static final int EXTRA_VIEW_SHOW_DURATION = 200;
    public static final int VIEW_SHOW_DURATION = 150;
    private static float sDragAlpha = EXTRA_VIEW_SCALE_FACTOR;
    ValueAnimator mAnim;
    private Bitmap mBitmap;
    //private AppIconBounceAnimation mBounceAnim;
    private Bitmap mCrossFadeBitmap;
    private float mCrossFadeProgress;
    private float[] mCurrentFilter;
   // private DragLayer mDragLayer;
    private Drawable mDragOutline;
    private Rect mDragRegion;
    private Point mDragVisualizeOffset;
    private ValueAnimator mFilterAnimator;
    private boolean mHasDrawn;
    private int mIntrinsicIconSize;
    private boolean mIsExtraDragView;
    private float mOffsetX;
    private float mOffsetY;
    private Paint mPaint;
    private int mRegistrationX;
    private int mRegistrationY;
    private View mSourceView;
    private int mTargetOffsetX;
    private int mTargetOffsetY;
    private int mTopDelta;
    private int mTouchX;
    private int mTouchY;

    public DragView(Launcher launcher, Bitmap bitmap, int i, int i2, int i3, int i4, int i5, int i6, float f) {
        this(launcher, bitmap, i, i2, i3, i4, i5, i6, f, f, false);
    }

    public DragView(Launcher launcher, Bitmap bitmap, int i, int i2, int i3, int i4, int i5, int i6, final float f, final float f2, boolean z) {
        super(launcher);
        this.mDragVisualizeOffset = null;
        this.mDragRegion = null;
       // this.mDragLayer = null;
        this.mHasDrawn = false;
        this.mCrossFadeProgress = 0.0f;
        this.mOffsetX = 0.0f;
        this.mOffsetY = 0.0f;
        this.mIntrinsicIconSize = 0;
    //    this.mDragLayer = launcher.getDragLayer();
        this.mIsExtraDragView = z;
        setScaleX(f);
        setScaleY(f);
    //    this.mAnim = LauncherAnimUtils.ofFloat(this, 0.0f, EXTRA_VIEW_SCALE_FACTOR);
        this.mAnim.setDuration(this.mIsExtraDragView ? 200 : 150);
        this.mAnim.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                int access$000 = (int) (((float) DragView.this.mTargetOffsetX) * floatValue);
                int access$100 = (int) (((float) DragView.this.mTargetOffsetY) * floatValue);
                DragView.this.mOffsetX = (float) access$000;
                DragView.this.mOffsetY = (float) access$100;
                DragView.this.setScaleX(f + ((f2 - f) * floatValue));
                DragView.this.setScaleY(f + ((f2 - f) * floatValue));
                if (DragView.sDragAlpha != DragView.EXTRA_VIEW_SCALE_FACTOR) {
                    DragView.this.setAlpha((DragView.sDragAlpha * floatValue) + (DragView.EXTRA_VIEW_SCALE_FACTOR - floatValue));
                }
                if (DragView.this.getParent() == null) {
                    valueAnimator.cancel();
                    return;
                }
                DragView.this.setTranslationX((float) ((DragView.this.mTouchX - DragView.this.mRegistrationX) + access$000));
                DragView.this.setTranslationY((float) ((DragView.this.mTouchY - DragView.this.mRegistrationY) + access$100));
            }
        });
        this.mBitmap = Bitmap.createBitmap(bitmap, i3, i4, i5, i6);
        setDragRegion(new Rect(0, 0, i5, i6));
        this.mRegistrationX = i;
        this.mRegistrationY = i2;
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
        measure(makeMeasureSpec, makeMeasureSpec);
        this.mPaint = new Paint(2);
        setElevation(getResources().getDimension(2131230908));
    }

    private void animateFilterTo(float[] fArr) {
        float[] array = this.mCurrentFilter == null ? new ColorMatrix().getArray() : this.mCurrentFilter;
        this.mCurrentFilter = Arrays.copyOf(array, array.length);
        if (this.mFilterAnimator != null) {
            this.mFilterAnimator.cancel();
        }
        this.mFilterAnimator = ValueAnimator.ofObject(new FloatArrayEvaluator(this.mCurrentFilter), new Object[]{array, fArr});
        this.mFilterAnimator.setDuration((long) COLOR_CHANGE_DURATION);
        this.mFilterAnimator.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                DragView.this.mPaint.setColorFilter(new ColorMatrixColorFilter(DragView.this.mCurrentFilter));
                DragView.this.invalidate();
            }
        });
        this.mFilterAnimator.start();
    }

    public static void setColorScale(int i, ColorMatrix colorMatrix) {
        colorMatrix.setScale(((float) Color.red(i)) / 255.0f, ((float) Color.green(i)) / 255.0f, ((float) Color.blue(i)) / 255.0f, ((float) Color.alpha(i)) / 255.0f);
    }

    public void animateUp() {
      //  if (this.mBounceAnim == null) {
       //     this.mBounceAnim = new AppIconBounceAnimation((View) this, (float) AppIconBounceAnimation.BOUNCE_ANIM_SCALE);
       //     this.mBounceAnim.animateUp();
     //   }
    }

    public void cancelAnimation() {
        if (this.mAnim != null && this.mAnim.isRunning()) {
            this.mAnim.cancel();
        }
       // if (this.mBounceAnim != null) {
       //     this.mBounceAnim.cancel();
       // }
    }

    public void crossFade(int i) {
      //  ValueAnimator ofFloat = LauncherAnimUtils.ofFloat(this, 0.0f, EXTRA_VIEW_SCALE_FACTOR);
      //  ofFloat.setDuration((long) i);
       // ofFloat.setInterpolator(new DecelerateInterpolator(1.5f));
       // ofFloat.addUpdateListener(new AnimatorUpdateListener() {
         //   public void onAnimationUpdate(ValueAnimator valueAnimator) {
             //   DragView.this.mCrossFadeProgress = valueAnimator.getAnimatedFraction();
           // }
       // });
        //ofFloat.start();
    }

    public Drawable getDragOutline() {
        return this.mDragOutline;
    }

    public Rect getDragRegion() {
        return this.mDragRegion;
    }

    public int getDragRegionHeight() {
        return this.mDragRegion.height();
    }

    public int getDragRegionLeft() {
        return this.mDragRegion.left;
    }

    public int getDragRegionTop() {
        return this.mDragRegion.top;
    }

    public int getDragRegionWidth() {
        return this.mDragRegion.width();
    }

    public Point getDragVisualizeOffset() {
        return this.mDragVisualizeOffset;
    }

    public int getIntrinsicIconSize() {
        return this.mIntrinsicIconSize;
    }

    public float getOffsetX() {
        return this.mOffsetX;
    }

    public float getOffsetY() {
        return this.mOffsetY;
    }

    public int getRegistrationX() {
        return this.mRegistrationX;
    }

    public int getRegistrationY() {
        return this.mRegistrationY;
    }

    public View getSourceView() {
        return this.mSourceView;
    }

    public int getTopDelta() {
        return this.mTopDelta;
    }

    public boolean hasDrawn() {
        return this.mHasDrawn;
    }

    public boolean isExtraDragView() {
        return this.mIsExtraDragView;
    }

    void move(int i, int i2) {
        this.mTouchX = i;
        this.mTouchY = i2;
        setTranslationX((float) ((i - this.mRegistrationX) + ((int) this.mOffsetX)));
        setTranslationY((float) ((i2 - this.mRegistrationY) + ((int) this.mOffsetY)));
    }

    protected void onDraw(Canvas canvas) {
        boolean z = true;
        this.mHasDrawn = true;
        if (this.mCrossFadeProgress <= 0.0f || this.mCrossFadeBitmap == null) {
            z = false;
        }
        if (z) {
            this.mPaint.setAlpha((int) ((EXTRA_VIEW_SCALE_FACTOR - this.mCrossFadeProgress) * 255.0f));
        }
        canvas.drawBitmap(this.mBitmap, 0.0f, 0.0f, this.mPaint);
        if (z) {
            this.mPaint.setAlpha((int) (this.mCrossFadeProgress * 255.0f));
            canvas.save();
            canvas.scale((((float) this.mBitmap.getWidth()) * EXTRA_VIEW_SCALE_FACTOR) / ((float) this.mCrossFadeBitmap.getWidth()), (((float) this.mBitmap.getHeight()) * EXTRA_VIEW_SCALE_FACTOR) / ((float) this.mCrossFadeBitmap.getHeight()));
            canvas.drawBitmap(this.mCrossFadeBitmap, 0.0f, 0.0f, this.mPaint);
            canvas.restore();
        }
    }

    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(this.mBitmap.getWidth(), this.mBitmap.getHeight());
    }

    void remove() {
        if (getParent() != null) {
          //  this.mDragLayer.removeView(this);
        }
        this.mBitmap = null;
        this.mDragOutline = null;
    }

    public void resetLayoutParams() {
        this.mOffsetY = 0.0f;
        this.mOffsetX = 0.0f;
        requestLayout();
    }

    public void setAlpha(float f) {
        super.setAlpha(f);
        this.mPaint.setAlpha((int) (255.0f * f));
        invalidate();
    }

    public void setColor(int i) {
        if (this.mPaint == null) {
            this.mPaint = new Paint(2);
        }
        if (i != 0) {
            ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(0.0f);
            ColorMatrix colorMatrix2 = new ColorMatrix();
            setColorScale(i, colorMatrix2);
            colorMatrix.postConcat(colorMatrix2);
            animateFilterTo(colorMatrix.getArray());
        } else if (this.mCurrentFilter == null) {
            this.mPaint.setColorFilter(null);
            invalidate();
        } else {
            animateFilterTo(new ColorMatrix().getArray());
        }
    }

    public void setCrossFadeBitmap(Bitmap bitmap) {
        this.mCrossFadeBitmap = bitmap;
    }

    public void setDragOutline(Drawable drawable) {
        this.mDragOutline = drawable;
    }

    public void setDragRegion(Rect rect) {
        this.mDragRegion = rect;
    }

    public void setDragVisualizeOffset(Point point) {
        this.mDragVisualizeOffset = point;
    }

    public void setIntrinsicIconSize(int i) {
        this.mIntrinsicIconSize = i;
    }

    public void setSourceView(View view) {
        this.mSourceView = view;
    }

    public void setTargetOffset(int i, int i2) {
        this.mTargetOffsetX = i;
        this.mTargetOffsetY = i2;
    }

    public void setTopDelta(int i) {
        this.mTopDelta = i;
    }

    public void show(int i, int i2) {
      //  this.mDragLayer.addView(this);
        ///LayoutParams layoutParams = new DragLayer.LayoutParams(0, 0);
        ///layoutParams.width = this.mBitmap.getWidth();
       // l/ayoutParams.height = this.mBitmap.getHeight();
        //layoutParams.customPosition = true;
       // setLayoutParams(layoutParams);
        this.mTouchX = i;
        this.mTouchY = i2;
        setTranslationX((float) (i - this.mRegistrationX));
        setTranslationY((float) (i2 - this.mRegistrationY));
        post(new Runnable() {
            public void run() {
                DragView.this.mAnim.start();
            }
        });
    }
}
