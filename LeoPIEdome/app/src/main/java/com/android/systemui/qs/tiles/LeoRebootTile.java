package com.android.systemui.qs.tiles;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.PowerManager;
import android.util.Log;
import android.widget.ImageView;
import android.widget.Toast;


import com.android.leo.R;
import com.android.systemui.plugins.qs.QSIconView;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.tileimpl.QSTileImpl;


import static com.android.fusionleo.global.LeoGlobalUtils.LeoHitomiActiong;
import static com.android.fusionleo.global.LeoGlobalValues.getCode;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoOS;
import static com.android.fusionleo.global.LeoGlobalValues.getOCodeN;
import static com.android.fusionleo.global.LeoGlobalValues.getOnema;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.LeoToast;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;



public class LeoRebootTile extends QSTileImpl<QSTile.BooleanState> {

    Icon mCurrentIcon;
    public int mIconId;
    public int mStringId;
    public LeoRebootTile(QSHost qSHost) {
        super(qSHost);
        setResource();
    }
@Override
    public BooleanState newTileState() {
        return new BooleanState();
    }

    @Override
    public void handleClick() {
        mHost.collapsePanels();
        getLeoRebootDialog(mContext);
    }
    private void setResource() {
        this.mIconId = getLeoResource("drawable/quick_panel_icon_reboot");
        this.mCurrentIcon = ResourceIcon.get(this.mIconId);
        this.mStringId = getLeoResource("string/quick_settings_reboot_label");
    }

    @Override
    protected void handleLongClick() {
        getLeoRebootDialog(mContext);
    }

    @Override
    public Intent getLongClickIntent() {
        return null;
    }


    @Override
    public int getMetricsCategory() {
        return 450;
    }
    public  void  getLeoRebootDialog(Context context) {
        if (getLeoOS().equals(getOnema())) {//判断ROM 版本
            if (getCode() .equals(getOCodeN())) {//判断ROM 源码版本

                    AlertDialog dialog = new AlertDialog.Builder(mContext)
                            .setTitle(getLeoResource("string/quick_settings_reboot_label"))//设置对话框的标题
                            .setIcon(getLeoResource("drawable/tw_ic_do_restart"))
                            .setItems(getLeoResource("array/leo_reboot_name"), (dialog1, which) -> {
                                Handler handler = new Handler();
                                handler.postDelayed(() -> {
                                    switch (which) {
                                        case 0:
                                            LeoHitomiActiong(mContext,1);
                                            break;
                                        case 1:
                                            LeoHitomiActiong(mContext,2);
                                            break;
                                        case 2:
                                            LeoHitomiActiong(mContext,4);
                                            break;
                                        case 3:
                                            LeoHitomiActiong(mContext,3);
                                            break;
                                    }
                                }, 500);
                                dialog1.dismiss();
                            })
                            .create();
                    dialog.getWindow().setType(2003);
                    dialog.show();
                return;
            }
            return;
        }
    }
    @Override
    public CharSequence getTileLabel() {
        return this.mContext.getText(this.mStringId);
    }

    @Override
    protected void handleUpdateState(BooleanState state, Object arg) {
        state.state = 2;
        state.icon = this.mCurrentIcon;
        state.label = getTileLabel();
    }

    @Override
    public void handleSetListening(boolean listening) {
    }

    @Override
    protected void setListening(boolean z) {

    }

}