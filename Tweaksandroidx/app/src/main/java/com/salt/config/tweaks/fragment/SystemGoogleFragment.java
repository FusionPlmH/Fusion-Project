package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.module.DeleteApps;
import com.salt.module.DeviceProductModel;
import com.salt.module.DialogDPI;
import com.salt.module.shell.BackupRestoreUnit;
import com.salt.config.R;
import com.salt.config.tweaks.download.DownloadAPK;
import com.salt.config.tweaks.download.EdXposed;
import com.salt.config.tweaks.download.Fingerprint;
import com.salt.config.tweaks.download.Magisk;
import com.salt.config.tweaks.download.UpdatesGoogle;
import com.salt.script.KeepShellPublic;
import com.salt.utils.ScreenInfo;
import com.salt.utils.ScreenUtil;

import org.salt.preference.SaltPreference;
import org.salt.preference.SaltSettingCategoryPreference;
import org.salt.preference.SaltSwitchPreference;

import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.frame.LeadFrame.isChineseLanguage;
import static com.salt.utils.SaltProper.BuildVERSIONCODES;
import static com.salt.utils.SaltProper.SystemUrl.Phonebootloader;
import static com.salt.utils.SaltProper.disableSnackn;
import static com.salt.utils.utils.GoogleCalibration;
import static com.salt.widget.DialogView.ScriptsLogClear;
import static com.salt.widget.DialogView.uninstallAPPS;

public  class SystemGoogleFragment extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener{
    public String XML="system_google_prefs";
    private SaltPreference mUninstallGoogleService;
    private SaltSwitchPreference mGoogleServiceFreeze;
    public  final static  String mGoogleServiceFreezeKEY="leo_freeze_google_service";
    private DeleteApps mDeleteApps;
    private SaltPreference mInstallGoogleService;
    private SaltPreference mOptimizeGoogleService;
    private UpdatesGoogle mUpdatesGoogle;
    private SaltPreference mFluidService;
    private DownloadAPK mDownloadAPK;
    private SaltSettingCategoryPreference mFluidCategory,mGoogleCategory,mFingerprintCategory,EXDP,EXDP2;
    private SaltPreference mCustomModel;
    private SaltPreference mEdXposedService;
    private EdXposed mEdXposed;
    private SaltPreference mEdXposedServicePatch;
    private SaltPreference mEdXposedServiceUninstaller;
    private SaltPreference mFingerprint;
    private Fingerprint mFingerprintf;
    private SaltPreference mFontGroupService;
    private SaltPreference mDPIService;
    private SaltPreference mMagiskPaths;
    private DeviceProductModel mDeviceProductModel;
    private Magisk mMagisk;

    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference(mGoogleCategory.getKey()).setEnabled(findPreferenceEnabled);

