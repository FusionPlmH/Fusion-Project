package com.android.systemui.qs.bar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.android.systemui.qs.QSPanel;

import com.android.systemui.statusbar.phone.StatusBar;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class QSBarItem extends LinearLayout {
    public final String TAG = ("Bar." + getClass().getSimpleName());
    protected View mBarItemView;
    private String mBarName;
    protected Callback mCallback;
    private boolean mIsOnTop;
    protected StatusBar mStatusBar;


    public interface Callback {
        void applyBarOnTopList(String str, boolean z);

        QSPanel getQSPanel();

        void onHeightChanged();
    }

    public abstract void destroy();

    public abstract int getBarHeight();

    public QSBarItem(Context context) {
        super(context);
    }

    public void setBarName(String barName) {
        this.mBarName = barName;
    }

    public String getBarName() {
        return this.mBarName;
    }

    public void setBarOnTop(boolean isOnTop) {
        this.mIsOnTop = isOnTop;
    }

    public boolean isOnTop() {
        return this.mIsOnTop;
    }

    //public TouchAnimator getAnimator() {
      //  return null;
   // }

    public void setPosition(float expansionFraction) {
     //   if (getAnimator() != null) {
        //    getAnimator().setPosition(expansionFraction);
       // }
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public void setStatusBar(StatusBar statusBar) {
        this.mStatusBar = statusBar;
    }

    public void onQsClosed() {
    }

    public void onExpandingFinished(float mExpandedHeight) {
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
    }

    public void onFragmentCreated() {
    }

    public void onEmergencyModeChanged() {
    }

    public void onShowingDetail(boolean showDetail) {
    }

    public boolean isAvailable() {
        return true;
    }
}
