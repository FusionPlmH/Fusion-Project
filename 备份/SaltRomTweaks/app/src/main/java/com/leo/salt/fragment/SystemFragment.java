package com.leo.salt.fragment;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.preference.SwitchPreference;
import android.provider.Settings;
import android.support.annotation.Nullable;

import android.text.InputType;
import android.text.method.ReplacementTransformationMethod;

import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.leo.salt.down.DUtil;
import com.leo.salt.down.callback.DownloadCallback;
import com.leo.salt.down.download.DownloadManger;
import com.leo.salt.tools.DeleteApps;
import com.leo.salt.tools.constants.BackupRestoreUnit;
import com.leo.salt.tools.constants.KeepShellPublic;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;

import java.io.File;
import static android.app.ProgressDialog.STYLE_HORIZONTAL;
import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getResourcesForPackage;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.utils.PrefUtils.BatteryLogClear;



public  class SystemFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener{

    public String XML="system_prefs";

    ProgressDialog downloadDialog;
    private Preference mKernelInstall;
    private DeleteApps mDeleteApps;
    private String mKernelInstallKEY="leo_instal_kernel";
    private String mAirplaneKEY="leo_airplane";
    private SwitchPreference mAirplane;
    private String mSTKKEY="leo_stk";
    private SwitchPreference mSTK;

    private Preference mUninstallGoogleService;
    private SwitchPreference mGoogleServiceFreeze;
    private String mGoogleServiceFreezeKEY="leo_freeze_google_service";
    private String mBiometricsKEY="keyguard_biometrics_unlock";
    private String mKeyguardStatusbarKEY="leo_salt_keyguard_statusbar_view";
    private Preference mBatteryLog;
    private SwitchPreference mSimSdBlock;
    private SwitchPreference mKeyguardBiometrics;
    private SwitchPreference mUSB;
    private SwitchPreference mKeyguardStatusbar;
    private Preference mDynamiclock;
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BasePreferenceFragment( mContext , this, XML);
        mDeleteApps=new DeleteApps(mContext);
        downloadDialog =new ProgressDialog(mContext);
        mKernelInstall= (Preference) findPreference(mKernelInstallKEY);
        String STR=getStringIdentifier(getContext(),"kernel_info")+getStringIdentifier(getContext(),"android_versions")+" "+System.getProperty("os.version");
        mKernelInstall.setSummary(STR);
        mAirplane=(SwitchPreference) findPreference(mAirplaneKEY);
        int Airplane = Settings.System.getInt(getActivity().getContentResolver(),mAirplaneKEY, 0);
        mAirplane.setChecked(Airplane != 0);
        mAirplane.setOnPreferenceChangeListener(this);

        mSimSdBlock=(SwitchPreference) findPreference("SimSdBlock");
        int SimSdBlock = Settings.System.getInt(getActivity().getContentResolver(),"LeoSimSdBlock", 0);
        mSimSdBlock.setChecked(SimSdBlock != 0);
        mSimSdBlock.setOnPreferenceChangeListener(this);

        mUSB=(SwitchPreference) findPreference("wake_unplugged");
        int usb = Settings.System.getInt(getActivity().getContentResolver(),"usb_wake_unplugged", 0);
        mUSB.setChecked(usb != 0);
        mUSB.setOnPreferenceChangeListener(this);

        mSTK=(SwitchPreference) findPreference(mSTKKEY);
        int STK = Settings.System.getInt(getActivity().getContentResolver(),mSTKKEY, 0);
        mSTK.setChecked(STK != 0);
        mSTK.setOnPreferenceChangeListener(this);

        mGoogleServiceFreeze=(SwitchPreference) findPreference(mGoogleServiceFreezeKEY);
        int Freeze= Settings.System.getInt(getActivity().getContentResolver(),mGoogleServiceFreezeKEY, 0);
        if (Freeze==1) {
            mGoogleServiceFreeze.setSummary(getStringIdentifier(getContext(),"google_services")+getStringIdentifier(getContext(),"freeze_no"));
        } else {
            mGoogleServiceFreeze.setSummary(getStringIdentifier(getContext(),"google_services")+getStringIdentifier(getContext(),"freeze_yes"));
        }
        mGoogleServiceFreeze.setChecked(Freeze != 0);
        mGoogleServiceFreeze.setOnPreferenceChangeListener(this);
        mUninstallGoogleService= (Preference) findPreference("leo_google_remove");
        if(isAvilible("com.google.android.gms")){
            //mGoogleServiceFreeze.setEnabled(true);
            mUninstallGoogleService.setSummary("卸载谷歌服务可为系统分区换取更多可用空间");
        } else {
          //  mGoogleServiceFreeze.setEnabled(false);
            mUninstallGoogleService.setSummary("谷歌服务已从系统中卸载");
        }

        mBatteryLog= (Preference) findPreference("leo_battery_log");

        dfdsgfg();

