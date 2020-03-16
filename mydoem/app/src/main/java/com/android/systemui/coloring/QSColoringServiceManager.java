package com.android.systemui.coloring;

import android.content.Context;
import android.util.Log;
import com.android.systemui.Dependency;


public class QSColoringServiceManager  {
    private Context mContext;
    //private NotificationPanelView mNotificationPanelView;
   // private PluginQSColoring mPluginQSColoring;
    private float mQSColoringBlurAmount;
    private boolean mQSColoringBlurEffectEnabled;
    private float mQSColoringDimAmount;
    private boolean mQSColoringDimEffectEnabled;
    private boolean mQSColoringEnabled;
    private boolean mQSColoringUserPreferOpenTheme;
  //  private ScrimController mScrimController;

    public QSColoringServiceManager(Context context) {
        this.mContext = context;
       // ((SPluginManager) Dependency.get(SPluginManager.class)).addPluginListener(this, PluginQSColoring.class, false);
    }

    private void initResources() {
        this.mQSColoringEnabled = false;
        this.mQSColoringBlurEffectEnabled = false;
        this.mQSColoringDimEffectEnabled = true;
        this.mQSColoringBlurAmount = 0.3f;
        this.mQSColoringDimAmount = 1.0f;
    }




    private void setPluginQSColoringCallback() {

    }

 //   public void setNotificationPanelView(NotificationPanelView notificationPanelView) {
      //  this.mNotificationPanelView = notificationPanelView;
   // }



    public boolean isQSColoringEnabled() {
      //  boolean pluginEnabled = this.mPluginQSColoring != null;
     //   boolean availableInOpenTheme = DeviceState.isOpenTheme(this.mContext) == null || !isQSColoringUserPreferOpenTheme();
      //  if (pluginEnabled && this.mQSColoringEnabled && availableInOpenTheme && !DeviceState.isDesktopMode(this.mContext) && !SettingsHelper.getInstance().isEmergencyMode()) {
      //      return true;
      //  }
        return false;
    }

    public boolean isQSColoringBlurEffectEnabled() {
        return this.mQSColoringBlurEffectEnabled;
    }

    public boolean isQSColoringDimEffectEnabled() {
        return this.mQSColoringDimEffectEnabled;
    }

    public boolean isQSColoringUserPreferOpenTheme() {
        return this.mQSColoringUserPreferOpenTheme;
    }

    private void updateQSColoring() {
        if (!this.mQSColoringEnabled) {
            initResources();
        }
        updateAllQSColoringFunctions();
    }

    private void applyQSColoringResoucres() {
       // if (this.mNotificationPanelView != null) {
           // this.mNotificationPanelView.updateQuickSettingPanel();
      //  }
    }

    private void applyQSColoringBlurEffect() {
     //   ((StatusBarWindowManager) Dependency.get(StatusBarWindowManager.class)).applyQSColoringBlurEffect();
    }

    private void applyQSColoringDimEffect() {
       // if (this.mScrimController != null) {
           // this.mScrimController.updateQSColoringDimEffect();
       // }
    }

    private void updateAllQSColoringFunctions() {
        applyQSColoringResoucres();
        applyQSColoringBlurEffect();
        applyQSColoringDimEffect();
    }

    public int getQSColoringColor(int item) {
       // return this.mPluginQSColoring.getQSColoringColor(item);
        return item;
    }

    public float getQSColoringBlurAmount() {
        return this.mQSColoringBlurAmount;
    }
}
