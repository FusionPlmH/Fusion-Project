package com.android.systemui.qs.panelcolor;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import com.android.systemui.Dependency;

import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener;
import com.android.systemui.util.DeviceState;

public class PanelColorManagerImpl implements PanelColorManager, ConfigurationListener {
    private static PanelColorManager sInstance;
    private int mCurrentNightModeMask;
    private ViewGroup mParent;
    private PanelColorStrategy mStrategy;

    public static PanelColorManager getInstance() {
        if (sInstance == null) {
            sInstance = new PanelColorManagerImpl();
        }
        return sInstance;
    }

    private boolean isOpenThemeOn(Context context) {
        return (context == null || TextUtils.isEmpty(DeviceState.isOpenTheme(context))) ? false : true;
    }

    public void destroy() {
        this.mParent = null;
        this.mStrategy = null;
        ((ConfigurationController) Dependency.get(ConfigurationController.class)).removeCallback(this);
    }

    public PanelColorModel getColorModel() {
        if (this.mStrategy == null && this.mParent != null) {
            this.mStrategy = makeStrategy();
            this.mStrategy.loadCommonColors(this.mParent);
        }
        PanelColorStrategy panelColorStrategy = this.mStrategy;
        return panelColorStrategy != null ? panelColorStrategy.mColorModel : null;
    }

    public void init(ViewGroup viewGroup, Configuration configuration) {
        if (viewGroup != null && configuration != null) {
            this.mParent = viewGroup;
            ((ConfigurationController) Dependency.get(ConfigurationController.class)).addCallback(this);
            this.mCurrentNightModeMask = configuration.uiMode & 48;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("init() coloring:");
            stringBuilder.append(isQSColoringModeOn());
            Log.d("PanelColorManager", stringBuilder.toString());
            this.mStrategy = makeStrategy();
            this.mStrategy.execute(viewGroup);
        }
    }

    /* access modifiers changed from: protected */
    public boolean isNightModeOn() {
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean isQSColoringModeOn() {
        return false;
    }

    /* access modifiers changed from: protected */
    public PanelColorStrategy makeStrategy() {
        return isQSColoringModeOn() ? new PanelColorQSColoringStrategy() : isOpenThemeOn(this.mParent.getContext()) ? new PanelColorOpenThemeStrategy() : isNightModeOn() ? new PanelColorNightModeStrategy() : new PanelColorNightModeStrategy();
    }

    public void onConfigChanged(Configuration configuration) {
        if (this.mParent != null && configuration != null) {
            int i = configuration.uiMode & 48;
            if (!isQSColoringModeOn() && this.mCurrentNightModeMask != i) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("onConfigChanged() UI_MODE changed ->  old:");
                stringBuilder.append(Integer.toHexString(this.mCurrentNightModeMask));
                stringBuilder.append(" > new:");
                stringBuilder.append(Integer.toHexString(i));
                Log.d("PanelColorManager", stringBuilder.toString());
                this.mCurrentNightModeMask = i;
                this.mStrategy = makeStrategy();
                this.mStrategy.execute(this.mParent);
            }
        }
    }
}
