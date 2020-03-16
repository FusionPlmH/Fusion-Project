package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Intent;
import android.provider.Settings;
import androidx.preference.Preference;
import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltPreference;
import org.salt.preference.SaltSettingCategoryPreference;
import org.salt.preference.SaltSwitchPreference;

import static com.salt.config.tweaks.activity.FragSubActivity.FragmentType.KeyguardLunar;
import static com.salt.config.tweaks.activity.FragSubActivity.FragmentType.StatusBarTemp;
import static com.salt.utils.SaltProper.SystemUrl.ChineseCSC;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.startUtils.startSub;

public class KeyguardDetailFragment  extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener {
    private String mBiometricsKEY="keyguard_biometrics_unlock";
    private String mKeyguardStatusbarKEY="leo_salt_keyguard_carrierkeyguard_statusbar_view";
    private SaltSwitchPreference mKeyguardBiometrics;
    private SaltSwitchPreference mKeyguardStatusbar;
    private SaltPreference mKeyguardLunar;
    private SaltSettingCategoryPreference mSaltSettingCategoryPreference;
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }
    @Override
    protected void getSaltPreferenceEnabled() {

    }



    public void disableKeyguardLunar(){
        if (ChineseCSC()) {
            getPreferenceScreen().addPreference(mSaltSettingCategoryPreference);
        }else {
            getPreferenceScreen().removePreference(mSaltSettingCategoryPreference);
        }
    }


    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent("SALT_UPDATE_LOCKCARRIER_SETTINGS"));
        ContentResolver resolver = getActivity().getContentResolver();
        if(preference == mKeyguardBiometrics) {
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
    public boolean onPreferenceTreeClick(Preference preference) {
       if (preference == mKeyguardLunar) {
           startSub(getActivity(), KeyguardLunar);
            return true;
        }else{
            return super.onPreferenceTreeClick(preference);
        }

    }





    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.keyguard_detail_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        ContentResolver resolver = getActivity().getContentResolver();
        mKeyguardBiometrics=(SaltSwitchPreference) findPreference("wake_Biometrics");
        mKeyguardBiometrics.setChecked(Settings.System.getInt(resolver,mBiometricsKEY, 0)==1);
        mKeyguardBiometrics.setOnPreferenceChangeListener(this);
        mKeyguardStatusbar=(SaltSwitchPreference) findPreference("keyguard_statusbar");
        mKeyguardStatusbar.setChecked( Settings.System.getInt(resolver,mKeyguardStatusbarKEY, 0)==1);
        mKeyguardStatusbar.setOnPreferenceChangeListener(this);
        mKeyguardLunar= (SaltPreference) findPreference("KeyguardLunar");
        mKeyguardLunar.setTitle(getApksStringInt("lock_lunar"));
        mSaltSettingCategoryPreference= (SaltSettingCategoryPreference) findPreference("CNKeyguardLunar");
        mSaltSettingCategoryPreference.setTitle(getApksStringInt("lock_lunar"));
        disableKeyguardLunar();
    }
}
