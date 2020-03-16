package com.android.systemui.plugins.qs;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;



public interface QS  {
    public static final String ACTION = "com.android.systemui.action.PLUGIN_QS";
    public static final String TAG = "QS";
    public static final int VERSION = 6;


    public interface HeightListener {
        public static final int VERSION = 1;

        void onQsHeightChanged();
    }

    void animateHeaderSlidingIn(long j);

    void animateHeaderSlidingOut();

    void closeDetail();

    int getDesiredHeight();

    View getHeader();

    int getQsMinExpansionHeight();

    void hideImmediately();

    boolean isCustomizing();

    boolean isShowingDetail();

    void notifyCustomizeChanged();

    default boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return isCustomizing();
    }

    void setContainer(ViewGroup viewGroup);

    void setExpandClickListener(OnClickListener onClickListener);

    void setExpanded(boolean z);

    default void setHasNotifications(boolean z) {
    }

    void setHeaderClickable(boolean z);

    void setHeaderListening(boolean z);

    void setHeightOverride(int i);

    void setKeyguardShowing(boolean z);

    void setListening(boolean z);

    void setOverscrolling(boolean z);

    void setPanelView(HeightListener heightListener);

    void setQsExpansion(float f, float f2);
}
