package com.android.systemui.coloring;

import android.content.Context;
import android.util.Log;

import com.android.leo.R;
import com.android.systemui.Dependency;

import com.android.systemui.splugins.SPluginManager;

import com.android.systemui.statusbar.phone.StatusBarObjectProvider;
import com.android.systemui.statusbar.phone.StatusBarSetupModule;

import com.samsung.systemui.splugins.coloring.PluginQSColoring;
import com.samsung.systemui.splugins.coloring.PluginQSColoring.Callback;
import com.samsung.systemui.splugins.SPluginListener;
import java.util.ArrayList;

public class QSColoringServiceManager implements StatusBarSetupModule, SPluginListener<PluginQSColoring> {
    private Context mContext;
    private float mIndicatorAlpha = 1.0f;
    private QSColoringServiceModel mModel;
    private PluginQSColoring mPluginQSColoring;
    private Callback mPluginQSColoringCallback = new Callback() {
        public void applyColoring(boolean z) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("PluginQSColoring.Callback applyColoring() enabled:");
            stringBuilder.append(z);

            if (QSColoringServiceManager.this.mModel != null) {
                QSColoringServiceManager.this.mModel.mQSColoringEnabled = z;
            }
            QSColoringServiceManager.this.refreshAllQSColoringFunctions();
        }

        public void applyColoringBlurEffect(boolean z, float f) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("PluginQSColoring.Callback applyColoringBlurEffect() enabled:");
            stringBuilder.append(z);
            stringBuilder.append(", amount:");
            stringBuilder.append(f);

            if (QSColoringServiceManager.this.mModel != null) {
                QSColoringServiceManager.this.mModel.mQSColoringBlurEffectEnabled = z;
                QSColoringServiceManager.this.mModel.mQSColoringBlurAmount = f;
            }
        }

        public void applyColoringButtonGrid(int i) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("PluginQSColoring.Callback applyColoringButtonGrid() gridType:");
            stringBuilder.append(i);

        }

        public void applyColoringDimEffect(boolean z, float f) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("PluginQSColoring.Callback applyColoringDimEffect() enabled:");
            stringBuilder.append(z);
            stringBuilder.append(", amount:");
            stringBuilder.append(f);

            if (QSColoringServiceManager.this.mModel != null) {
                QSColoringServiceManager.this.mModel.mQSColoringDimEffectEnabled = z;
                QSColoringServiceManager.this.mModel.mQSColoringDimAmount = f;
            }
        }

        public void applyColoringResources() {

            QSColoringServiceManager.this.refreshAllQSColoringFunctions();
        }

        public void applyNotificationColoring(boolean z) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("PluginQSColoring.Callback applyNotificationColoring() enabled:");
            stringBuilder.append(z);

            if (QSColoringServiceManager.this.mModel != null) {
                QSColoringServiceManager.this.mModel.mNotificationColoringEnabled = z;
            }
        }

        @Override
        public ArrayList<Integer> getQSPanelColors() {
            return null;
        }


    };
    private StatusBarObjectProvider mStatusBar;

    public QSColoringServiceManager(Context context) {

        this.mContext = context;
        this.mModel = new QSColoringServiceModel();
        this.mModel.resetAllResources();
       // ((SPluginManager) Dependency.get(SPluginManager.class)).addPluginListener(this, PluginQSColoring.class, false);
    }

    public int getQSColoringBackgroundColor() {
        if (!isQSColoringEnabled()) {
            return this.mContext.getColor(R.color.qs_background_color);
        }
        return this.mPluginQSColoring != null ? this.mPluginQSColoring.getQSColoringColor(0) : this.mContext.getColor(R.color.qs_background_color);
    }

    public int getQSColoringBackgroundAlpha() {
        return this.mPluginQSColoring != null ? this.mPluginQSColoring.getQSColoringBackgroundAlpha() : 255;
    }
    private int refreshAllQSColoringFunctions() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("refreshAllQSColoringFunctions(START) ");

        if (this.mStatusBar != null) {

    }

        return 0;
    }

    @Override
    public void init(StatusBarObjectProvider statusBarObjectProvider) {

    }

    @Override
    public void onPluginConfigurationChanged(PluginQSColoring pluginQSColoring) {

    }

    @Override
    public void onPluginConnected(PluginQSColoring pluginQSColoring, Context context) {

    }

    @Override
    public void onPluginDisconnected(PluginQSColoring pluginQSColoring) {

    }

    public boolean isQSColoringEnabled() {
       // return isPluginConnected() && this.mModel.mQSColoringEnabled && !DeviceState.isDesktopMode(this.mContext) && !((SettingsHelper) Dependency.get(SettingsHelper.class)).isEmergencyMode();
        return false;
    }
    public int getQSColoringColor(int i) {
        // return this.mPluginQSColoring != null ? this.mPluginQSColoring.getQSColoringColor(i) : 0;
        return i;
    }
}
