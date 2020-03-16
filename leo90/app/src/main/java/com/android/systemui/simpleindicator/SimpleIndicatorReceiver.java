package com.android.systemui.simpleindicator;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.UserHandle;
import android.text.TextUtils;

public class SimpleIndicatorReceiver extends BroadcastReceiver {
    private IntentFilter mFilter = new IntentFilter();
    private SimpleIndicatorMediator mMediator;

    public SimpleIndicatorReceiver(SimpleIndicatorMediator simpleIndicatorMediator) {
        this.mFilter.addAction("com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR");
        this.mMediator = simpleIndicatorMediator;
    }

    public void onReceive(Context context, Intent intent) {
        if ("com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR".equals(intent.getAction())) {
            String stringExtra = intent.getStringExtra("iconblacklist");
            if (TextUtils.isEmpty(stringExtra)) {
                this.mMediator.setBlackListDBValue("rotate,headset");
            } else {
                this.mMediator.setBlackListDBValue(stringExtra);
            }
        }
    }

    public void register(Context context) {
        //context.registerReceiverAsUser(this, UserHandle.ALL, this.mFilter, "com.samsung.systemui.permission.SPLUGIN", null);
    }

    public void unregister(Context context) {
        context.unregisterReceiver(this);
    }
}
