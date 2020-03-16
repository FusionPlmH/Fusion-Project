package com.android.systemui.qs.bar;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.os.Build;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.android.systemui.Rune;
import com.android.systemui.qs.DataUsageView;
import com.android.systemui.qs.bar.BarItem.Callback;
import com.android.systemui.qs.panelcolor.PanelColorModel;
import com.android.systemui.util.DeviceState;

import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;
import static com.android.settingslib.salt.SaltValues.Values20;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSDataUsageColor;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSDataUsageColorEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSDataUsageFont;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSDataUsageOrientation;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSDataUsageSize;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQsDataUsageBarEnabled;

public class DataUsageBar extends BarItemImpl {
    /* access modifiers changed from: private|static|final */
    public static final boolean DEBUG=false;
    private static final String TAG = "DataUsageBar";
    private Context mContext = null;

    public DataUsageView mDataUsageView = null;
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (DataUsageBar.DEBUG) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("onReceive: ");
                stringBuilder.append(action);
                Log.d(DataUsageBar.TAG, stringBuilder.toString());
            }
            ViewGroup viewGroup;
            if ("android.intent.action.SIM_STATE_CHANGED".equals(action)) {
                DataUsageBar.this.updateVisibility();
            } else if ("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED".equals(action)) {
                DataUsageBar.this.mDataUsageView.updateCurrentDataSubId();
                viewGroup = DataUsageBar.this.mBarRootView;
                if (viewGroup != null && viewGroup.getVisibility() == 0) {
                    DataUsageBar.this.mDataUsageView.updateUsageInfo();
                }
            } else if ("com.samsung.systemui.statusbar.ANIMATING".equals(action)) {
                viewGroup = DataUsageBar.this.mBarRootView;
                if (viewGroup != null && viewGroup.getVisibility() == 0) {
                    DataUsageBar.this.mDataUsageView.updateUsageInfo();
                }
            }
        }
    };

    static {
        boolean z = ("eng".equals(Build.TYPE) || Log.isLoggable(TAG, 3)) ? true : DEBUG;

    }

    public DataUsageBar(Context context) {
        super(context);
        this.mContext = context;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SIM_STATE_CHANGED");
        intentFilter.addAction("com.samsung.systemui.statusbar.ANIMATING");
        intentFilter.addAction("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED");
        this.mContext.registerReceiver(this.mReceiver, intentFilter);
    }

    private boolean getBarVisibility() {
        if (setLeoQsDataUsageBarEnabled) {
            int activeSimCount = DeviceState.getActiveSimCount(this.mContext);
            if (DEBUG) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("getBarVisibility activeSimCount:");
                stringBuilder.append(activeSimCount);
                Log.d(str, stringBuilder.toString());
            }
            if (activeSimCount > 0) {
                return true;
            }
        }
        return DEBUG;
    }


    private void updateVisibility() {
        ViewGroup viewGroup = this.mBarRootView;
        if (viewGroup != null) {
            viewGroup.setVisibility(getBarVisibility() ? 0 : 8);
        }
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onBarHeightChanged();
        }
    }

    public void destroy() {
        super.destroy();
        this.mContext.unregisterReceiver(this.mReceiver);
    }

    public int getBarHeight() {
        return 0;
    }

    public View inflateViews(ViewGroup viewGroup) {
     //   this.mBarRootView = (ViewGroup) LayoutInflater.from(this.mContext).inflate(0, DEBUG);
        this.mDataUsageView = (DataUsageView) this.mBarRootView.findViewById(0);
        updateVisibility();
        updateDataUsageBar();
        return this.mBarRootView;
    }

    public boolean isAvailable() {
        return true;
    }

    @Override
    public void refreshQsBar() {
        updateVisibility();
        updateDataUsageBar();
    }
    public void updateDataUsageBar() {
        LeoSysUiManages(mContext);
        if (this.mDataUsageView != null) {
            DataUsageView dataUsageView=mDataUsageView;

            int style;
            int DataUsagePosition=setLeoQSDataUsageOrientation;
            switch (DataUsagePosition) {
                case 1:
                    style=8388611;
                    break;
                case 2:
                    style= 17;
                    break;
                default:
                    style= 8388613;
                    break;
            } int color;
            int DataUsagesize=setLeoQSDataUsageSize;
            int  UesrDataUsageFont=setLeoQSDataUsageFont;
            dataUsageView.setTextSize(DataUsagesize);
            dataUsageView.setTypeface(setLeoTextFont(mContext,UesrDataUsageFont,"sec-roboto-condensed", Typeface.NORMAL));;
            dataUsageView.setGravity((style | 16) | 1);
            if(setLeoQSDataUsageColorEnabled){
                color=setLeoQSDataUsageColor;
            }else {
                color=mContext.getColor(getLeoUIResource("color/qs_tile_text"));;
            }
            this.mDataUsageView.setTextColor(color);
        }
        getBarVisibility();


    }
    public void onPanelColorChanged(PanelColorModel panelColorModel) {
        int color;
        LeoSysUiManages(mContext);
        if(setLeoQSDataUsageColorEnabled){
            color=setLeoQSDataUsageColor;
        }else {
            color=panelColorModel.HeaderSettingsTint;
        }
        mDataUsageView.setTextColor(color);

    }
}