        mKeyguardBiometrics=(SwitchPreference) findPreference("wake_Biometrics");
        int Biometrics = Settings.System.getInt(getActivity().getContentResolver(),mBiometricsKEY, 0);
        mKeyguardBiometrics.setChecked(Biometrics != 0);
        mKeyguardBiometrics.setOnPreferenceChangeListener(this);
        mKeyguardStatusbar=(SwitchPreference) findPreference("keyguard_statusbar");
        int Statusbar= Settings.System.getInt(getActivity().getContentResolver(),mKeyguardStatusbarKEY, 0);
        mKeyguardStatusbar.setChecked(Statusbar != 0);
        mKeyguardStatusbar.setOnPreferenceChangeListener(this);
        mDynamiclock= (Preference) findPreference("dynamiclock");
        appNameIcon(mDynamiclock,"com.samsung.android.dynamiclock");
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }


    public void appNameIcon(Preference preference,String string){
        try {
            ApplicationInfo applicationInfo = mContext.getPackageManager().getApplicationInfo( string, 0);
            String appLabel = applicationInfo.loadLabel( mContext.getPackageManager()).toString();
            preference.setTitle(appLabel);
            preference.setSummary(getDynamiclockStringIdentifier(getContext(),"magazine_dialog_notifer_message1"));
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
    }
    public static String  getDynamiclockStringIdentifier(Context context , String RECnME){
        String pkgName=null;
        int ident;
        Resources packRes = getResourcesForPackage(context,"com.samsung.android.dynamiclock");
        ident = packRes.getIdentifier(RECnME,"string", "com.samsung.android.dynamiclock");
        String toastMsg = packRes.getString(ident, pkgName);
        return toastMsg;
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("SimSdBlock").setEnabled(true);

            getPreferenceManager().findPreference("leo_google_remove").setEnabled(true);
            getPreferenceManager().findPreference("keyguard_statusbar").setEnabled(true);
            getPreferenceManager().findPreference("wake_Biometrics").setEnabled(true);
        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("SimSdBlock").setEnabled(false);

            getPreferenceManager().findPreference("leo_google_remove").setEnabled(false);
            getPreferenceManager().findPreference("keyguard_statusbar").setEnabled(false);
            getPreferenceManager().findPreference("wake_Biometrics").setEnabled(false);
        }

    }

  public boolean isAvilible( String packageName) {
      return  mDeleteApps.isLeoAvilible(mContext,packageName);
  }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mAirplane) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    mAirplaneKEY, value ? 1 : 0);
            Airplane(value);
            return true;
        }else if(preference == mSTK) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    mSTKKEY, value ? 1 : 0);
            mDeleteApps.StkBoolean(value);
            return true;
        }else if(preference ==mGoogleServiceFreeze) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    mGoogleServiceFreezeKEY, value ? 1 :0);
            mDeleteApps.FreezeGoogleServices(mContext,value);
            if (value) {
                mGoogleServiceFreeze.setSummary(getStringIdentifier(getContext(),"google_services")+getStringIdentifier(getContext(),"freeze_no"));
            } else {
                mGoogleServiceFreeze.setSummary(getStringIdentifier(getContext(),"google_services")+getStringIdentifier(getContext(),"freeze_yes"));
            }
            dfdsgfg();
            return true;
        } else if(preference == mSimSdBlock) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                "LeoSimSdBlock", value ? 1 : 0);

            return true;
        } else if(preference == mUSB) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    "usb_wake_unplugged", value ? 1 : 0);

            return true;
        }else if(preference == mKeyguardBiometrics) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    mBiometricsKEY, value ? 1 : 0);

            return true;
        }else if(preference == mKeyguardStatusbar) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    mKeyguardStatusbarKEY, value ? 1 : 0);

            return true;
        }
        return false;
    }

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen,
                                         Preference preference) {
        if (preference ==mKernelInstall) {
            try {
            Intent  intent = new Intent();
            intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
            intent.setAction("com.leo.fusionleo_kernel");
            startActivity(intent);
            } catch (Exception e) {
                Toast.makeText(mContext,"缺少内核管理器",1).show();
            }
            return true;
        }if (preference ==mUninstallGoogleService) {
            if(isAvilible("com.google.android.gms")){
                mDeleteApps.DeleteGoogleServices();
            }
            return true;
        }else if (preference ==mBatteryLog) {
            BatteryLogClear(mContext,"/data/data/com.leo.salt.tweaks/files/scripts/battery_history_clear.sh",1000);

            return true;
        }if (preference == mDynamiclock) {
            Intent  intent = new Intent();
            intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
            intent.setAction("dynamic.intent.action.SETTINGS");
            mContext.startActivity(intent);
            return true;
        }else{
            return super.onPreferenceTreeClick(preferenceScreen, preference);
        }
    }

    private void dfdsgfg(){
        if(isAvilible("com.google.android.gms")){
            mGoogleServiceFreeze.setEnabled(true);
           // mUninstallGoogleService.setSummary("卸载谷歌服务可为系统分区换取更多可用空间");
        } else {
            mGoogleServiceFreeze.setEnabled(false);
    }

}
  public  static   String KernelVersion ;



    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }

    private void Airplane(boolean z) {
        if (z) {
            Settings.Global.putString(getActivity().getContentResolver(), "airplane_mode_radios", "cell,bluetooth,nfc,wimax");
        } else {
            Settings.Global.putString(getActivity().getContentResolver(), "airplane_mode_radios", "cell,bluetooth,wifi,nfc,wimax");
        }
    }

}
