package com.android.launcher3.framework.vendor;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

import com.samsung.android.feature.SemCscFeature;
import com.samsung.android.feature.SemFloatingFeature;

import java.io.UnsupportedEncodingException;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;

public final class Utils {
    private static OnlineHelpMenuState mHelpMenuData;

    public static class  OnlineHelpMenuState{
        public int iconRes = 0;
        public Intent intent = null;
        public boolean removeTile = false;
        public int summaryRes ;
        public int titleRes ;

        OnlineHelpMenuState() {
        }
    }

    public static OnlineHelpMenuState getOnlineHelpMenuState(Context context) {
        if (mHelpMenuData == null) {
            mHelpMenuData = getOnlineHelpMenuState(context, mHelpMenuData);
        }
        return mHelpMenuData;
    }

    public static boolean isSupportHelpMenu(Context context) {

        return false;
    }

    private static OnlineHelpMenuState getOnlineHelpMenuState(Context context, OnlineHelpMenuState onlineHelpMenuState) {
        if (onlineHelpMenuState == null) {
            onlineHelpMenuState = new OnlineHelpMenuState();
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("CscFeature_Setting_ConfigTypeHelp: ");
        stringBuilder.append(SemCscFeature.getInstance().getInteger("CscFeature_Setting_ConfigTypeHelp"));
        stringBuilder.append("[0:dont support, 1:online, 2:ondevice]");
        Log.d("Settings_Utils", stringBuilder.toString());
        if (SemCscFeature.getInstance().getInteger("CscFeature_Setting_ConfigTypeHelp") == 2) {
            onlineHelpMenuState.titleRes = 2131888870;
            onlineHelpMenuState.summaryRes = 2131888870;
            onlineHelpMenuState.iconRes = 2131231570;
            if (isSupportHelpMenu(context)) {
                Log.d("Settings_Utils", "isSupportOfflineHelpMenu");
                if (SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_ACCESSIBILITY")) {
                    Log.d("Settings_Utils", "non mass");
                    onlineHelpMenuState.intent = new Intent("com.samsung.helphub.HELP");
                } else {
                    Log.d("Settings_Utils", "mass");

                }
            } else {
                Log.d("Settings_Utils", "remove online help -  is not SupportOfflineHelpMenu.");
                onlineHelpMenuState.removeTile = true;
            }
        } else if (SemCscFeature.getInstance().getInteger("CscFeature_Setting_ConfigTypeHelp") == 0) {
            Log.d("Settings_Utils", "remove online help -  help csc feature is 0");
            onlineHelpMenuState.removeTile = true;
        } else {
            Log.d("Settings_Utils", "help csc feature is Default 1");
            onlineHelpMenuState.intent = getUserManualSearchURLIntent(context, "com.leo.salt.tweaks");
            onlineHelpMenuState.titleRes = 2131893051;
            onlineHelpMenuState.summaryRes = 2131893051;
            onlineHelpMenuState.iconRes = 2131231584;

            if (!isIntentAvailable(context, onlineHelpMenuState.intent)) {
                Log.d("Settings_Utils", "do not support browser.");
                onlineHelpMenuState.removeTile = true;
            }
        }
        return onlineHelpMenuState;
    }
    public static boolean isIntentAvailable(Context context, Intent intent) {

        return false;
    }

    public static Intent getUserManualSearchURLIntent(Context context, String str) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setClassName(str,"启动Act的全限定类名");
        context.startActivity(intent);
        return intent;
    }

}