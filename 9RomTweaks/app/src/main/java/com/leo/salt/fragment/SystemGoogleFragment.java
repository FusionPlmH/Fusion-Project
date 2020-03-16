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
import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.preference.SwitchPreference;
import android.provider.Settings;
import android.support.annotation.Nullable;

import android.text.InputType;
import android.text.TextUtils;
import android.text.method.ReplacementTransformationMethod;

import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.leo.salt.down.DUtil;
import com.leo.salt.down.callback.DownloadCallback;
import com.leo.salt.down.download.DownloadManger;
import com.leo.salt.preference.SaltSettingCategoryPreference;
import com.leo.salt.preference.SaltSettingPreference;
import com.leo.salt.tools.DeleteApps;
import com.leo.salt.tools.constants.BackupRestoreUnit;
import com.leo.salt.tools.constants.KeepShellPublic;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.updates.DownloadAPK;
import com.leo.salt.tweaks.updates.EdXposed;
import com.leo.salt.tweaks.updates.Fingerprint;
import com.leo.salt.tweaks.updates.UpdatesGoogle;

import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import static android.app.ProgressDialog.STYLE_HORIZONTAL;
import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.tweaks.resource.Resource.getResourcesForPackage;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;

import static com.leo.salt.tweaks.view.widget.DialogView.RestartDialog;
import static com.leo.salt.utils.PrefUtils.InstallAPPS;
import static com.leo.salt.utils.PrefUtils.ScriptsLogClear;
import static com.leo.salt.utils.PrefUtils.uninstallAPPS;


public  class SystemGoogleFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener{
    public String XML="system_google_prefs";
    private SaltSettingPreference mUninstallGoogleService;
    private SwitchPreference mGoogleServiceFreeze;
    private String mGoogleServiceFreezeKEY="leo_freeze_google_service";
    private DeleteApps mDeleteApps;
    private SaltSettingPreference mInstallGoogleService;
    private SaltSettingPreference mOptimizeGoogleService;
    private UpdatesGoogle mUpdatesGoogle;
    private SaltSettingPreference mFluidService;
    private DownloadAPK mDownloadAPK;
    private SaltSettingCategoryPreference mFluidCategory,mGoogleCategory,mFingerprintCategory;
    private EditTextPreference mCustomModel;
    private SaltSettingPreference mEdXposedService;
    private EdXposed mEdXposed;
    private SaltSettingPreference mEdXposedServicePatch;
    private SaltSettingPreference mEdXposedServiceUninstaller;
    private SaltSettingPreference mFingerprint;
    private Fingerprint mFingerprintf;
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BasePreferenceFragment( mContext , this, XML);
        mDeleteApps=new DeleteApps(mContext);
        mUpdatesGoogle=new UpdatesGoogle(mContext);
        mDownloadAPK=new DownloadAPK(mContext);
        mFingerprintf=new Fingerprint(mContext);
        mGoogleServiceFreeze=(SwitchPreference) findPreference(mGoogleServiceFreezeKEY);
        int Freeze= Settings.System.getInt(getActivity().getContentResolver(),mGoogleServiceFreezeKEY, 0);
        if (Freeze==1) {
            mGoogleServiceFreeze.setSummary(getStringIdentifier(getContext(),"google_services")+getStringIdentifier(getContext(),"freeze_no"));
        } else {
            mGoogleServiceFreeze.setSummary(getStringIdentifier(getContext(),"google_services")+getStringIdentifier(getContext(),"freeze_yes"));
        }
        mGoogleServiceFreeze.setChecked(Freeze != 0);
        mGoogleServiceFreeze.setOnPreferenceChangeListener(this);
        mUninstallGoogleService= (SaltSettingPreference) findPreference("leo_google_remove");
        if(isAvilible("com.google.android.gms")){
            mUninstallGoogleService.setSummary("卸载谷歌服务可为系统分区换取更多可用空间");
        } else {
            mUninstallGoogleService.setSummary("谷歌服务已从系统中卸载");
        }
        mInstallGoogleService= (SaltSettingPreference) findPreference("leo_install_google_service");
        mOptimizeGoogleService= (SaltSettingPreference) findPreference("leo_optimize_google_service");
        mFluidService=(SaltSettingPreference) findPreference("leo_fluid_service");

