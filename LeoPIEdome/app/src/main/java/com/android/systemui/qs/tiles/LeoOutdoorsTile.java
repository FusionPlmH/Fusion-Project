package com.android.systemui.qs.tiles;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.Log;
import android.widget.ImageView;
import android.widget.Toast;


import com.android.systemui.plugins.qs.QSIconView;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.tileimpl.QSTileImpl;

import static com.android.fusionleo.global.LeoGlobalUtils.LeoGlobalActiong;

import static com.android.fusionleo.global.LeoGlobalValues.getCode;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoOS;

import static com.android.fusionleo.global.LeoGlobalValues.getOCodeN;
import static com.android.fusionleo.global.LeoGlobalValues.getOnema;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.LeoToast;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;



public  class LeoOutdoorsTile extends QSTileImpl<QSTile.BooleanState> {

     Icon mCurrentIcon;
    public int mIconId;
    public int mStringId;
    public final int  mLEO_OUTDOORS_MODE=127;
    public LeoOutdoorsTile(QSHost qSHost) {
        super(qSHost);
        setIds();
    }

    private void setIds() {
        this.mIconId = getLeoResource("drawable/quick_panel_icon_outdoors");
        this.mCurrentIcon = ResourceIcon.get(this.mIconId);
        this.mStringId = getLeoResource("string/quick_settings_outdoors_label");
    }


    public int getLoggingValue(boolean z) {
        return 1;
    }

    public Intent getLongClickIntent() {
        return null;
    }

    public int getMetricsCategory() {
        return 289;
    }

    public CharSequence getTileLabel() {
        return this.mContext.getText(this.mStringId);
    }

    protected void handleClick() {
        if (getLeoOS().equals(getOnema())) {//判断ROM 版本
            if (getCode() .equals(getOCodeN())) {//判断ROM 源码版本

                    LeoGlobalActiong(mContext,mLEO_OUTDOORS_MODE,null);

                return;
            }
            return;
        }
    }

    protected void handleDestroy() {
    }

    protected void handleSecondaryClick() {
    }

    protected void handleUpdateState(BooleanState booleanState, Object obj) {
        booleanState.state = 2;
        booleanState.icon = this.mCurrentIcon;
        booleanState.label = getTileLabel();
    }

    public boolean isAvailable() {
        return true;
    }

    public BooleanState newTileState() {
        return new BooleanState();
    }

    @Override
    public void handleSetListening(boolean listening) {

    }

    public void setListening(boolean z) {
    }


}