        getPreferenceManager().findPreference(mCustomModel.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mFingerprint.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mDPIService.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mMagiskPaths.getKey()).setEnabled(findPreferenceEnabled);
    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.system_google_prefs;
    }
    @Override
    protected void getSaltCreatePreferences() {
        Context context=getActivity();
        mGoogleCategory=(SaltSettingCategoryPreference) findPreference("leo_Google_Category");
        EXDP=(SaltSettingCategoryPreference) findPreference("leo_EdXposed_Category");
        EXDP2=(SaltSettingCategoryPreference) findPreference("leo_EdXposed_Category_info");
        mDeleteApps=new DeleteApps(context);
        mUpdatesGoogle=new UpdatesGoogle(context);
        mDownloadAPK=new DownloadAPK(context);
        mFingerprintf=new Fingerprint(context);
        mDeviceProductModel=new DeviceProductModel(context);
        mMagisk=new Magisk(context);
        mGoogleServiceFreeze=(SaltSwitchPreference) findPreference(mGoogleServiceFreezeKEY);
        int Freeze= Settings.System.getInt(context.getContentResolver(),mGoogleServiceFreezeKEY, 0);
        if (Freeze==1) {
            mGoogleServiceFreeze.setSummary(getStringIdentifier(getContext(),"google_services")+getStringIdentifier(getContext(),"freeze_no"));
        } else {
            mGoogleServiceFreeze.setSummary(getStringIdentifier(getContext(),"google_services")+getStringIdentifier(getContext(),"freeze_yes"));
        }
        mGoogleServiceFreeze.setChecked(Freeze != 0);
        mGoogleServiceFreeze.setOnPreferenceChangeListener(this);
        mUninstallGoogleService= (SaltPreference) findPreference("leo_google_remove");
        mInstallGoogleService= (SaltPreference) findPreference("leo_install_google_service");
        mOptimizeGoogleService= (SaltPreference) findPreference("leo_optimize_google_service");
        if(isAvilible("com.google.android.gms")){
            mUninstallGoogleService.setSummary("卸载谷歌服务可为系统分区换取更多可用空间");

        } else {
            mUninstallGoogleService.setSummary("谷歌服务已从系统中卸载");

        }

        mFluidService=(SaltPreference) findPreference("leo_fluid_service");
        if(isAvilible("com.fb.fluid")){
            mFluidService.setSummary("已安装");
        } else {
            mFluidService.setSummary("未安装");
        }

        mFluidCategory=(SaltSettingCategoryPreference) findPreference("leo_fluid_Category");
        mFontGroupService=(SaltPreference) findPreference("leo_fonts_service");
        if(isAvilible("com.monotype.android.font.samsungsans")){
            mFontGroupService.setSummary("已安装");
        } else {
            mFontGroupService.setSummary("未安装");
        }
        mCustomModel=(SaltPreference) findPreference("leo_model_service");
        String str1= Properties("ro.product.model", "");
        mCustomModel.setSummary(str1);
        mGoogleCategory=(SaltSettingCategoryPreference) findPreference("leo_Google_Category");
        mFingerprintCategory=(SaltSettingCategoryPreference) findPreference("leo_fingerprint_Category");
        mEdXposedService= (SaltPreference) findPreference("leo_EdXposed_service_install");
        mEdXposedServicePatch= (SaltPreference) findPreference("leo_EdXposed_service_patch");
        mEdXposedServiceUninstaller= (SaltPreference) findPreference("leo_EdXposed_service_Uninstaller");
        try {
            if(isAvilible("org.meowcat.edxposed.manager")){
                mEdXposedServicePatch.setEnabled(true);
                mEdXposedServiceUninstaller.setEnabled(true);
            }else {
                mEdXposedServicePatch.setEnabled(false);
                mEdXposedServiceUninstaller.setEnabled(false);
            }
        } catch (Exception e) {
        }
        ScreenInfo mScreenInfo = ScreenUtil.getScreenInfo(getActivity());
        //ScreenUtil di = new ScreenUtil(getActivity());
        mFingerprint= (SaltPreference) findPreference("leo_fingerprint");
        mDPIService= (SaltPreference) findPreference("leo_dpi_service");
        mDPIService.setTitle(getStringIdentifier(getContext(),"grid_dpi"));
        mDPIService.setSummary(mScreenInfo.densityDpiStr+" / "+mScreenInfo.screenRealMetrics);
        mMagiskPaths= (SaltPreference) findPreference("leo_magisk_path");
        GoogleService();
        Fluid();
        MagiskService();
        if (BuildVERSIONCODES()) {
            getPreferenceScreen().addPreference(EXDP2);
            getPreferenceScreen().removePreference(EXDP);
        }else{
            getPreferenceScreen().removePreference(EXDP2);
            getPreferenceScreen().addPreference(EXDP);
        }
    }



    public boolean isAvilible( String packageName) {
        return  mDeleteApps.isLeoAvilible(getActivity(),packageName);
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        if(preference ==mGoogleServiceFreeze) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    mGoogleServiceFreezeKEY, value ? 1 :0);
            mDeleteApps.FreezeGoogleServices(getActivity(),value);
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
    public boolean onPreferenceTreeClick(Preference preference) {
        mEdXposed=new EdXposed(getActivity());
        if (preference ==mUninstallGoogleService) {
            if(isAvilible("com.google.android.gms")){
                mDeleteApps.DeleteGoogleServices();
            }
            return true;
        }else if (preference == mOptimizeGoogleService) {
            if(isAvilible("com.google.android.gms")){
                ScriptsLogClear(getActivity(),GoogleCalibration,1000);
            }
            return true;
        }else if (preference ==  mInstallGoogleService) {
            if(isAvilible("com.google.android.gms")){
            }else{
                if (BuildVERSIONCODES()) {
                    new BackupRestoreUnit(getActivity()).GoogleServicesOneui2Install();
                }else{
                    mUpdatesGoogle.GoogleDownloadView();
                }
            }
            return true;
        }else if (preference ==  mFluidService) {
            if(isAvilible("com.fb.fluid")){
                uninstallAPPS(getActivity(), "com.fb.fluid",1000,"卸载流体手势");
                mFluidService.setSummary("已安装");
            } else {
                mFluidService.setSummary("未安装");
                mDownloadAPK.UpdatesDownloadAPKView("Fluid.apk","流体手势","TIzs5OdB");
            }
            return true;
        }else if (preference ==  mFontGroupService) {
            if(isAvilible("com.monotype.android.font.samsungsans")){
                uninstallAPPS(getActivity(), "com.monotype.android.font.samsungsans",1000,"字体组合包");
                mFontGroupService.setSummary("已安装");
            } else {
                mFontGroupService.setSummary("未安装");
                mDownloadAPK.UpdatesDownloadAPKView("LeoFontModes.apk","字体组合包","HX56st35");
            }
            return true;
        }else if (preference ==  mEdXposedService) {
            mEdXposed.intView();
            return true;
        }else if (preference ==  mEdXposedServicePatch) {
            mEdXposed.EdXposedPatch();
            return true;
        }else if (preference ==   mEdXposedServiceUninstaller) {
            mEdXposed.EdXposedUninstall();
            return true;
        }else if (preference ==  mFingerprint) {
            mFingerprintf.intView();
            return true;
        }else if (preference ==  mCustomModel) {
            String str1= Properties("ro.product.model", "");
            mCustomModel.setSummary(str1);
            mDeviceProductModel.DeviceProductModelInfo();
            return true;
        }else if (preference ==  mDPIService) {
            new DialogDPI(getActivity()).modifyDPI(getActivity().getWindowManager().getDefaultDisplay(),getActivity());
            return true;
        }else if (preference ==   mMagiskPaths) {
            mMagisk.intView();
            return true;
        }else {
            return super.onPreferenceTreeClick(preference);
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



    private void Fluid(){
        if(isChineseLanguage()){
            getPreferenceScreen().addPreference(mFingerprintCategory);
            getPreferenceScreen().addPreference(mFluidCategory);
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
    private void MagiskService(){
        if(Phonebootloader(3).equals("G97") ){
            mMagiskPaths.setEnabled(true);
        } else {
            mMagiskPaths.setEnabled(false);
        }
    }


}
