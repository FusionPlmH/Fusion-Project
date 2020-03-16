package com.android.settingslib.salt.utils;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;




public class LeoReceiver extends BroadcastReceiver {
    public  BroadcastListener mBroadcastListener;

    public LeoReceiver(BroadcastListener rl) {
        mBroadcastListener = rl;
    }




    @Override
    public void onReceive(Context context, Intent intent) {
        if (mBroadcastListener != null) {
            mBroadcastListener.onLeoChange(intent);
        }

    }


    public interface BroadcastListener {
        void onLeoChange(Intent intent);
    }




}
