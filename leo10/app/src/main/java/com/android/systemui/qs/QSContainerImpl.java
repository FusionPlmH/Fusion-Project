package com.android.systemui.qs;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.provider.Settings.System;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.android.systemui.Dependency;
import com.android.systemui.Rune;
import com.android.systemui.bar.BarController;

import com.android.systemui.coloring.QSColoringServiceManager;
import com.android.systemui.coloring.QSColoringServiceObject;

import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.util.DeviceState;


public class QSContainerImpl extends FrameLayout implements QSColoringServiceObject, ConfigurationListener {
    private View mBackground;
    private GradientDrawable mBackgroundDrawable;
    private BarController mBarController;
    private int mBottomLeftRadius;
    private int mBottomRightRadius;
    private Configuration mConfiguration;
    private DisplayCutout mDisplayCutout;
    //private NotificationEntryManager mEntryManager = ((NotificationEntryManager) Dependency.get(NotificationEntryManager.class));
    private int mExtendedAppBarHeight;
    private SecQuickStatusBarHeader mHeader;
    private int mHeaderBottomMargin;
    private int mHeaderIconsHeight;
    private int mHeightOverride = -1;
    private int mNaviBarHeight = 0;
    private int mNaviGestureHintHeight;
    private int mNightModeMask;
    int mNotificationCount = 0;
    private int mOrientation = -1;
    int mPrimaryLabelColor = 0;
    private View mQSBigTimeContainer;
  //  private SecQSCustomizer mQSCustomizer;
  //  private QSDetail mQSDetail;
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

    public QSContainerImpl(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private int getDisplayHeight() {
        boolean z;
        boolean z2 = false;
        if (this.mOrientation == -1) {

            z = z2;
        } else {
            z = this.mOrientation != 2;
        }
        return getDisplayHeight(z);
    }

    private int getDisplayHeight(boolean z) {
        if (this.mSizePoint.y == 0) {
            Point point = new Point();
            if (getDisplay() != null) {
                getDisplay().getRealSize(point);
            }
            if (z) {
                this.mSizePoint.y = Math.max(point.x, point.y);
            } else {
                this.mSizePoint.y = Math.min(point.x, point.y);
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("getDisplayHeight portrait? ");
            stringBuilder.append(z);
            stringBuilder.append("  mSizePoint.y= ");
            stringBuilder.append(this.mSizePoint.y);
            Log.d("QSContainerImpl", stringBuilder.toString());
        }
        return this.mSizePoint.y;
    }



    private void setMargins() {

    }

    private void setMargins(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        layoutParams.rightMargin = this.mSideMargins;
        layoutParams.leftMargin = this.mSideMargins;
    }

    private void updateBackgroundRadius() {
        this.mTopLeftRadius = 0;
        this.mTopRightRadius = 0;

    }

    private void updateColors() {
        QSColoringServiceManager qSColoringServiceManager = (QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class);
        if (qSColoringServiceManager != null) {
            int qSColoringBackgroundColor;
            int i = this.mQSTileLabelColor;
            int i2 = this.mPrimaryLabelColor;
            int i3 = this.mSecondaryTextColor;
            if (qSColoringServiceManager.isQSColoringEnabled()) {
                this.mPrimaryLabelColor = qSColoringServiceManager.getQSColoringColor(1);
                this.mSecondaryTextColor = qSColoringServiceManager.getQSColoringColor(3);
            } else {

            }

            this.mBackgroundDrawable = new GradientDrawable();
            if (qSColoringServiceManager.isQSColoringEnabled()) {
                qSColoringBackgroundColor = qSColoringServiceManager.getQSColoringBackgroundColor();
                if (qSColoringServiceManager.getQSColoringBackgroundAlpha() < 255) {
                    this.mBackground.setElevation(0.0f);
                }
            } else {

            }

            this.mBackground.setBackground(this.mBackgroundDrawable);
        }
    }

    /* access modifiers changed from: protected */
    public int calculateContainerHeight() {
        int measuredHeight = this.mHeightOverride != -1 ? this.mHeightOverride : getMeasuredHeight();
        int height = this.mHeader.getHeight();
        if (this.mBarController != null) {
            height += this.mBarController.getQSBarsTranslation();
        }

        return measuredHeight;
    }

    public void disable(int i, int i2, boolean z) {
        int i3 = 0;
        boolean z2 = (i2 & 1) != 0;
        if (z2 != this.mQsDisabled) {
            this.mQsDisabled = z2;
            if (this.mServiceBox != null) {

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

    @RequiresApi(api = Build.VERSION_CODES.P)
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        this.mNaviBarHeight = Math.max(windowInsets.getStableInsetBottom(), this.mNaviGestureHintHeight);
        DisplayCutout displayCutout = windowInsets.getDisplayCutout();
        if (displayCutout != this.mDisplayCutout) {
            this.mDisplayCutout = displayCutout;
            updateResources();
        }
        return super.onApplyWindowInsets(windowInsets);
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateResources();
        updateColors();

    }

    public void onConfigChanged(Configuration configuration) {

    }

    /* access modifiers changed from: protected */
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mSizePoint.set(0, 0);
        if ((this.mConfiguration.diff(configuration) & 128) != 0) {
            updateBackgroundRadius();
            if (this.mOrientation != configuration.orientation) {
                this.mOrientation = configuration.orientation;
                updateResources();
            }
            this.mConfiguration.updateFrom(configuration);
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((ConfigurationController) Dependency.get(ConfigurationController.class)).removeCallback(this);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();

    }
    public SecQuickStatusBarHeader getSecHeader() {
        return this.mHeader;
    }


    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateExpansion();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {

    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public boolean performClick() {
        return true;
    }

    public void setBarController(BarController barController) {
        this.mBarController = barController;

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
        int calculateContainerHeight = calculateContainerHeight();
        setBottom(getTop() + calculateContainerHeight);
        this.mBackground.setTop(0);

        //this.mBackgroundDrawable.setCornerRadii(new float[]{(float) this.mTopLeftRadius, (float) this.mTopLeftRadius, (float) this.mTopRightRadius, (float) this.mTopRightRadius, ((float) this.mBottomLeftRadius) * f2, ((float) this.mBottomLeftRadius) * f2, ((float) this.mBottomRightRadius) * f2, ((float) this.mBottomRightRadius) * f2});
    }

    public void updateResources() {
        int i = 1;
        int i2 = getContext().getResources().getConfiguration().orientation == 2 ? 1 : 0;
        LayoutParams layoutParams = (LayoutParams) this.mServiceBox.getLayoutParams();
        this.mSystemIconsHeight = 0;

        this.mServiceBox.setLayoutParams(layoutParams);
    }
}
