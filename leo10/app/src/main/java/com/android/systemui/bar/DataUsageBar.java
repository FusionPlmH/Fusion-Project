package com.android.systemui.bar;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.provider.Settings;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.android.settingslib.salt.utils.LeoReceiver;
import com.android.systemui.Rune;

import com.android.systemui.qs.DataUsageView;
import com.android.systemui.util.DeviceState;
import com.salt.config.R;

import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;
import static com.android.settingslib.salt.SaltConfigFrame.rt100foleo;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSDataUsageColor;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSDataUsageColorEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSDataUsageFont;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSDataUsageOrientation;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSDataUsageSize;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQsDataUsageBarEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQsDataUsageBarExpandedEnabled;


public class DataUsageBar extends QSBarItem implements LeoReceiver.BroadcastListener {
    public static final boolean DEBUG;
    private static final String TAG = "DataUsageBar";
    private Context mContext = null;
    /* access modifiers changed from: private */
    public DataUsageView mDataUsageView = null;
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (DataUsageBar.DEBUG) {
                String str = DataUsageBar.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("onReceive: ");
                stringBuilder.append(action);
                Log.d(str, stringBuilder.toString());
            }
            if ("android.intent.action.SIM_STATE_CHANGED".equals(action)) {
                DataUsageBar.this.updateVisibility();
            } else if ("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED".equals(action)) {
                DataUsageBar.this.mDataUsageView.updateCurrentDataSubId();
                if (DataUsageBar.this.mBarRootView != null && DataUsageBar.this.mBarRootView.getVisibility() == 0) {
                    DataUsageBar.this.mDataUsageView.updateUsageInfo();
                }
            } else if ("com.samsung.systemui.statusbar.ANIMATING".equals(action) && DataUsageBar.this.mBarRootView != null && DataUsageBar.this.mBarRootView.getVisibility() == 0) {
                DataUsageBar.this.mDataUsageView.updateUsageInfo();
            }
            if (action.equals(rt100foleo("U0FMVF9VUERBVEVfUVNCQVJfREFUQVVTQUdFX1NFVFRJTkdT"))) {
                updateDataUsageBar();
            }
        }
    };

    static {
        boolean z = ("eng".equals(Build.TYPE) || Log.isLoggable(TAG, 3)) ? true : true;
        DEBUG = z;
    }

    public DataUsageBar(Context context) {
        super(context);
        this.mContext = context;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SIM_STATE_CHANGED");
        intentFilter.addAction("com.samsung.systemui.statusbar.ANIMATING");
        intentFilter.addAction("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED");

        intentFilter.addAction(rt100foleo("U0FMVF9VUERBVEVfUVNCQVJfREFUQVVTQUdFX1NFVFRJTkdT"));
        this.mContext.registerReceiver(this.mReceiver, intentFilter);
        LeoReceiver actionBroadcastReceiver = new LeoReceiver(this);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction(rt100foleo("U0FMVF9VUERBVEVfUVNCQVJfREFUQVVTQUdFX1NFVFRJTkdT"));
        mContext.registerReceiver(actionBroadcastReceiver, intentFilter);
    }

    @Override
    public void refreshQsBar() {

    }


    /* access modifiers changed from: private */
    public void updateVisibility() {
        if (this.mBarRootView != null) {
            this.mBarRootView.setVisibility(getBarVisibility() ? 0 : 8);
        }
        if (this.mQSCallback != null) {
            this.mQSCallback.onQSHeightChanged();
        }
    }

    public void destroy() {
        this.mContext.unregisterReceiver(this.mReceiver);
    }

    public int getBarHeight() {
        return 0;
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





    public void hideShowingExpandedBar(boolean z) {
        if (getBarVisibility()) {
            this.mBarRootView.setVisibility(z ? 8 : 0);
        }
    }

    public boolean isShowingWhenExpanded() {
        LeoSysUiManages(mContext);
        return setLeoQsDataUsageBarExpandedEnabled;
    }

    public View inflateViews(ViewGroup viewGroup, boolean z) {
        this.mBarRootView = (ViewGroup) LayoutInflater.from(this.mContext).inflate(0, viewGroup, DEBUG);
        this.mDataUsageView = (DataUsageView) this.mBarRootView.findViewById(0);
        updateDataUsageBar();
        return this.mBarRootView;
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
            }
            int DataUsagesize=setLeoQSDataUsageSize;
            int  UesrDataUsageFont=setLeoQSDataUsageFont;
            dataUsageView.setTextSize(DataUsagesize);
            dataUsageView.setTypeface(setLeoTextFont(mContext,UesrDataUsageFont,"sec-roboto-condensed", Typeface.NORMAL));;
            dataUsageView.setGravity((style | 16) | 1);
        }
        getBarVisibility();

    }


    public boolean isAvailable() {

        return true;
    }


    public void onColorChanged(Configuration configuration) {
        setColorChanged();
    }

    private void setColorChanged(){
        if (this.mDataUsageView != null) {
            int color;
            if(setLeoQSDataUsageColorEnabled){
                color=setLeoQSDataUsageColor;
            }else {
                color=mContext.getColor(getLeoUIResource("color/data_usage_text_color"));
            }
            this.mDataUsageView.setTextColor(color);
        }
    }

    @Override
    public void onLeoChange(Intent intent) {
        String action = intent.getAction();
        if (action.equals(rt100foleo("U0FMVF9VUERBVEVfUVNCQVJfREFUQVVTQUdFX1NFVFRJTkdT"))) {
            updateDataUsageBar();
        }
    }
}