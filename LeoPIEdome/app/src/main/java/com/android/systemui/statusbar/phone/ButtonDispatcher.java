package com.android.systemui.statusbar.phone;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.View.OnClickListener;
import android.view.View.OnHoverListener;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;

import com.android.systemui.plugins.statusbar.phone.NavBarButtonProvider.ButtonInterface;
import com.android.systemui.statusbar.policy.KeyButtonDrawable;
import java.util.ArrayList;

public class ButtonDispatcher {
    private AccessibilityDelegate mAccessibilityDelegate;
    private Float mAlpha;

    private OnClickListener mClickListener;
    private View mCurrentView;
    private Float mDarkIntensity;
    private Boolean mDelayTouchFeedback;
    private ValueAnimator mFadeAnimator;
    private final AnimatorListenerAdapter mFadeListener = new AnimatorListenerAdapter() {
        public void onAnimationEnd(Animator animator) {
            ButtonDispatcher.this.setVisibility(ButtonDispatcher.this.getAlpha() == 1.0f ? 0 : 4);
        }
    };
    private final int mId;
    private KeyButtonDrawable mImageDrawable;
    private OnLongClickListener mLongClickListener;
    private Boolean mLongClickable;
    private OnHoverListener mOnHoverListener;
    private OnTouchListener mTouchListener;
    private boolean mVertical;
    private final ArrayList<View> mViews = new ArrayList();
    private Integer mVisibility = Integer.valueOf(-1);

    public ButtonDispatcher(int i) {
        this.mId = i;
    }

    public void abortCurrentGesture() {
        int size = this.mViews.size();
        for (int i = 0; i < size; i++) {
            if (this.mViews.get(i) instanceof ButtonInterface) {
                ((ButtonInterface) this.mViews.get(i)).abortCurrentGesture();
            }
        }
    }

    public void addView(View view) {
        this.mViews.add(view);
        view.setOnClickListener(this.mClickListener);
        view.setOnTouchListener(this.mTouchListener);
        view.setOnLongClickListener(this.mLongClickListener);
        view.setOnHoverListener(this.mOnHoverListener);
        if (this.mLongClickable != null) {
            view.setLongClickable(this.mLongClickable.booleanValue());
        }
        if (this.mAlpha != null) {
            view.setAlpha(this.mAlpha.floatValue());
        }
        if (!(this.mVisibility == null || this.mVisibility.intValue() == -1)) {
            view.setVisibility(this.mVisibility.intValue());
        }
        if (this.mAccessibilityDelegate != null) {
            view.setAccessibilityDelegate(this.mAccessibilityDelegate);
        }
        if (view instanceof ButtonInterface) {
            ButtonInterface buttonInterface = (ButtonInterface) view;
            if (this.mDarkIntensity != null) {
                buttonInterface.setDarkIntensity(this.mDarkIntensity.floatValue());
            }
            if (this.mImageDrawable != null) {
                buttonInterface.setImageDrawable(this.mImageDrawable);
            }
            if (this.mDelayTouchFeedback != null) {

            }
            buttonInterface.setVertical(this.mVertical);
        }
    }

    public void clear() {
        this.mViews.clear();
    }

    public float getAlpha() {
        return this.mAlpha != null ? this.mAlpha.floatValue() : 1.0f;
    }

    public View getCurrentView() {
        return this.mCurrentView;
    }

    public int getId() {
        return this.mId;
    }

    public KeyButtonDrawable getImageDrawable() {
        return this.mImageDrawable;
    }

