package com.android.fusionleo.leoglobalactions.util;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.annotation.RequiresApi;

public class KeyGuardManagerWrapper {
    private static final String ACTION_SHOW_GLOBAL_ACTIONS = "android.intent.action.SHOW_GLOBAL_ACTIONS";
    private static final String TAG = "KeyguardManagerWrapper";
    private Context mContext ;
    private final KeyguardManager mKeyguardManager = ((KeyguardManager) mContext.getSystemService("keyguard"));
   // private final LogWrapper mLogWrapper;

    public KeyGuardManagerWrapper(Context context) {
       mContext = context;

    }
    public  Context getContext() {
        return mContext;
    }
    public boolean isCurrentUserSecure() {
        return false;
    }

    @RequiresApi(api = Build.VERSION_CODES.M)
    public boolean isSecureKeyguard() {
        return this.mKeyguardManager.isDeviceSecure() && this.mKeyguardManager.inKeyguardRestrictedInputMode();
    }

    public void setPendingIntentAfterUnlock(String str) {

        PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, new Intent("android.intent.action.SHOW_GLOBAL_ACTIONS"), 134217728);
        Intent intent = new Intent();
        intent.putExtra("afterKeyguardGone", false);
        intent.putExtra("dismissType", str);

    }
}
