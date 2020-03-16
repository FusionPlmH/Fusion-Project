package com.android.systemui.globalactions;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemProperties;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ScrollView;



import java.io.File;


import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarBatteryBarColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherDoubleTapVibrator;

import static com.os.leo.utils.LeoUtils.getLeoUri;

public class GlobalActionsFrameLayout extends LinearLayout {
    private LinearLayout mBgLayout = null;
    private LinearLayout mBgLayoutLand = null;
    private LinearLayout mBottomlayout = null;
    private LinearLayout mForceRestartlayout = null;
    private HorizontalScrollView mHSView = null;
    private boolean mIsGraceR = SystemProperties.get("ro.product.name").contains("gracer");
    private Runnable mNotifyConfigChangeCallback;
    private ScrollView mSView = null;
    private boolean mShowNavigationBar ;

   Context mContext;

    public GlobalActionsFrameLayout(Context context, Runnable runnable, boolean z, boolean z2) {

        super(context);
        View inflate;
        this.mNotifyConfigChangeCallback = runnable;
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        if (z) {
            inflate = layoutInflater.inflate(17367146, null);
        } else {
            inflate = (this.mIsGraceR && z2) ? layoutInflater.inflate(17367145, null) : layoutInflater.inflate(17367144, null);
            this.mHSView = (HorizontalScrollView) inflate.findViewById(16909013);
            this.mBgLayoutLand = (LinearLayout) inflate.findViewById(16909006);
            this.mForceRestartlayout = (LinearLayout) inflate.findViewById(16909012);
            mShowNavigationBar =false;
            this.mBottomlayout = (LinearLayout) inflate.findViewById(16909007);
        }
        this.mSView = (ScrollView) inflate.findViewById(16909018);
        this.mBgLayout = (LinearLayout) inflate.findViewById(16909005);
        addView(inflate);
    }

    public void ShowNavigationBar() {
        LeoSettings(mContext);
        if (setLeoUesrLauncherDoubleTapVibrator == 1) {

        }

    }
    public void hideAllView(View selectedView, boolean isPort) {
        LinearLayout bgLayout = isPort ? this.mBgLayout : this.mBgLayoutLand;
        int count = bgLayout.getChildCount();
        for (int i = 0; i < count; i++) {
            final View child = bgLayout.getChildAt(i);
            if (!child.equals(selectedView)) {
                View tempView = child;
                View imageFrameLayout = child.findViewById(16909014);
                imageFrameLayout.setClickable(false);
                imageFrameLayout.setFocusable(false);
                child.animate().alpha(0.0f).setDuration(200).withEndAction(new Runnable() {
                    public void run() {
                        child.setVisibility(4);
                    }
                }).start();
            }
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        relayoutByOrientation(mContext.getResources().getConfiguration().orientation == 1);
    }

    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        relayoutByOrientation(newConfig.orientation == 1);
        this.mNotifyConfigChangeCallback.run();
    }

    private void relayoutByOrientation(boolean isPort) {
        if (this.mSView != null) {
            if (isPort) {
                this.mSView.setVisibility(0);
            } else {
                this.mSView.setVisibility(4);
            }
        }
        if (this.mHSView != null) {
            if (isPort) {
                this.mHSView.setVisibility(4);
            } else {
                this.mHSView.setVisibility(0);
            }
        }
        Resources r = mContext.getResources();
        int forceRestartViewHeight = r.getDimensionPixelSize(17105731);
        LayoutParams forceRestartParams = new LayoutParams(-1, forceRestartViewHeight);
        int forceRestartViewMargins = r.getDimensionPixelSize(17105732);
        forceRestartParams.setMargins(forceRestartViewMargins, 0, forceRestartViewMargins, 0);
        if (false) {
            int naviBarHeight = r.getDimensionPixelSize(17105233);
            if (this.mBottomlayout != null && this.mBottomlayout.getVisibility() == 0) {
                LayoutParams lparams = new LayoutParams(-1, (int) (((double) r.getDimensionPixelSize(17105755)) * 1.5d));
                if (isPort) {
                    lparams.setMargins(0, 0, 0, naviBarHeight);
                } else {
                    lparams.setMargins(0, 0, 0, 0);
                }
                this.mBottomlayout.setLayoutParams(lparams);
                this.mForceRestartlayout.setPadding(0, 0, 0, 0);
            } else if (this.mForceRestartlayout != null) {
                if (isPort) {
                    this.mForceRestartlayout.setPadding(0, 0, 0, naviBarHeight);
                    forceRestartParams.height = naviBarHeight + forceRestartViewHeight;
                } else {
                    this.mForceRestartlayout.setPadding(0, 0, 0, 0);
                }
            }
        }
        if (this.mForceRestartlayout != null) {
            this.mForceRestartlayout.setLayoutParams(forceRestartParams);
        }
    }

}
