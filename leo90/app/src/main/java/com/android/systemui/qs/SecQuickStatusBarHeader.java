package com.android.systemui.qs;

import android.content.Context;

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

import com.android.systemui.fusionleo.LeoDeviceInformation;
import com.android.systemui.fusionleo.LeoMainBattery;
import com.android.systemui.statusbar.phone.StatusBarIconController.TintedIconManager;
import com.android.systemui.statusbar.policy.DateView;
import com.android.systemui.statusbar.policy.NetspeedView;
import com.android.systemui.statusbar.policy.QSClock;

import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoColor;
import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;
import static com.fusionleo.LeoProvider.LeoManages.getLeoUIResource;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarNetworkState;


public class SecQuickStatusBarHeader extends RelativeLayout implements QSColoringServiceObject {
    private BatteryMeterView mBatteryMeterView;
    private int mCameraPadding = 0;
    private int mCameraTopMargin = 0;
    private float mDefaultTextSize;
    private DisplayCutout mDisplayCutout;
    private boolean mExpanded;

    private View mHeaderServiceContainerView;
    private TintedIconManager mIconManager;
    private boolean mInflated = false;
    private boolean mIsCenterCutoutDevice = false;
    private boolean mListening;
    private boolean mQsDisabled;

    private View mQuickStatusBarAreaView;
    private QSClock mSmallClock;
    private DateView mSmallDate;
    private LeoDeviceInformation mLeoDeviceInfo;
    private View mSystemIconsView;


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
        LeoSysUiManages(this.mContext);
        NetspeedView netspeedView = (NetspeedView) findViewById(getLeoUIResource("id/networkSpeed"));
        int i = setLeoUesrStatusbarNetworkState;
        if (i > 0) {
            netspeedView.setVisibility(8);
        } else if (i == 0) {
            netspeedView.setVisibility(0);
        }


        mLeoDeviceInfo= findViewWithTag("leo_qs_device_info_view");
        mLeoDeviceInfo.setFocusable(true);
        mLeoDeviceInfo.updateQSDeviceInfo();
    }
    public void setViewSize(ImageView icon, int width, int height) {
        LinearLayout.LayoutParams params = (LinearLayout.LayoutParams) icon.getLayoutParams();
        params.width = width;
        params.height = height;
        icon.setLayoutParams(params);
    }
    private void updateColors() {
        if (((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).isQSColoringEnabled()) {
            updateQSColoringResources(null);
            return;
        }


        updateLeoDeviceInfoColors(getLeoColor("status_bar_date_clock_color"));


    }
    Context  mContext;
    public void updateLeoBatteryColors(boolean isQsPanelBgColorDark) {

        LeoMainBattery  mLeoBattery= (LeoMainBattery) findViewWithTag("leo_qs_battery_view");
        if (mLeoBattery!= null){
            mLeoBattery.setForceQsTintColor(true, isQsPanelBgColorDark ? 0.0f : 1.0f);
        }
    }
    public void updateLeoDeviceInfoColors(int qSColoringColor) {

        if (mLeoDeviceInfo != null) {
            mLeoDeviceInfo.setTextColor(qSColoringColor);
            mLeoDeviceInfo.setAlpha(0.7f);
        }
    }
    public void updateQSColoringResources(View view) {
        if (((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).isQSColoringEnabled()) {
            int qSColoringColor = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(1);
            int qSColoringColor2 = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(0);
            updateLeoDeviceInfoColors(qSColoringColor2);
            if (this.mSmallClock != null) {
                this.mSmallClock.setTextColor(qSColoringColor);
            }
            if (this.mSmallDate != null) {
                this.mSmallDate.setTextColor(qSColoringColor);
            }
            TextView textView = (TextView) findViewById(0);
            if (textView != null) {
                textView.setTextColor(qSColoringColor);
            }
            int qSColoringColor3 = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(31);
          //  this.mIconManager.setTint(qSColoringColor3);
            boolean isQsPanelBgColorDark = isQsPanelBgColorDark(qSColoringColor3);
            updateLeoBatteryColors(isQsPanelBgColorDark);
            this.mBatteryMeterView = (BatteryMeterView) findViewById(0);
            float f = 1.0f;
            if (this.mBatteryMeterView != null) {
                this.mBatteryMeterView.setForceShowPercent(true);
                this.mBatteryMeterView.setForceQsTintColor(true, isQsPanelBgColorDark ? 0.0f : 1.0f);
            }
            boolean isQsPanelBgColorDark2 = isQsPanelBgColorDark(qSColoringColor2);
            NetspeedView netspeedView = (NetspeedView) findViewById(0);
            if (netspeedView != null) {
                if (isQsPanelBgColorDark2) {
                    f = 0.0f;
                }
              //  netspeedView.setForceQsTintColor(true, f);
            }
            return;
        }
        updateColors();
    }


    public void onWindowFocusChanged(boolean mBoolean) {
        updateSecQuickStatusBar();

    }




}
