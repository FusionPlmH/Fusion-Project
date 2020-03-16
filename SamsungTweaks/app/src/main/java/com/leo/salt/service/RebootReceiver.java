package com.fusionleo.salt.service;

import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.fusionleo.salt.utils.root.Helpers;


public class RebootReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        // TODO: This method is called when the BroadcastReceiver is receiving
        // an Intent broadcast.
        Helpers.Companion.LeoRestartMeun(context,1);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);

    }

}
