package com.android.systemui.globalactions;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.KeyguardManager;
import android.app.Notification;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Point;
import android.graphics.drawable.GradientDrawable;
import android.os.Message;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.ProgressBar;
import android.widget.SimpleAdapter;
import android.widget.TextView;

import com.android.fusionleo.global.LeoGlobalValues;
import com.android.fusionleo.statusbar.LeoPowerMenuDialog;
import com.android.leo.R;
import com.android.systemui.Dependency;
import com.android.systemui.SysUiServiceProvider;

import com.android.systemui.globalactions.presentation.view.SecGlobalActionsDialog;
import com.android.systemui.plugins.GlobalActions;
import com.android.systemui.plugins.GlobalActions.GlobalActionsManager;

import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.CommandQueue.Callbacks;
import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import com.android.systemui.statusbar.policy.KeyguardMonitor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Handler;

import static android.security.KeyStore.getApplicationContext;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoCustomString;
import static com.android.fusionleo.global.LeoGlobalValues.getAPPNAME;
import static com.android.fusionleo.global.LeoGlobalValues.hitomiA;
import static com.android.fusionleo.global.LeoGlobalValues.hitomiB;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;

import static com.android.fusionleo.statusbar.LeoStatusbarUtils.LeoComponetURL;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;
import static com.android.systemui.SystemUIApplication.getContext;


public class GlobalActionsImpl implements GlobalActions, Callbacks {
    private final Context mContext;


    public GlobalActionsImpl(Context context) {
        mContext = context;
        ((CommandQueue) SysUiServiceProvider.getComponent(context, CommandQueue.class)).addCallbacks(this);
    }

    public void destroy() {
        ((CommandQueue) SysUiServiceProvider.getComponent(this.mContext, CommandQueue.class)).removeCallbacks(this);
    }


    private final DeviceProvisionedController mDeviceProvisionedController = ((DeviceProvisionedController) Dependency.get(DeviceProvisionedController.class));
    private boolean mDisabled;
    private GlobalActionsDialog mGlobalActions;
    private final KeyguardMonitor mKeyguardMonitor = ((KeyguardMonitor) Dependency.get(KeyguardMonitor.class));
    private SecGlobalActionsDialog mSecGlobalActions;


    public void showGlobalActions(GlobalActionsManager globalActionsManager, boolean z) {
        if (true) {

        } else if (!this.mDisabled) {
            if (this.mSecGlobalActions == null) {
                this.mSecGlobalActions = new SecGlobalActionsDialog(this.mContext, globalActionsManager);
            }
            if (z) {
                SecGlobalActionsDialog.GLOBALACTION_FORCE_SHOW = true;
            }
          //mSecGlobalActions.show(this.mKeyguardMonitor.isShowing(), this.mDeviceProvisionedController.isDeviceProvisioned(), false);
        }
    }

    public void showShutdownUi(boolean z, String str) {

    }

    @Override
    public int getVersion() {
        return 0;
    }

    @Override
    public void onCreate(Context context, Context context2) {

    }

    @Override
    public void onDestroy() {

    }

    public  void  LeoPowerMenuDialog() {
        LeoStatusSettings(mContext);
        LeoComponetURL(mContext,"com.salt.powermenu/com.salt.powermenu.MainActivity");
    }





}
