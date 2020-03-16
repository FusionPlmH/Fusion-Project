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
import com.android.systemui.Rune;

import com.android.systemui.qs.DataUsageView;

import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoUri;
import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoFonts;
import static com.fusionleo.LeoProvider.LeoManages.mLeoQSHeadsClock;
import static com.fusionleo.LeoProvider.LeoManages.*;



public class DataUsageBar extends QSBarItem {
    /* access modifiers changed from: private|static|final */
    public final  static boolean DEBUG=true;
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
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("getBarVisibility activeSimCount:");

            Log.d(str, stringBuilder.toString());
        }
        return false;
    }
    public boolean isDataUsageEnabled() {
        LeoSysUiManages(mContext);
        return setLeoQsDataUsageBarEnabled ? true : false;
    }

    /* access modifiers changed from: private */
    private void updateVisibility() {

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

    /* access modifiers changed from: protected */
    public void hideShowingExpandedBar(boolean z) {
        if (!getBarVisibility()) {
            return;
        }
        if (z) {
            this.mBarRootView.setVisibility(8);
        } else {
            this.mBarRootView.setVisibility(0);
        }
    }

    public View inflateViews(ViewGroup viewGroup, boolean z) {

        updateVisibility();
        final ContentObserver contentObserver= new ContentObserver(new Handler()) {
            public void onChange(boolean z) {

                updateVisibility();
            }
        };
        new Thread(() -> {
            ContentResolver contentResolver = mContext.getContentResolver();
            for (String uriFor :mLeoQsBar) {
                contentResolver.registerContentObserver(Settings.System.getUriFor(uriFor), false, contentObserver);
            }
        }).start();

        return this.mBarRootView;
    }

    public boolean isAvailable() {
        return false;
    }

    public boolean isShowingWhenExpanded() {
        return true;
    }

    public void onColorChanged(Configuration configuration) {
        if (this.mDataUsageView != null) {

        }
    }

}
