package com.android.systemui.qs;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.support.annotation.VisibleForTesting;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.android.systemui.BatteryMeterView;
import com.android.systemui.Dependency;
import com.android.systemui.FontSizeUtils;
import com.android.systemui.Rune;
import com.android.systemui.coloring.QSColoringServiceManager;
import com.android.systemui.coloring.QSColoringServiceObject;

import com.android.systemui.statusbar.phone.StatusBarIconController.TintedIconManager;

import com.android.systemui.statusbar.policy.DateView;

import com.android.systemui.statusbar.policy.QSClock;
import com.android.systemui.statusbar.policy.QSClockBellTower;

import static com.android.fusionleo.global.LeoGlobalUtils.setLeoRomFonts;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockCustomEnabled;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockFont;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockSize;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockVisibility;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.*;


public class SecQuickStatusBarHeader extends RelativeLayout implements QSColoringServiceObject {
    private BatteryMeterView mBatteryMeterView;
    private int mCameraPadding = 0;
    private int mCameraTopMargin = 0;
    private float mDefaultTextSize;
    private DisplayCutout mDisplayCutout;
    private boolean mExpanded;
    protected QuickQSPanel mHeaderQsPanel;
    private View mHeaderServiceContainerView;
    private TintedIconManager mIconManager;
    private boolean mInflated = false;
    private boolean mIsCenterCutoutDevice = false;
    private boolean mListening;
    private boolean mQsDisabled;
    private QSPanel mQsPanel;
    private View mQuickStatusBarAreaView;
    private QSClock mSmallClock;
    private DateView mSmallDate;
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

    private void updateColors() {

    }
    public Context mContext;
    public void upLeoSmallClock() {
        LeoStatusSettings(mContext);
        int size;
        if(setLeoUesrHeaderQSClockCustomEnabled){
            size=setLeoUesrHeaderQSClockSize;
            mSmallClock.setVisibility(setLeoUesrHeaderQSClockVisibility ? GONE : VISIBLE);
            mSmallClock.setTypeface(setLeoRomFonts(0,setLeoUesrHeaderQSClockFont));
        }else{
            size=19;
            mSmallClock.setTypeface(Typeface.create("sec-roboto-light", Typeface.NORMAL));
        }
        mSmallClock.setTextSize(size);
    }
    public void onWindowFocusChanged(boolean mBoolean) {
        upLeoSmallClock();
    }
}
