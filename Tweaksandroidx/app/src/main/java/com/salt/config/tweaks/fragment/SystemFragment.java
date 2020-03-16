package com.salt.config.tweaks.fragment;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Intent;

import android.provider.Settings;
import android.widget.Toast;

import androidx.appcompat.app.AlertDialog;
import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.module.DeleteApps;
import com.salt.module.shell.BackupRestoreUnit;
import com.salt.config.R;
import com.salt.config.tweaks.activity.ActivityFileSelector;
import com.salt.utils.SaltProper;

import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltPreference;
import org.salt.preference.SaltSwitchPreference;

import java.util.Timer;

import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.frame.LeadFrame.isChineseLanguage;
import static com.salt.utils.BatteryUtil.cgvvdf;

import static com.salt.utils.SaltProper.SystemUrl.Phonebootloader;
import static com.salt.utils.SaltProper.disableSnackn;
import static com.salt.utils.utils.All_SCRIPTS_FOLDER;
import static com.salt.widget.DialogView.ScriptsBoot;
import static com.salt.widget.DialogView.ScriptsLogClear;


public  class SystemFragment extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener{
    public ProgressDialog downloadDialog;
    private DeleteApps mDeleteApps;
    private String mAirplaneKEY="leo_airplane";
    private SaltSwitchPreference mAirplane;
    private String mSTKKEY="leo_stk";
    private SaltSwitchPreference mSTK;
    private SaltPreference mBatteryLog;
    private SaltSwitchPreference mSimSdBlock;
    private SaltSwitchPreference mUSB;
    private SaltPreference mBootAnimation;
    private SaltPreference mTaobap;
    private SaltPreference mDoze;
    private SaltPreference mBatteryRefreshBeta;
    private SaltPreference mBusyCrack;
    private SaltPreference mThemeCrack;
    private void Fluid(){
        if(isChineseLanguage()){
            getPreferenceScreen().addPreference( mTaobap);
        }else {

            getPreferenceScreen().removePreference( mTaobap);
        }

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
        }else if(preference ==mBusyCrack) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    "crack_spare", value ? 1 : 0);
            BusyCrack();
            return true;
        }else if(preference ==mThemeCrack) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    "crack_theme", value ? 1 : 0);
            BusTheme();
            return true;
        }
        return false;
    }

    @Override
    public boolean onPreferenceTreeClick(androidx.preference.Preference preference) {

        if (preference ==mBatteryLog) {
            String string="rm -f /data/system/batterystats-checkin.bin"+"rm -f /data/system/batterystats.bin"+"rm -f /data/system/batterystats-daily.xml";
            ScriptsLogClear(getActivity(),string,1000);
            return true;
        }else if (preference ==mBootAnimation) {
            AnimationSelect();
            return true;
        }else if (preference ==mTaobap) {
            //SysUtils.executeCommandWithOutput(true,"/data/data/com.salt.config.tweaks/files/scripts/battery_history_clear.sh");
            ScriptsLogClear(getActivity(),All_SCRIPTS_FOLDER+"/"+"app_simple.sh",1000);
            // new BackupRestoreUnit(mContext).UnlockProLeo();
            return true;
        }else if (preference ==mDoze) {
            ScriptsLogClear(getActivity(),All_SCRIPTS_FOLDER+"/"+"doze_clear.sh",1000);
            return true;
        }else if (preference ==mBatteryRefreshBeta) {
            batteryRefreshBeta();
            return true;
        }else if(preference ==mBusyCrack) {

            BusyCrack();
            return true;
        }else if(preference ==mThemeCrack) {

            BusTheme();
            return true;
        }else{
            return super.onPreferenceTreeClick(preference);
        }
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

        AlertDialog.Builder builder=new AlertDialog.Builder(getActivity());
        builder.setTitle(getStringIdentifier(getContext(),"animation_boot_select"));
        builder.setSingleChoiceItems(R.array.boot_animation, 0, (dialog, which) -> {

        });
        builder.setPositiveButton(android.R.string.yes, (dialog, which) -> {
            int selectedPosition = ((AlertDialog) dialog).getListView().getCheckedItemPosition();
            if ( selectedPosition== 0) {
                intent= new Intent(getActivity(), ActivityFileSelector.class);
                intent.putExtra("extension", "qmg");
                startActivityForResult(intent,BOOT_QMG_SELECTOR);
            } else if ( selectedPosition== 1) {
                intent= new Intent(getActivity(), ActivityFileSelector.class);
                intent.putExtra("extension", "zip");
                startActivityForResult(intent,BOOT_zip_QMG_SELECTOR);
            }else if ( selectedPosition== 2) {
                new BackupRestoreUnit(getActivity()).backupBootAnima();
            }

        });
        builder.setNegativeButton(android.R.string.cancel,null);
        builder.setNeutralButton(getStringIdentifier(getContext(),"animation_boot_usinghelp"), (dialog, which) -> {
            AlertDialog.Builder builder1 = new AlertDialog.Builder(getActivity());
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

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.system_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        mDeleteApps=new DeleteApps(getActivity());
        downloadDialog =new ProgressDialog(getActivity());
        mAirplane=(SaltSwitchPreference) findPreference(mAirplaneKEY);
        int Airplane = Settings.System.getInt(getActivity().getContentResolver(),mAirplaneKEY, 0);
        mAirplane.setChecked(Airplane != 0);
        mAirplane.setOnPreferenceChangeListener(this);
        mSimSdBlock=(SaltSwitchPreference) findPreference("SimSdBlock");
        int SimSdBlock = Settings.System.getInt(getActivity().getContentResolver(),"LeoSimSdBlock", 0);
        mSimSdBlock.setChecked(SimSdBlock != 0);
        mSimSdBlock.setOnPreferenceChangeListener(this);
        mUSB=(SaltSwitchPreference) findPreference("wake_unplugged");
        int usb = Settings.System.getInt(getActivity().getContentResolver(),"usb_wake_unplugged", 0);
        mUSB.setChecked(usb != 0);
        mUSB.setOnPreferenceChangeListener(this);
        mSTK=(SaltSwitchPreference) findPreference(mSTKKEY);
        int STK = Settings.System.getInt(getActivity().getContentResolver(),mSTKKEY, 0);
        mSTK.setChecked(STK != 0);
        mSTK.setOnPreferenceChangeListener(this);
        mBatteryLog= (SaltPreference) findPreference("leo_battery_log");
        mBootAnimation= (SaltPreference) findPreference("leo_boot_anim");
        mTaobap= (SaltPreference) findPreference("leo_taobao");
        mDoze= (SaltPreference) findPreference("leo_doze");
        Fluid();
        mBatteryRefreshBeta= (SaltPreference) findPreference("BatteryRefreshBeta");
        mBusyCrack=(SaltPreference) findPreference("crack_spare");
        mThemeCrack=(SaltPreference) findPreference("crack_theme");

    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode ==BOOT_QMG_SELECTOR) {
            if (resultCode ==Activity.RESULT_OK && data != null && data.getExtras().containsKey("file")) {
                String path = data.getExtras().getString("file");
                AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
                builder.setTitle(getStringIdentifier(getContext(),"animation_boot_qmg"));//设置对话框的标题
                builder.setMessage(getStringIdentifier(getContext(),"animation_boot_confirm")+path+getStringIdentifier(getContext(),"animation_boot_confirm_qmg_info"));
                builder.setPositiveButton(android.R.string.yes, (dialog, which) -> new BackupRestoreUnit(getActivity()).FlashBootAnimation(path,0)
                );

                builder.create().show();
            }
        }else if (requestCode ==BOOT_zip_QMG_SELECTOR) {
            if (resultCode ==Activity.RESULT_OK && data != null && data.getExtras().containsKey("file")) {
                String path = data.getExtras().getString("file");
                AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
                builder.setTitle(getStringIdentifier(getContext(),"animation_boot_zip"));//设置对话框的标题
                builder.setMessage(getStringIdentifier(getContext(),"animation_boot_confirm")+path+getStringIdentifier(getContext(),"animation_boot_confirm_zip_info"));
                builder.setPositiveButton(android.R.string.yes, (dialog, which) -> new BackupRestoreUnit(getActivity()).FlashBootAnimation(path,1)
                );

                builder.create().show();
            }
        }
    }
    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference(mBatteryRefreshBeta.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mBusyCrack.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mThemeCrack.getKey()).setEnabled(findPreferenceEnabled);
    }


    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }

    public void batteryRefreshBeta(){
        if(Math.round(cgvvdf())==100){
            ScriptsLogClear(getActivity(),"echo 1 > /sys/class/power_supply/battery/batt_reset_soc",1000);
        }else{
            showSnackn("当前电量不足，请在电池充满后重试");
        }

    }

   private void BusyCrack(){
        String str;
       if(Phonebootloader(3).equals("G97")){
           str="cp -p -a -R /system_root/system/etc/salt/DAAgent/* /system_root/system/app/DAAgent";
       }else{
           str="cp -p -a -R /system/etc/salt/DAAgent/* /system/app/DAAgent";
       }
       ScriptsBoot(getActivity(),str,"破解应用分身",1000);

    }
    private void BusTheme(){
        String str;
        if(Phonebootloader(3).equals("G97")){
            str="cp -p -a -R /system_root/system/etc/salt/ThemeCenter/* /system_root/system/priv-app/ThemeCenter";
        }else{
            str="cp -p -a -R /system/etc/salt/ThemeCenter/* /system/priv-app/ThemeCenter";
        }
        ScriptsBoot(getActivity(),str,"破解主题",1000);

    }
}
