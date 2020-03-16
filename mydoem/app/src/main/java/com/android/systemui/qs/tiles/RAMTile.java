package com.android.systemui.qs.tiles;

import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.Log;
import android.widget.ImageView;



import com.android.systemui.plugins.qs.QSIconView;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.tileimpl.QSTileImpl;

import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CodeVersions;
import static com.os.leo.utils.LeoUserValues.getCode;
import static com.os.leo.utils.LeoUserValues.mS;
import static com.os.leo.utils.LeoUserValues.ryid;


public  class RAMTile extends QSTileImpl<QSTile.BooleanState> {

Icon mCurrentIcon;
    public int mIconId;
    public int mStringId;

    public RAMTile(QSHost qSHost) {
        super(qSHost);
        setIds();
    }

    private void setIds() {
        this.mIconId = getLeoResource("drawable/quick_panel_icon_record_screen");
        this.mCurrentIcon = ResourceIcon.get(this.mIconId);
        this.mStringId = getLeoResource("string/quick_settings_screen_recorder_label");
    }


    public int getLoggingValue(boolean z) {
        return 1;
    }

    public Intent getLongClickIntent() {
        return new Intent("com.sec.app.screenrecorder.START_SETTINGS");
    }

    public int getMetricsCategory() {
        return 289;
    }

    public CharSequence getTileLabel() {
        return this.mContext.getText(this.mStringId);
    }

    protected void handleClick() {
        if (getCode().equals(CodeVersions())) {//判断ROM NAME
            Log.v(AUTHOR, "LeoRom Settings" );
            if (mS .equals(ryid())) {//判断ROM NAME
        this.mHost.collapsePanels();
        try {
            Intent intent = new Intent();
            intent.setClassName("com.sec.app.screenrecorder", "com.sec.app.screenrecorder.activity.LauncherActivity");
            intent.putExtra("screenrecorder", 0);
            this.mContext.startActivity(intent);
        } catch (Exception e) {
        }
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