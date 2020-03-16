package com.android.systemui.qs;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.ColorStateList;

import android.graphics.PorterDuff;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;


import com.android.systemui.BatteryMeterView;
import com.android.systemui.Dependency;

import com.android.systemui.coloring.QSColoringServiceManager;
import com.android.systemui.coloring.QSColoringServiceObject;

import com.android.systemui.statusbar.phone.StatusBarIconController;
import com.android.systemui.statusbar.policy.DateView;
import com.android.systemui.statusbar.policy.NetspeedView;
import com.android.systemui.statusbar.policy.QSClock;
import com.android.systemui.statusbar.salt.SaltDeviceInfo;
import com.android.systemui.statusbar.salt.SaltMainBattery;
import com.salt.config.R;

import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoUri;
import static com.android.settingslib.salt.SaltConfigFrame.getLeoColor;
import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;
import static com.android.settingslib.salt.SaltValues.Values11;
import static com.android.settingslib.salt.SaltValues.Values17;
import static com.android.settingslib.salt.SaltValues.Values18;
import static com.android.settingslib.salt.SaltValues.Values7;
import static com.android.settingslib.salt.SaltValues.mDarkModeFillColor;
import static com.android.settingslib.salt.SaltValues.mLightModeFillColor;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.mLeoQSHeadsClock;
import static com.android.settingslib.salt.utils.LeoManages.mLeoStatusBarMainBattery;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusbarMainBatterySize;
import static com.android.settingslib.salt.utils.LeoManages.setLeoUesrStatusbarNetworkEnabled;


public class SecQuickStatusBarHeader extends RelativeLayout implements QSColoringServiceObject {
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
    private DateView mSmallDate;
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
        mBatteryMeterView.updateSettings();

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

    public void updateQSColoringResources(View view) {
        if (((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).isQSColoringEnabled()) {
            int qSColoringColor = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(1);
            int qSColoringColor2 = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(0);
            if (this.mSmallClock != null) {
                this.mSmallClock.setTextColor(qSColoringColor);
            }
            if (this.mSmallDate != null) {
                this.mSmallDate.setTextColor(qSColoringColor);
            }
            TextView textView = (TextView) findViewById(3);
            if (textView != null) {
                textView.setTextColor(qSColoringColor);
            }
            int qSColoringColor3 = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(31);
         this.mIconManager.setTint(qSColoringColor3);
            updateLeoQSColor(qSColoringColor3);
            boolean isQsPanelBgColorDark = isQsPanelBgColorDark(qSColoringColor3);
            this.mBatteryMeterView = (BatteryMeterView) findViewById(1);
            float f = 1.0f;
            if (this.mBatteryMeterView != null) {
                this.mBatteryMeterView.setForceShowPercent(true);
                this.mBatteryMeterView.setForceQsTintColor(true, isQsPanelBgColorDark ? 0.0f : 1.0f);
            }
            boolean isQsPanelBgColorDark2 = isQsPanelBgColorDark(qSColoringColor2);
            NetspeedView netspeedView = (NetspeedView) findViewById(2);
            if (netspeedView != null) {
                if (isQsPanelBgColorDark2) {
                    f = 0.0f;
                }
                netspeedView.setForceQsTintColor(true, f);
            }
            //updateLeoQSColoring();
            return;
        }

    }



    public void onWindowFocusChanged(boolean mBoolean) {
        updateSecQuickStatusBar();

    }


}
