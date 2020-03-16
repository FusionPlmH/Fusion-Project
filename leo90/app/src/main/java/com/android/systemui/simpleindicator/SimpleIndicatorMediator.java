package com.android.systemui.simpleindicator;

import android.content.Context;
import android.util.Log;
import com.android.systemui.Dependency;



public class SimpleIndicatorMediator {
    private Context mContext;
    private boolean mIsSPluginConnected = false;
    private SimpleIndicatorManager mManager;
    private SimpleIndicatorReceiver mReceiver;

    public SimpleIndicatorMediator(Context context, SimpleIndicatorManager simpleIndicatorManager) {

        this.mContext = context;
        this.mManager = simpleIndicatorManager;
        this.mReceiver = new SimpleIndicatorReceiver(this);

    }

    public boolean isPluginConnected() {
        return this.mIsSPluginConnected;
    }




    public void setBlackListDBValue(String str) {
        this.mManager.setBlackListDBValue(str);
    }
}
