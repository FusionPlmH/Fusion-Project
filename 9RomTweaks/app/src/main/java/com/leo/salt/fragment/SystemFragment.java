package com.leo.salt.fragment;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
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
import com.leo.salt.preference.SaltSettingPreference;
import com.leo.salt.tools.DeleteApps;
import com.leo.salt.tools.apps.ActivityFileSelector;
import com.leo.salt.tools.constants.BackupRestoreUnit;
import com.leo.salt.tools.constants.KeepShellPublic;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.amber.WebViewActivity;
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import java.io.File;
import static android.app.ProgressDialog.STYLE_HORIZONTAL;
import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getResourcesForPackage;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.utils.PrefUtils.ScriptsLogClear;


public  class SystemFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener{

    public String XML="system_prefs";

    ProgressDialog downloadDialog;

    private DeleteApps mDeleteApps;

    private String mAirplaneKEY="leo_airplane";
    private SwitchPreference mAirplane;
    private String mSTKKEY="leo_stk";
    private SwitchPreference mSTK;

    private String mBiometricsKEY="keyguard_biometrics_unlock";
    private String mKeyguardStatusbarKEY="leo_salt_keyguard_statusbar_view";
    private SaltSettingPreference mBatteryLog;
    private SwitchPreference mSimSdBlock;
    private SwitchPreference mKeyguardBiometrics;
    private SwitchPreference mUSB;
    private SwitchPreference mKeyguardStatusbar;
    private SaltSettingPreference mDynamiclock;
    private SaltSettingPreference mBootAnimation;
    private SaltSettingPreference mTaobap;
    private SaltSettingPreference mDoze;
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BasePreferenceFragment( mContext , this, XML);
        mDeleteApps=new DeleteApps(mContext);
        downloadDialog =new ProgressDialog(mContext);

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
        mBatteryLog= (SaltSettingPreference) findPreference("leo_battery_log");
        mKeyguardBiometrics=(SwitchPreference) findPreference("wake_Biometrics");
        int Biometrics = Settings.System.getInt(getActivity().getContentResolver(),mBiometricsKEY, 0);
        mKeyguardBiometrics.setChecked(Biometrics != 0);
        mKeyguardBiometrics.setOnPreferenceChangeListener(this);
        mKeyguardStatusbar=(SwitchPreference) findPreference("keyguard_statusbar");
        int Statusbar= Settings.System.getInt(getActivity().getContentResolver(),mKeyguardStatusbarKEY, 0);
        mKeyguardStatusbar.setChecked(Statusbar != 0);
        mKeyguardStatusbar.setOnPreferenceChangeListener(this);
        mDynamiclock= (SaltSettingPreference) findPreference("dynamiclock");
        appNameIcon(mDynamiclock,"com.samsung.android.dynamiclock");
        mBootAnimation= (SaltSettingPreference) findPreference("leo_boot_anim");
        mTaobap= (SaltSettingPreference) findPreference("leo_taobao");
        mDoze= (SaltSettingPreference) findPreference("leo_doze");
        Fluid();
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }


    public void appNameIcon(SaltSettingPreference preference,String string){
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
            getPreferenceManager().findPreference("keyguard_statusbar").setEnabled(true);
            getPreferenceManager().findPreference("wake_Biometrics").setEnabled(true);
            getPreferenceManager().findPreference("leo_doze").setEnabled(true);
            getPreferenceManager().findPreference("leo_boot_anim").setEnabled(true);
        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("SimSdBlock").setEnabled(false);
            getPreferenceManager().findPreference("keyguard_statusbar").setEnabled(false);
            getPreferenceManager().findPreference("wake_Biometrics").setEnabled(false);
            getPreferenceManager().findPreference("leo_doze").setEnabled(false);
            getPreferenceManager().findPreference("leo_boot_anim").setEnabled(false);
        }

    }
    private void Fluid(){
        if(isChineseLanguage()){
            getPreferenceScreen().addPreference( mTaobap);
        }else {

            getPreferenceScreen().removePreference( mTaobap);
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
        }else if(preference == mSimSdBlock) {
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
        if (preference ==mBatteryLog) {
            ScriptsLogClear(mContext,"/data/data/com.leo.salt.tweaks/files/scripts/doze_clear.sh",1000);

            return true;
        }else if (preference == mDynamiclock) {
            Intent  intent = new Intent();
            intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
            intent.setAction("dynamic.intent.action.SETTINGS");
            mContext.startActivity(intent);
            return true;
        }else if (preference ==mBootAnimation) {
            AnimationSelect();
            return true;
        }else if (preference ==mTaobap) {
            ScriptsLogClear(mContext,"/data/data/com.leo.salt.tweaks/files/scripts/battery_history_clear",1000);
            return true;
        }else if (preference ==mDoze) {
            ScriptsLogClear(mContext,"/data/data/com.leo.salt.tweaks/files/scripts/doze_clear.sh",1000);
            return true;
        }else{
            return super.onPreferenceTreeClick(preferenceScreen, preference);
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
     Intent intent;
    private void AnimationSelect(){

        AlertDialog.Builder builder=new AlertDialog.Builder(mContext);
        builder.setTitle(getStringIdentifier(getContext(),"animation_boot_select"));

        builder.setSingleChoiceItems(R.array.boot_animation, 0, (dialog, which) -> {

        });
        builder.setPositiveButton(android.R.string.yes, (dialog, which) -> {
            int selectedPosition = ((AlertDialog) dialog).getListView().getCheckedItemPosition();
            if ( selectedPosition== 0) {
                intent= new Intent(mContext, ActivityFileSelector.class);
                intent.putExtra("extension", "qmg");
                startActivityForResult(intent,BOOT_QMG_SELECTOR);
            } else if ( selectedPosition== 1) {
                intent= new Intent(mContext, ActivityFileSelector.class);
                intent.putExtra("extension", "zip");
                startActivityForResult(intent,BOOT_zip_QMG_SELECTOR);
            }else if ( selectedPosition== 2) {
                new BackupRestoreUnit(mContext).backupBootAnima();
            }

        });
        builder.setNeutralButton(getStringIdentifier(getContext(),"animation_boot_usinghelp"), (dialog, which) -> {
            AlertDialog.Builder builder1 = new AlertDialog.Builder(mContext);
            builder1.setTitle(getStringIdentifier(getContext(),"animation_boot_usinghelp"));//设置对话框的标题
            builder1.setMessage(getStringIdentifier(getContext(),"animation_boot_info"));
                    //设置对话框的按钮
            builder1.setPositiveButton(android.R.string.yes, (dialog1, which1) -> dialog1.dismiss());
            builder1.create().show();

        });
        builder.create().show();

    }
    private final  int  BOOT_QMG_SELECTOR = 0;
    private final  int BOOT_zip_QMG_SELECTOR = 1;

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode ==BOOT_QMG_SELECTOR) {
            if (resultCode ==Activity.RESULT_OK && data != null && data.getExtras().containsKey("file")) {
                String path = data.getExtras().getString("file");
                AlertDialog.Builder builder = new AlertDialog.Builder(mContext);
                builder.setTitle(getStringIdentifier(getContext(),"animation_boot_qmg"));//设置对话框的标题
                builder.setMessage(getStringIdentifier(getContext(),"animation_boot_confirm")+path+getStringIdentifier(getContext(),"animation_boot_confirm_qmg_info"));
                builder.setPositiveButton(android.R.string.yes, (dialog, which) -> new BackupRestoreUnit(mContext).FlashBootAnimation(path,0)
                );

                builder.create().show();
            }
        }else if (requestCode ==BOOT_zip_QMG_SELECTOR) {
            if (resultCode ==Activity.RESULT_OK && data != null && data.getExtras().containsKey("file")) {
                String path = data.getExtras().getString("file");
                AlertDialog.Builder builder = new AlertDialog.Builder(mContext);
                builder.setTitle(getStringIdentifier(getContext(),"animation_boot_zip"));//设置对话框的标题
                builder.setMessage(getStringIdentifier(getContext(),"animation_boot_confirm")+path+getStringIdentifier(getContext(),"animation_boot_confirm_zip_info"));
                builder.setPositiveButton(android.R.string.yes, (dialog, which) -> new BackupRestoreUnit(mContext).FlashBootAnimation(path,1)
                );

                builder.create().show();
            }
        }
    }
}
