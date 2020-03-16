package com.android.fusionleo.leoglobalactions.util;

import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.os.UserHandle;
import android.telephony.TelephonyManager;
import com.android.internal.logging.MetricsLogger;


public class SystemController {
    private static final String ACTION_CLEAR_COVER_STATE_CHANGE = "com.samsung.cover.STATE_CHANGE";
    private static final String ACTION_NETWORK_MODE_CHANGED = "android.intent.action.NETWORK_MODE_CHANGED";
    private static final String BIKE_MODE_PACKAGE_NAME = "com.samsung.android.app.bikemode";
    private static final int INTERVAL_SCOVER_TRANSITION = 200;
    private static final int MESSAGE_HIDE_QUICKPANEL = 4;
    private final Context mContext;
   // private final HandlerUtil mHandlerWrapper;
    private TelephonyManager mTelephonyManager;

    public SystemController(Context context ) {
        this.mContext = context;

        this.mTelephonyManager = (TelephonyManager) context.getSystemService("phone");
    }

    public static /* synthetic */ void lambda$doBugReport$0(SystemController systemController, boolean z) {


    }

    public void clearCoverStateChange() {
        Intent intent = new Intent();
        intent.setAction(ACTION_CLEAR_COVER_STATE_CHANGE);
        intent.putExtra("suppressCoverUI", false);
        intent.putExtra("miniModeUI", true);
        intent.putExtra("sender", "GlobalActions$ConfirmDialog");
        this.mContext.sendBroadcast(intent);
    }

    public void doBugReport(boolean z) {
        if (!ActivityManager.isUserAMonkey()) {
            //this.mHandlerWrapper.postDelayed(new -$$Lambda$SystemController$qCeLejhl1VXuezlb4Ejmq1rgSIY(this, z), 500);
        }
    }

    public void goToHome() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.setFlags(268435456);
      //  this.mContext.startActivityAsUser(intent, UserHandle.OWNER);
    }

    public void hideQuickPanel(String str) {
       // this.mHandlerWrapper.sendMessageDelayed(this.mHandlerWrapper.obtainMessage(4, str), 200);
    }

    public void restoreQuickPanelBackground() {
    }

    public void setDataEnabled(boolean z) {
        this.mTelephonyManager.setDataEnabled(z);
        Intent intent = new Intent(ACTION_NETWORK_MODE_CHANGED);
        intent.putExtra("state", z);
        this.mContext.sendBroadcast(intent);
    }

    public void startATTForceUpdate() {
        Intent intent = new Intent("com.attdm.intent.action.FIRSTNET_START_FORCE_UPDATE");
        intent.addFlags(268435456);
        intent.setPackage("com.ws.dm");
        this.mContext.sendBroadcast(intent);
    }

    public boolean startProKioskExitUI(String str, String str2) {
        Intent intent = new Intent();
        intent.setClassName(str, str2);
        intent.addFlags(268435456);

        return false;
    }

    public void toggleBikeMode(boolean z) {
        Intent intent = new Intent();
        if (z) {
            intent.setComponent(new ComponentName(BIKE_MODE_PACKAGE_NAME, "com.samsung.android.app.bikemode.BMActivities.BMSplashScreen"));
        } else {
            intent.setComponent(new ComponentName(BIKE_MODE_PACKAGE_NAME, "com.samsung.android.app.bikemode.BMActivities.BMONUnpinnedScreen"));
            intent.setAction("com.samsung.android.app.bikemode.ACTION_CLOSE_APP");
        }
        intent.setFlags(335544320);
        try {
            this.mContext.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void toggleEmergencyMode() {


    }
}
