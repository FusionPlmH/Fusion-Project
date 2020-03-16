package com.android.systemui.qs;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.drawable.GradientDrawable;
import android.provider.Settings.System;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.view.DisplayCutout;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

import com.android.leo.R;
import com.android.systemui.Dependency;
import com.android.systemui.Rune;

import com.android.systemui.coloring.QSColoringServiceManager;
import com.android.systemui.coloring.QSColoringServiceObject;



import com.android.systemui.statusbar.phone.PhoneStatusBarView;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener;

import static com.android.fusionleo.global.LeoGlobalUtils.LeoGradientDrawable;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoBasicColor;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoBlurWallpaper;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoWallpaper;
import static com.android.fusionleo.global.LeoGlobalValues.AUTHOR;
import static com.android.fusionleo.global.LeoGlobalValues.getCode;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoOS;
import static com.android.fusionleo.global.LeoGlobalValues.getOCodeN;
import static com.android.fusionleo.global.LeoGlobalValues.getOnema;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.*;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.*;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.mRedColor;


public class QSContainerImpl extends FrameLayout implements QSColoringServiceObject, ConfigurationListener {
    private View mBackground;
    private GradientDrawable mBackgroundDrawable;

    private int mBottomLeftRadius;
    private int mBottomRightRadius;
    private Configuration mConfiguration;
    private DisplayCutout mDisplayCutout;

    private int mExtendedAppBarHeight;
    private SecQuickStatusBarHeader mHeader;
    private int mHeaderBottomMargin;
    private int mHeaderIconsHeight;
    private int mHeightOverride = -1;
    private boolean mIsCenterCutoutDevice = false;
    private int mNaviBarHeight = 0;
    private int mNightModeMask;
    int mNotificationCount = 0;
    private int mOrientation = -1;
    int mPrimaryLabelColor = 0;
    private View mQSBigTimeContainer;


    private View mQSDetailHeaderContainer;
    private View mQSEmptyButtonsContainer;
    private View mQSHeaderButtonsContaier;
    private QSPanel mQSPanel;
    int mQSTileLabelColor = 0;
    private boolean mQsDisabled;
    private float mQsExpansion;
    private QuickQSPanel mQuickQSPanel;
    int mSecondaryTextColor = 0;
    private QSServiceBox mServiceBox;
    private int mSideMargins;
    private final Point mSizePoint = new Point();
    private int mSystemIconsHeight;
    private View mSystemIconsView;
    private int mTopLeftRadius;
    private int mTopRightRadius;
 public Context   mContext;
    public QSContainerImpl(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private int getDisplayHeight() {
        if (this.mSizePoint.y == 0) {
          //  getDisplay().getRealSize(this.mSizePoint);
        }
        return this.mSizePoint.y;
    }



    private void setMargins() {

        setMargins(this.mBackground);

      //  this.mHeader.setMargins(this.mSideMargins);
    }

    private void setMargins(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        layoutParams.rightMargin = this.mSideMargins;
        layoutParams.leftMargin = this.mSideMargins;
    }

    private void updateBackgroundRadius() {
        this.mTopLeftRadius = 0;
        this.mTopRightRadius = 0;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.fab_margin);
        this.mBottomRightRadius = dimensionPixelSize;
        this.mBottomLeftRadius = dimensionPixelSize;
    }

    private void updateColors() {
        QSColoringServiceManager qSColoringServiceManager = (QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class);
        if (qSColoringServiceManager != null) {

            int i = this.mQSTileLabelColor;
            int i2 = this.mPrimaryLabelColor;
            int i3 = this.mSecondaryTextColor;
            if (qSColoringServiceManager.isQSColoringEnabled()) {
                this.mPrimaryLabelColor = qSColoringServiceManager.getQSColoringColor(1);
                this.mSecondaryTextColor = qSColoringServiceManager.getQSColoringColor(3);
            } else {
                this.mQSTileLabelColor = mContext.getColor(R.color.colorPrimary);
                this.mPrimaryLabelColor =mContext.getColor(R.color.colorPrimary);
                this.mSecondaryTextColor =mContext.getColor(R.color.colorPrimary);
            }
          //  SimpleAsyncTask.getNewInstance().submit(new Runnable[]{new -$$Lambda$QSContainerImpl$7WdkZJ5-STZd3BTZpaT8Dl2T56w(this, i, i2, i3)});
            setLeoQSbg();
        }
    }
    public void onWindowFocusChanged(boolean mBoolean) {
        setLeoQSbg();

    }
    private void updateResources() {
        int i = getContext().getResources().getConfiguration().orientation == 2 ? 1 : 0;

    }


    public void setLeoQSbg(){
        LeoStatusSettings(mContext);




    }

    protected int calculateContainerHeight() {

        return 0;
    }

    public void disable(int i, int i2, boolean z) {
        int i3 = 0;
        boolean z2 = (i2 & 1) != 0;
        if (z2 != this.mQsDisabled) {
            this.mQsDisabled = z2;
            if (this.mServiceBox != null) {
                this.mServiceBox.setVisibility(this.mQsDisabled ? 8 : 0);
            }
            if (this.mBackground != null) {
                View view = this.mBackground;
                if (this.mQsDisabled) {
                    i3 = 8;
                }
                view.setVisibility(i3);
            }
        }
    }

    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        this.mNaviBarHeight = windowInsets.getStableInsetBottom();
        DisplayCutout displayCutout = windowInsets.getDisplayCutout();


        return super.onApplyWindowInsets(windowInsets);
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateResources();
        updateColors();
        ((ConfigurationController) Dependency.get(ConfigurationController.class)).addCallback(this);

    }

    public void onConfigChanged(Configuration configuration) {
        QSColoringServiceManager qSColoringServiceManager = (QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class);
        if (qSColoringServiceManager == null || !qSColoringServiceManager.isQSColoringEnabled()) {
            int i = configuration.uiMode & 48;
            if (i != this.mNightModeMask) {
                Log.d("QSContainer", "night mode changed");
                this.mNightModeMask = i;
                updateColors();
                if (this.mQSPanel != null) {

                }
                if (this.mQuickQSPanel != null) {
                    this.mQuickQSPanel.onColorChanged(configuration);
                }
                if (this.mServiceBox != null) {
                    this.mServiceBox.onColorChanged(configuration);
                }

            }
        }
    }

    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mSizePoint.set(0, 0);
        if ((this.mConfiguration.diff(configuration) & 128) != 0) {
            updateBackgroundRadius();
            if (this.mOrientation != configuration.orientation) {
                updateResources();
                this.mOrientation = configuration.orientation;
            }
            this.mConfiguration.updateFrom(configuration);
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((ConfigurationController) Dependency.get(ConfigurationController.class)).removeCallback(this);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();

        updateBackgroundRadius();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateExpansion();
    }

    protected void onMeasure(int i, int i2) {

    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public boolean performClick() {
        return true;
    }



    public void setExpansion(float f) {
        this.mQsExpansion = f;

        updateExpansion();
    }

    public void setHeightOverride(int i) {
        this.mHeightOverride = i;
        updateExpansion();
    }

    public void updateExpansion() {

    }

}
