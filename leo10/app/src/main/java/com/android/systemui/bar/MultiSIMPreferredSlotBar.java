package com.android.systemui.bar;

import android.app.StatusBarManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;
import android.provider.Settings.Global;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionManager;
import android.telephony.SubscriptionManager.OnSubscriptionsChangedListener;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;

import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQsMultiSIMBarEnabled;


public class MultiSIMPreferredSlotBar extends QSBarItem implements OnClickListener, OnLongClickListener {
    private static final float DISABLED_ALPHA = 0.4f;
    private static final int MESSAGE_CHANGE_NETWORK_MODE = 1001;
    private static final int MESSAGE_DELAY_DATASERVICE_SET = 1003;
    private static final int MESSAGE_DELAY_DATASERVICE_TIMEOUT = 1004;
    private static final int MESSAGE_SEND_NETWORK_MODE_CHANGED_INTENT = 1007;
    private static final int MESSAGE_SET_PREFERRED_NETWORK_TYPE = 1002;
    private static final int MESSAGE_SET_PREFERRED_NETWORK_TYPE_IN_THREAD = 1006;
    private static final int MESSAGE_SET_PREFERRED_NETWORK_TYPE_ONESLOT = 1005;
    private static final int MESSAGE_UPDATE_MULTISIM_PREFERRED_DATA_BUTTON = 1000;
    private static final int NETOWRKMODECHANGE_MAX_TIMEOUT = 10000;
    private static final float NORMAL_ALPHA = 1.0f;
    /* access modifiers changed from: private|static|final */
  //  public static final int[] QsPrefferedBtnImage = new int[]{R.drawable.quick_panel_icon_preffered_slot_1, R.drawable.quick_panel_icon_preffered_slot_2, R.drawable.quick_panel_icon_preffered_slot_call, R.drawable.quick_panel_icon_preffered_slot_sms, R.drawable.quick_panel_icon_preffered_slot_mms, R.drawable.quick_panel_icon_preffered_slot_internet, R.drawable.quick_panel_icon_preffered_slot_home, R.drawable.quick_panel_icon_preffered_slot_office, R.drawable.quick_panel_icon_preffered_slot_heart};
    private static final int SIMSELECT_LIST_ASKALLAWAY = 0;
    private static final int SIMSELECT_LIST_OTHERS = 3;
    private static final int SIMSELECT_LIST_SIM1 = 1;
    private static final int SIMSELECT_LIST_SIM2 = 2;
    private static final int SIMSLOT1 = 0;
    private static final int SIMSLOT2 = 1;
    private static final String TAG = "MultiSIMPreferredSlotBar";
    /* access modifiers changed from: private */
    public boolean Netchangefinished = false;
    /* access modifiers changed from: private */
    public int[] SimImageIdx = new int[]{0, 1};
    /* access modifiers changed from: private */
    public String[] SimName = new String[]{"SIM 1", "SIM 2"};
    private String SimState_1;
    private String SimState_2;

    /* access modifiers changed from: private */
    public boolean mAirplaneMode = false;
    private boolean mAlphaEnabled = false;
    /* access modifiers changed from: private */
    public boolean mCTCforceoff = false;
    /* access modifiers changed from: private */
    public boolean mChangedByDataButton = false;
    /* access modifiers changed from: private */
    public Context mContext;
    /* access modifiers changed from: private */
    public boolean mDataBlockedForSim1 = false;
    /* access modifiers changed from: private */
    public boolean mDataBlockedForSim2 = false;
    /* access modifiers changed from: private */

    private boolean getBarVisibility() {
        return false;
    }

    public boolean isMultiSimEnabled() {
        return setLeoQsMultiSIMBarEnabled;
    }

    public MultiSIMPreferredSlotBar(Context context) {
        super(context);


    }

    @Override
    public void refreshQsBar() {
        LeoSysUiManages(mContext);
    }


    /* access modifiers changed from: private */
        private void updateBarVisibilities() {
        if (this.mBarRootView != null) {
            this.mBarRootView.setVisibility(getBarVisibility() ? 0 : 8);
        }
        if (this.mQSCallback != null) {
            this.mQSCallback.onQSHeightChanged();
        }
    }


    @Override
    public void onClick(View v) {

    }

    @Override
    public boolean onLongClick(View v) {
        return false;
    }

    @Override
    public int getBarHeight() {
        return 0;
    }

    @Override
    public void destroy() {

    }

    @Override
    public View inflateViews(ViewGroup viewGroup, boolean z) {
        return null;
    }

    @Override
    public boolean isAvailable() {
        return false;
    }
}
