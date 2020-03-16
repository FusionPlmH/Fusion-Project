package com.salt.config.tweaks.fragment;



import android.content.ComponentName;
import android.content.Intent;
import android.graphics.drawable.Drawable;

import android.provider.Settings;
import android.text.TextUtils;
import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;
import com.salt.config.SaltApp;
import org.salt.preference.SaltAppMultiSelectListPreference;
import org.salt.preference.SaltIconListPreference;
import org.salt.preference.SaltSwitchPreference;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static com.salt.frame.LeadFrame.getCustomDrawable;
import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.frame.utils.SaltUtils.SaltSettings.getLeoInt;
import static com.salt.frame.utils.SaltUtils.SaltSettings.getLeoString;
import static com.salt.utils.SaltProper.getCustomArray;


public class StatusBarIconFragment extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener {
    private SaltIconListPreference mWIFIPreference,mSignalPreference;
    private SaltSwitchPreference mSignalLocation,mSignal5G,mSignal5GStyle;
    public static final  String mSignalLocationKey="leo_salt_statusbar_signal_orientation";
    public static final  String mSignal5GKey="leo_salt_statusbar_signal_icon_5g_enabled";
    public static final  String mSignal5GStyleKey="leo_g5_icon_style";
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }
    @Override
    protected void getSaltPreferenceEnabled() {

    }


    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.statusbar_icon_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {

        mSignalLocation= (SaltSwitchPreference) findPreference("SignalLocation");
        mSignalLocation.setChecked(getLeoInt(getActivity(),mSignalLocationKey,0) == 1);
        mSignalLocation.setOnPreferenceChangeListener(this);

        mSignal5G= (SaltSwitchPreference) findPreference("Signal5G");
        mSignal5G.setChecked(getLeoInt(getActivity(),mSignal5GKey,0) == 1);
        mSignal5G.setOnPreferenceChangeListener(this);

        mSignal5GStyle= (SaltSwitchPreference) findPreference("Signal5GStyle");
        mSignal5GStyle.setChecked(getLeoInt(getActivity(),mSignal5GStyleKey,0) == 1);
        mSignal5GStyle.setOnPreferenceChangeListener(this);

        mWIFIPreference =(SaltIconListPreference) findPreference("statusbar_signal_wifi_style");
        mWIFIPreference.setEntries(getCustomArray("wifi_style"));
        mWIFIPreference.setEntryValues(getCustomArray("wifi_style_values"));
        mWIFIPreference.setDrawableArray(WIFIIcon);
        mWIFIPreference.setSummary(getStringIdentifier(getContext(),"icon_select"));
        mWIFIPreference.setOnPreferenceChangeListener(this);

        mSignalPreference=(SaltIconListPreference) findPreference("statusbar_signal_style");
        mSignalPreference.setEntries(getCustomArray("signal_style"));
        mSignalPreference.setEntryValues(getCustomArray("signal_style_values"));
        mSignalPreference.setDrawableArray(SignalIcon);
        mSignalPreference.setSummary(getStringIdentifier(getContext(),"icon_select"));
        mSignalPreference.setOnPreferenceChangeListener(this);


    }





    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
       getActivity().sendBroadcast(new Intent("SALT_UPDATE_STATUSBARICON_SETTINGS"));
       // getActivity().sendBroadcast(new Intent("com.samsung.android.app.screenrecorder.on"));
        if (preference == mSignalLocation) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    mSignalLocationKey, value ? 1 : 0);
            return true;
        }else if (preference == mSignal5G) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    mSignal5GKey, value ? 1 : 0);

            return true;
        }else if (preference ==  mSignal5GStyle) {
            boolean value = (Boolean) newValue;
           Settings.System.putInt(getActivity().getContentResolver(),
                  mSignal5GStyleKey, value ? 1 : 0);


            return true;
        }else {
            return false;
        }
    }


    Drawable[] WIFIIcon = {CustomDrawable("stat_sys_wifi"),
            CustomDrawable("stat_sys_wifi_signal_a_4"),
            CustomDrawable("stat_sys_wifi_signal_b_4"),
            CustomDrawable("stat_sys_wifi_signal_c_4"),
            CustomDrawable("stat_sys_wifi_signal_d_4"),
            CustomDrawable("stat_sys_wifi_signal_e_4"),
            CustomDrawable("stat_sys_wifi_signal_f_4"),
            CustomDrawable("stat_sys_wifi_signal_g_4"),
            CustomDrawable("stat_sys_wifi_signal_h_4"),
            CustomDrawable("stat_sys_wifi_signal_i_4"),
            CustomDrawable("stat_sys_wifi_signal_j_4"),
            CustomDrawable("stat_sys_wifi_signal_k_4"),
            CustomDrawable("stat_sys_wifi_signal_l_4"),
            CustomDrawable("stat_sys_wifi_signal_m_4"),
            CustomDrawable("stat_sys_wifi_signal_n_4"),
            CustomDrawable("stat_sys_wifi_signal_o_4"),
    };

    Drawable[] SignalIcon = {CustomDrawable("stat_sys_signal"),
            CustomDrawable("stat_sys_signal_a_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_b_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_c_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_d_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_e_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_f_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_g_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_h_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_i_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_j_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_k_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_l_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_m_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_n_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_o_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_p_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_q_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_r_5_auto_rotate")
    };
}