        if(isAvilible("com.fb.fluid")){
            mFluidService.setSummary("已安装");
        } else {
            mFluidService.setSummary("未安装");
        }
        mFluidCategory=(SaltSettingCategoryPreference) findPreference("leo_fluid_Category");
        mCustomModel=(EditTextPreference) findPreference("leo_model_service");
        m6947( mCustomModel);
        mGoogleCategory=(SaltSettingCategoryPreference) findPreference("leo_Google_Category");
        mFingerprintCategory=(SaltSettingCategoryPreference) findPreference("leo_fingerprint_Category");
        mEdXposedService= (SaltSettingPreference) findPreference("leo_EdXposed_service_install");
        mEdXposedServicePatch= (SaltSettingPreference) findPreference("leo_EdXposed_service_patch");
        mEdXposedServiceUninstaller= (SaltSettingPreference) findPreference("leo_EdXposed_service_Uninstaller");
        mFingerprint= (SaltSettingPreference) findPreference("leo_fingerprint");
        GoogleService();
        Fluid();
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }


    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("leo_Google_Category").setEnabled(true);
            getPreferenceManager().findPreference("leo_model_Category").setEnabled(true);
            getPreferenceManager().findPreference("leo_EdXposed_Category").setEnabled(true);

        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("leo_Google_Category").setEnabled(false);
            getPreferenceManager().findPreference("leo_model_Category").setEnabled(false);
            getPreferenceManager().findPreference("leo_EdXposed_Category").setEnabled(false);

        }

    }

    public boolean isAvilible( String packageName) {
        return  mDeleteApps.isLeoAvilible(mContext,packageName);
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        if(preference ==mGoogleServiceFreeze) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    mGoogleServiceFreezeKEY, value ? 1 :0);
            mDeleteApps.FreezeGoogleServices(mContext,value);
            if (value) {
                mGoogleServiceFreeze.setSummary(getStringIdentifier(getContext(),"google_services")+getStringIdentifier(getContext(),"freeze_no"));
            } else {
                mGoogleServiceFreeze.setSummary(getStringIdentifier(getContext(),"google_services")+getStringIdentifier(getContext(),"freeze_yes"));
            }
            GoogleService();
            return true;
        }
        return false;
    }

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen,
                                         Preference preference) {
        mEdXposed=new EdXposed(mContext);
      if (preference ==mUninstallGoogleService) {
            if(isAvilible("com.google.android.gms")){
                mDeleteApps.DeleteGoogleServices();
            }
            return true;
      }else if (preference == mOptimizeGoogleService) {
          if(isAvilible("com.google.android.gms")){
              ScriptsLogClear(mContext,"/data/data/com.leo.salt.tweaks/files/scripts/fix_google.sh",1000);
          }
          return true;
      }else if (preference ==  mInstallGoogleService) {
          if(isAvilible("com.google.android.gms")){

          }else{
              mUpdatesGoogle.UpdatesGoogleDialogView();
          }
          return true;
      }else if (preference ==  mFluidService) {

          if(isAvilible("com.fb.fluid")){
              uninstallAPPS(mContext, "com.fb.fluid",1000,"卸载流体手势");
              mFluidService.setSummary("已安装");
          } else {
              mFluidService.setSummary("未安装");
              mDownloadAPK.UpdatesDownloadAPKView("Fluid.apk","TIzs5OdB","流体手势");
          }
          return true;
      }else if (preference ==  mEdXposedService) {
          mEdXposed.intView();
          return true;
      }else if (preference ==  mEdXposedServicePatch) {
          if(mEdXposed.isLeoAvilible(mContext,"org.meowcat.edxposed.manager")){
              mEdXposed.showEdXposedpatchDialog();
          }else {

          }

          return true;
      }else if (preference ==   mEdXposedServiceUninstaller) {
          if(mEdXposed.isLeoAvilible(mContext,"org.meowcat.edxposed.manager")){
              mEdXposed.showEdXposedUninstallerDialog();
          }else {

          }

          return true;
      }else if (preference ==  mFingerprint) {
          mFingerprintf.intView();
          return true;
      }else {
            return super.onPreferenceTreeClick(preferenceScreen, preference);
        }
    }
    private void m6947(EditTextPreference editTextPreference) {

        if (editTextPreference != null) {
            String str1= Properties("ro.product.model", "");
            editTextPreference.setText(str1);
            editTextPreference.setSummary(str1);
            editTextPreference.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() {
                @Override
                public boolean onPreferenceChange(Preference preference, Object newValue) {
                    preference.setSummary(String.valueOf(newValue));
                   m7637("ro.product.model", String.valueOf(newValue));

                    return false;
                }
            });
        }
    }
    public static Method SystemProperties;

    private static Method SystemPro;
    static {
        try {
            for (Method method : Class.forName("android.os.SystemProperties").getMethods()) {
                String name = method.getName();
                if (name.equals("get")) {
                    SystemPro = method;
                } else if (name.equals("set")) {
                    SystemProperties = method;
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public static String Properties(String str, String str2) {
        try {
            return (String)SystemPro.invoke(null, new Object[]{str, str2});
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
        return str2;
    }

    public  void m7637(String str, String str2) {
        String str3 =  getLeoBuild(str);
        if (!TextUtils.isEmpty(str3)) {
            KeepShellPublic.INSTANCE.doCmdSync("mount -o rw,remount /system");
            KeepShellPublic.INSTANCE.doCmdSync("/system/xbin/sed -i '/" + str + "/s/" + str3 + "/" + str2 + "/g' /system/build.prop");
            RestartDialog(mContext,"设备型号已经修改为"+str2+"需要重启方可生效");
        }
    }


    private void Fluid(){
        if(isChineseLanguage()){
            getPreferenceScreen().addPreference(mFingerprintCategory);
            getPreferenceScreen().addPreference(mFluidCategory);
            if (DonatePermission()) {
                mFingerprint.setEnabled(true);
            }else {
                mFingerprint.setEnabled(false);
            }
        }else {
            getPreferenceScreen().removePreference(mFluidCategory);
            getPreferenceScreen().removePreference(mFingerprintCategory);
        }

    }
    private void GoogleService(){
        if(isAvilible("com.google.android.gms")){
            mGoogleServiceFreeze.setEnabled(true);
            mOptimizeGoogleService.setEnabled(true);
            mInstallGoogleService.setEnabled(false);
            mUninstallGoogleService.setEnabled(true);

        } else {
            mOptimizeGoogleService.setEnabled(false);
            mGoogleServiceFreeze.setEnabled(false);
            mInstallGoogleService.setEnabled(true);
            mUninstallGoogleService.setEnabled(false);
        }
    }

    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }


}
