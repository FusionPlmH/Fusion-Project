package com.android.systemui.qs;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.ColorStateList;

import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;


import com.android.settingslib.Utils;
import com.android.systemui.BatteryMeterView;


import com.android.systemui.DualToneHandler;
import com.android.systemui.qs.panelcolor.PanelColorModel;
import com.android.systemui.statusbar.phone.StatusBarIconController;

import com.android.systemui.statusbar.policy.NetspeedView;
import com.android.systemui.statusbar.policy.QSClock;
import com.android.systemui.statusbar.salt.SaltDeviceInfo;
import com.android.systemui.statusbar.salt.SaltMainBattery;

import static com.android.settingslib.salt.SaltValues.Values17;

import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;

import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusbarMainBatterySize;



public class SecQuickStatusBarHeader extends RelativeLayout  {
    private BatteryMeterView mBatteryMeterView;
    private int mCameraPadding = 0;
    private int mCameraTopMargin = 0;
    private float mDefaultTextSize;
    private DisplayCutout mDisplayCutout;
    private boolean mExpanded;

    private View mHeaderServiceContainerView;

    private boolean mInflated = false;
    private boolean mIsCenterCutoutDevice = false;
    private boolean mListening;
    private boolean mQsDisabled;

    private View mQuickStatusBarAreaView;
    private QSClock mSmallClock;
    private QSClock mClockView;

    private SaltDeviceInfo mLeoDeviceInfo;
    private View mSystemIconsView;
    private SaltMainBattery mSaltMainBattery;

    public SecQuickStatusBarHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public static float getColorIntensity(int i) {
        return i == -1 ? 0.0f : 1.0f;
    }

    private int getRoundCornerSidePaddingWithDensity() {
        return 0;
    }

    private boolean isQsPanelBgColorDark(int i) {
        int i2 = (i >> 16) & 255;
        int i3 = (i >> 8) & 255;
        int i4 = i & 255;
        int sqrt = (int) Math.sqrt(((((double) (i2 * i2)) * 0.241d) + (((double) (i3 * i3)) * 0.691d)) + (((double) (i4 * i4)) * 0.068d));
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("isQsPanelBgColorDark bgColor = ");
        stringBuilder.append(String.format("%06X", new Object[]{Integer.valueOf(16777215 & i)}));
        stringBuilder.append(" brightnessValue = ");
        stringBuilder.append(sqrt);
        Log.d("SecQuickStatusBarHeader", stringBuilder.toString());
        return sqrt < 130;
    }



    public void updateSecQuickStatusBar() {
        LeoSysUiManages(mContext);
        mSaltMainBattery=findViewWithTag(Values17);
        mSaltMainBattery.updateSettings();
        int SIZE=setLeoStatusbarMainBatterySize;
        LinearLayout.LayoutParams params = (LinearLayout.LayoutParams) mSaltMainBattery.getLayoutParams();
        params.width =SIZE;
        params.height =SIZE;
        mSaltMainBattery.setLayoutParams(params);
        mBatteryRemainingIcon.updateSettings();

    }
    private StatusBarIconController.TintedIconManager mIconManager;

    private void updateLeoQSColor(int qSColoringColor3){
        boolean isQsPanelBgColorDark = isQsPanelBgColorDark(qSColoringColor3);
        mSaltMainBattery = (SaltMainBattery) findViewWithTag(Values17);
        if ( mSaltMainBattery != null) {
            mSaltMainBattery .setForceQsTintColor(true, isQsPanelBgColorDark ? 0.0f : 1.0f);
        }
    }


    Context  mContext;
    private NetspeedView mNetworkSpeedView;

    public void updateQSColoringResources(View view) {

    }
    private BatteryMeterView mBatteryRemainingIcon;

    public void refreshSaltQsClockDate() {
        QSClock  mClockView2=(QSClock)findViewWithTag("qs_header_clock_landscape");
        mClockView2.updateClock();
    }
    public void vf(){
        float f = 0.0f;
        boolean isQsPanelBgColorDark=false;
        NetspeedView netspeedView = this.mNetworkSpeedView;
        if (netspeedView != null) {
            if (!isQsPanelBgColorDark) {
                f = 1.0f;
            }
            netspeedView.setForceQsTintColor(true, f);
        }


        SaltMainBattery saltMainBattery =mSaltMainBattery;
        if (saltMainBattery != null) {
            if (!isQsPanelBgColorDark) {
                f = 1.0f;
            }
            saltMainBattery.setForceQsTintColor(true, f);
        }

    }
    private TextView mDateView;

    public void onPanelColorChanged(PanelColorModel panelColorModel) {
        QSClock qSClock = this.mClockView;
        if (qSClock != null) {
            qSClock.setTextColor(panelColorModel.ClockText);
        }
        TextView textView = this.mDateView;
        if (textView != null) {
            textView.setTextColor(panelColorModel.HeaderSettingsTint);
        }
        StatusBarIconController.TintedIconManager tintedIconManager = this.mIconManager;
        if (tintedIconManager != null) {
            tintedIconManager.setTint(panelColorModel.PanelIndicatorIconTint);
        }
        boolean isQsPanelBgColorDark = isQsPanelBgColorDark(panelColorModel.BasicBackground);
        BatteryMeterView batteryMeterView = this.mBatteryRemainingIcon;
        float f = 0.0f;
        if (batteryMeterView != null) {
            batteryMeterView.setForceShowPercent(true);
            this.mBatteryRemainingIcon.setForceQsTintColor(true, isQsPanelBgColorDark ? 0.0f : 1.0f);
        }
        NetspeedView netspeedView = this.mNetworkSpeedView;
        if (netspeedView != null) {
            if (!isQsPanelBgColorDark) {
                f = 1.0f;
            }
            netspeedView.setForceQsTintColor(true, f);
        }
        SaltMainBattery saltMainBattery =mSaltMainBattery;
        if (saltMainBattery != null) {
            if (!isQsPanelBgColorDark) {
                f = 1.0f;
            }
            saltMainBattery.setForceQsTintColor(true, f);
        }
    }
    protected QSTileHost mHost;
    private QSPanel mQsPanel;
    protected QuickQSPanel mHeaderQsPanel;
    private DualToneHandler mDualToneHandler;

    public void setupHost(QSTileHost qSTileHost) {
        this.mHost = qSTileHost;
        this.mHeaderQsPanel.setQSPanelAndHeader(mQsPanel, this);
        this.mHeaderQsPanel.setHost(qSTileHost, null);
        Rect rect = new Rect(0, 0, 0, 0);
        float colorIntensity = getColorIntensity(Utils.getColorAttrDefaultColor(getContext(), 16842800));
        int singleColor =mDualToneHandler.getSingleColor(colorIntensity);
        this.mBatteryRemainingIcon.onDarkChanged(rect, colorIntensity, singleColor);
        NetspeedView netspeedView = this.mNetworkSpeedView;
        if (netspeedView != null) {
            netspeedView.onDarkChanged(rect, colorIntensity, singleColor);
        }
        mSaltMainBattery.onDarkChanged(rect, colorIntensity, singleColor);
    }

    public void onWindowFocusChanged(boolean mBoolean) {
        refreshSaltQsClockDate();

    }


}