    public int getVisibility() {
        return this.mVisibility != null ? this.mVisibility.intValue() : 0;
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    public void setAccessibilityDelegate(AccessibilityDelegate accessibilityDelegate) {
        this.mAccessibilityDelegate = accessibilityDelegate;
        int size = this.mViews.size();
        for (int i = 0; i < size; i++) {
            ((View) this.mViews.get(i)).setAccessibilityDelegate(accessibilityDelegate);
        }
    }

    public void setAlpha(float f) {
        setAlpha(f, false);
    }

    public void setAlpha(float f, boolean z) {
        int i = 0;
        if (z) {
            if (this.mFadeAnimator != null) {
                this.mFadeAnimator.cancel();
            }
            this.mFadeAnimator = ValueAnimator.ofFloat(new float[]{getAlpha(), f});
            this.mFadeAnimator.setDuration(getAlpha() < f ? 150 : 100);

            this.mFadeAnimator.start();
            setVisibility(0);
            return;
        }
        this.mAlpha = Float.valueOf(f);
        int size = this.mViews.size();
        while (i < size) {
            ((View) this.mViews.get(i)).setAlpha(f);
            i++;
        }
    }

    public void setAnimationImageDrawable(KeyButtonDrawable keyButtonDrawable) {
        this.mImageDrawable = keyButtonDrawable;
        int size = this.mViews.size();
        for (int i = 0; i < size; i++) {
            ((ButtonInterface) this.mViews.get(i)).setImageDrawable(this.mImageDrawable);
            setDarkIntensity(this.mDarkIntensity.floatValue());
        }
    }

    public void setCurrentView(View view) {
        this.mCurrentView = view.findViewById(this.mId);
    }

    public void setDarkIntensity(float f) {
        this.mDarkIntensity = Float.valueOf(f);
        int size = this.mViews.size();
        for (int i = 0; i < size; i++) {
            if (this.mViews.get(i) instanceof ButtonInterface) {
                ((ButtonInterface) this.mViews.get(i)).setDarkIntensity(f);
            }
        }
    }

    public void setDelayTouchFeedback(boolean z) {
        this.mDelayTouchFeedback = Boolean.valueOf(z);
        int size = this.mViews.size();
        for (int i = 0; i < size; i++) {
            if (this.mViews.get(i) instanceof ButtonInterface) {

            }
        }
    }

    public void setImageDrawable(KeyButtonDrawable keyButtonDrawable) {
        this.mImageDrawable = keyButtonDrawable;
        int size = this.mViews.size();
        for (int i = 0; i < size; i++) {
            if (this.mViews.get(i) instanceof ButtonInterface) {
                ((ButtonInterface) this.mViews.get(i)).setImageDrawable(this.mImageDrawable);
            }
        }
    }

    public void setLongClickable(boolean z) {
        this.mLongClickable = Boolean.valueOf(z);
        int size = this.mViews.size();
        for (int i = 0; i < size; i++) {
            ((View) this.mViews.get(i)).setLongClickable(this.mLongClickable.booleanValue());
        }
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.mClickListener = onClickListener;
        int size = this.mViews.size();
        for (int i = 0; i < size; i++) {
            ((View) this.mViews.get(i)).setOnClickListener(this.mClickListener);
        }
    }

    public void setOnHoverListener(OnHoverListener onHoverListener) {
        this.mOnHoverListener = onHoverListener;
        int size = this.mViews.size();
        for (int i = 0; i < size; i++) {
            ((View) this.mViews.get(i)).setOnHoverListener(this.mOnHoverListener);
        }
    }

    public void setOnLongClickListener(OnLongClickListener onLongClickListener) {
        this.mLongClickListener = onLongClickListener;
        int size = this.mViews.size();
        for (int i = 0; i < size; i++) {
            ((View) this.mViews.get(i)).setOnLongClickListener(this.mLongClickListener);
        }
    }

    public void setOnTouchListener(OnTouchListener onTouchListener) {
        this.mTouchListener = onTouchListener;
        int size = this.mViews.size();
        for (int i = 0; i < size; i++) {
            ((View) this.mViews.get(i)).setOnTouchListener(this.mTouchListener);
        }
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        int size = this.mViews.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((View) this.mViews.get(i5)).setPadding(i, i2, i3, i4);
        }
    }

    public void setVertical(boolean z) {
        this.mVertical = z;
        int size = this.mViews.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.mViews.get(i);
            if (view instanceof ButtonInterface) {
                ((ButtonInterface) view).setVertical(z);
            }
        }
    }

    public void setVisibility(int i) {
        if (this.mVisibility.intValue() != i) {
            this.mVisibility = Integer.valueOf(i);
            int size = this.mViews.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((View) this.mViews.get(i2)).setVisibility(this.mVisibility.intValue());
            }
        }
    }
}
