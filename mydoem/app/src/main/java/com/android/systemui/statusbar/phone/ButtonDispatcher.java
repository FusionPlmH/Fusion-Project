package com.android.systemui.statusbar.phone;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import com.android.systemui.plugins.statusbar.phone.NavBarButtonProvider.ButtonInterface;
import com.android.systemui.statusbar.policy.KeyButtonDrawable;
import java.util.ArrayList;

public class ButtonDispatcher {
    private Integer mAlpha;
    private OnClickListener mClickListener;
    private View mCurrentView;
    private Float mDarkIntensity;
    private final int mId;
    private KeyButtonDrawable mImageDrawable;
    private OnLongClickListener mLongClickListener;
    private Boolean mLongClickable;
    private OnTouchListener mTouchListener;
    private boolean mVertical;
    private final ArrayList<View> mViews = new ArrayList();
    private Integer mVisibility = Integer.valueOf(-1);

    public ButtonDispatcher(int id) {
        this.mId = id;
    }

    void clear() {
        this.mViews.clear();
    }

    public void addView(View view) {
        this.mViews.add(view);
        view.setOnClickListener(this.mClickListener);
        view.setOnTouchListener(this.mTouchListener);
        view.setOnLongClickListener(this.mLongClickListener);
        if (this.mLongClickable != null) {
            view.setLongClickable(this.mLongClickable.booleanValue());
        }
        if (this.mAlpha != null) {
            view.setAlpha((float) this.mAlpha.intValue());
        }
        if (this.mDarkIntensity != null) {
            ((ButtonInterface) view).setDarkIntensity(this.mDarkIntensity.floatValue());
        }
        if (this.mVisibility != null) {
            view.setVisibility(this.mVisibility.intValue());
        }
        if (this.mImageDrawable != null) {
            ((ButtonInterface) view).setImageDrawable(this.mImageDrawable);
        }
        if (view instanceof ButtonInterface) {
            ((ButtonInterface) view).setVertical(this.mVertical);
        }
    }

    public int getId() {
        return this.mId;
    }

    public int getVisibility() {
        return this.mVisibility != null ? this.mVisibility.intValue() : 0;
    }

    public float getAlpha() {
        return (float) (this.mAlpha != null ? this.mAlpha.intValue() : 1);
    }

    public void setImageDrawable(KeyButtonDrawable drawable) {
        this.mImageDrawable = drawable;
        int N = this.mViews.size();
        for (int i = 0; i < N; i++) {
            ((ButtonInterface) this.mViews.get(i)).setImageDrawable(this.mImageDrawable);
        }
    }

    public void setVisibility(int visibility) {
        if (this.mVisibility.intValue() != visibility) {
            this.mVisibility = Integer.valueOf(visibility);
            int N = this.mViews.size();
            for (int i = 0; i < N; i++) {
                ((View) this.mViews.get(i)).setVisibility(this.mVisibility.intValue());
            }
        }
    }

    public void abortCurrentGesture() {
        int N = this.mViews.size();
        for (int i = 0; i < N; i++) {
            ((ButtonInterface) this.mViews.get(i)).abortCurrentGesture();
        }
    }

    public void setAlpha(int alpha) {
        this.mAlpha = Integer.valueOf(alpha);
        int N = this.mViews.size();
        for (int i = 0; i < N; i++) {
            ((View) this.mViews.get(i)).setAlpha((float) alpha);
        }
    }

    public void setDarkIntensity(float darkIntensity) {
        this.mDarkIntensity = Float.valueOf(darkIntensity);
        int N = this.mViews.size();
        for (int i = 0; i < N; i++) {
            ((ButtonInterface) this.mViews.get(i)).setDarkIntensity(darkIntensity);
        }
    }

    public void setOnClickListener(OnClickListener clickListener) {
        this.mClickListener = clickListener;
        int N = this.mViews.size();
        for (int i = 0; i < N; i++) {
            ((View) this.mViews.get(i)).setOnClickListener(this.mClickListener);
        }
    }

    public void setOnTouchListener(OnTouchListener touchListener) {
        this.mTouchListener = touchListener;
        int N = this.mViews.size();
        for (int i = 0; i < N; i++) {
            ((View) this.mViews.get(i)).setOnTouchListener(this.mTouchListener);
        }
    }

    public void setLongClickable(boolean isLongClickable) {
        this.mLongClickable = Boolean.valueOf(isLongClickable);
        int N = this.mViews.size();
        for (int i = 0; i < N; i++) {
            ((View) this.mViews.get(i)).setLongClickable(this.mLongClickable.booleanValue());
        }
    }

    public void setOnLongClickListener(OnLongClickListener longClickListener) {
        this.mLongClickListener = longClickListener;
        int N = this.mViews.size();
        for (int i = 0; i < N; i++) {
            ((View) this.mViews.get(i)).setOnLongClickListener(this.mLongClickListener);
        }
    }

    public View getCurrentView() {
        return this.mCurrentView;
    }

    public void setCurrentView(View currentView) {
        this.mCurrentView = currentView.findViewById(this.mId);
    }

    public void setCarMode(boolean carMode) {
        int N = this.mViews.size();
        for (int i = 0; i < N; i++) {
            View view = (View) this.mViews.get(i);
            if (view instanceof ButtonInterface) {
                ((ButtonInterface) view).setCarMode(carMode);
            }
        }
    }

    public void setVertical(boolean vertical) {
        this.mVertical = vertical;
        int N = this.mViews.size();
        for (int i = 0; i < N; i++) {
            View view = (View) this.mViews.get(i);
            if (view instanceof ButtonInterface) {
                ((ButtonInterface) view).setVertical(vertical);
            }
        }
    }

    public void setPadding(int left, int top, int right, int bottom) {
        int N = this.mViews.size();
        for (int i = 0; i < N; i++) {
            ((View) this.mViews.get(i)).setPadding(left, top, right, bottom);
        }
    }

    public void setAnimationImageDrawable(KeyButtonDrawable drawable) {
        this.mImageDrawable = drawable;
        int N = this.mViews.size();
        for (int i = 0; i < N; i++) {
            ((ButtonInterface) this.mViews.get(i)).setImageDrawable(this.mImageDrawable);
            setDarkIntensity(this.mDarkIntensity.floatValue());
        }
    }

}
