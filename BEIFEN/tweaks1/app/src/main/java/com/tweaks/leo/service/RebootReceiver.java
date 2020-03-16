package com.tweaks.leo.service;

import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import static com.tweaks.leo.utils.root.Helpers.LeoRestartMeun;

public class RebootReceiver extends BroadcastReceiver {
    public  static final String  LEO_ACTION_MIPOP= "leo.action.mipop";
    @Override
    public void onReceive(Context context, Intent intent) {
        // TODO: This method is called when the BroadcastReceiver is receiving
        // an Intent broadcast.
        LeoRestartMeun(context,1);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);

    }

}
