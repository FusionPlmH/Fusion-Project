package com.salt.config.tweaks.fragment;



import android.content.ContentResolver;
import android.content.Intent;
import android.database.ContentObserver;
import android.graphics.drawable.Drawable;

import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;

import androidx.annotation.Nullable;
import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;
import com.salt.config.SaltApp;
import org.salt.preference.SaltAppMultiSelectListPreference;
import org.salt.preference.SaltIconListPreference;
import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSeekBarPreference;
import org.salt.preference.SaltSwitchPreference;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static com.salt.frame.LeadFrame.getCustomDrawable;
import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.frame.utils.SaltUtils.SaltSettings.getLeoInt;
import static com.salt.frame.utils.SaltUtils.SaltSettings.getLeoString;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getCustomArray;
import static org.salt.preference.utils.SaltPrefeUtils.defaultKey;

public class StatusBarNetworkTrafficFragment extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener {
    private SaltIconListPreference mNetworkTrafficArrow;
    private SaltSwitchPreference mNetworkTrafficDisplay,mNetworkTrafficArrowDisplay,mNetworkTrafficArrowPosition;
    private SaltSeekBarPreference mNetworkTrafficTextSize,mNetworkAutoHideThreshold,mNetworkTrafficStartPadding,mNetworkTrafficEndPadding,mNetworkTrafficIconPadding,mNetworkTrafficRefreshInterval;
    private final String  mNetworkTrafficDisplayKEY="leo_salt_statusbar_traffic_enabled";
    private final String  mNetworkTrafficArrowDisplayKEY="leo_salt_statusbar_traffic_arrow_enabled";
    private final String  mNetworkTrafficArrowPositionKEY="leo_salt_statusbar_traffic_arrow_position";
    private final String  mNetworkTrafficTextSizeKEY="leo_salt_statusbar_traffic_size";
    private final String  mNetworkAutoHideThresholdKEY="leo_salt_statusbar_traffic_autohide_threshold";
    private final String  mNetworkTrafficIconPaddingKEY="leo_salt_statusbar_traffic_icon_padding";
    private final String  mNetworkTrafficStartPaddingKEY="leo_salt_statusbar_traffic_start_padding";
    private final String  mNetworkTrafficEndPaddingKEY="leo_salt_statusbar_traffic_end_padding";
    private final String  mNetworkTrafficTextFontKEY="leo_salt_statusbar_traffic_font_style";
    private final String  mNetworkTrafficModeKEY="leo_salt_statusbar_traffic_mode";
    private final String  mNetworkTrafficRefreshIntervalKEY="leo_salt_statusbar_traffic_refreshinterval";
    private SaltListPreference mNetworkTrafficTextFont,mNetworkTrafficSeta;
    protected int getSaltPreferencesFromXML() {
        return R.xml.statusbar_networktraffic_prefs;
    }
    private boolean SamsungNetwork;

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Handler mHandler = new Handler();
        SettingsObserver settingsObserver = new SettingsObserver(mHandler);
        settingsObserver.observe();
        SamsungNetworkTraffic();
    }

    @Override
    protected void getSaltCreatePreferences() {

        mNetworkTrafficArrow =(SaltIconListPreference) findPreference("statusbar_traffic_arrow_style");
        mNetworkTrafficArrow.setEntries(getCustomArray("traffic_style_entries"));
        mNetworkTrafficArrow.setEntryValues(getCustomArray("traffic_style_values"));
        mNetworkTrafficArrow.setDrawableArray(LogoIcon);
        mNetworkTrafficArrow.setSummary(getStringIdentifier(getContext(),"icon_select"));
        mNetworkTrafficArrow.setOnPreferenceChangeListener(this);
        mNetworkTrafficDisplay=(SaltSwitchPreference) findPreference("NetworkTrafficDisplay");
        mNetworkTrafficDisplay.setChecked(getLeoInt(getActivity(),mNetworkTrafficDisplayKEY,0) == 1);
        mNetworkTrafficDisplay.setOnPreferenceChangeListener(this);
        mNetworkTrafficArrowDisplay=(SaltSwitchPreference) findPreference("NetworkTrafficArrowDisplay");
        mNetworkTrafficArrowDisplay.setChecked(getLeoInt(getActivity(),mNetworkTrafficArrowDisplayKEY,1) == 1);
        mNetworkTrafficArrowDisplay.setOnPreferenceChangeListener(this);
        mNetworkTrafficArrowPosition=(SaltSwitchPreference) findPreference("NetworkTrafficArrowPosition");
        mNetworkTrafficArrowPosition.setChecked(getLeoInt(getActivity(),mNetworkTrafficArrowPositionKEY,0) == 1);
        mNetworkTrafficArrowPosition.setOnPreferenceChangeListener(this);
        mNetworkTrafficTextSize= (SaltSeekBarPreference) findPreference("NetworkTrafficTextSize");
        int NetworkTrafficTextSize = getLeoInt(getActivity(),
                mNetworkTrafficTextSizeKEY, 9);
        mNetworkTrafficTextSize.setValue(NetworkTrafficTextSize);
        mNetworkTrafficTextSize.setOnPreferenceChangeListener(this);
        mNetworkAutoHideThreshold= (SaltSeekBarPreference) findPreference("NetworkAutoHideThreshold");
        int NetworkAutoHideThreshold = getLeoInt(getActivity(),
                mNetworkAutoHideThresholdKEY, 0);
        mNetworkAutoHideThreshold.setValue(NetworkAutoHideThreshold);
        mNetworkAutoHideThreshold.setOnPreferenceChangeListener(this);
        mNetworkTrafficIconPadding= (SaltSeekBarPreference) findPreference("NetworkTrafficIconPadding");
        int NetworkTrafficIconPadding = getLeoInt(getActivity(),
                mNetworkTrafficIconPaddingKEY, 1);
        mNetworkTrafficIconPadding.setValue(NetworkTrafficIconPadding);
        mNetworkTrafficIconPadding.setOnPreferenceChangeListener(this);
        mNetworkTrafficStartPadding= (SaltSeekBarPreference) findPreference("NetworkTrafficStartPadding");
        int NetworkTrafficStartPadding = getLeoInt(getActivity(),
                mNetworkTrafficStartPaddingKEY, 1);
        mNetworkTrafficStartPadding.setValue(NetworkTrafficStartPadding);
        mNetworkTrafficStartPadding.setOnPreferenceChangeListener(this);
        mNetworkTrafficEndPadding= (SaltSeekBarPreference) findPreference("NetworkTrafficEndPadding");
        int NetworkTrafficEndPadding = getLeoInt(getActivity(),
                mNetworkTrafficEndPaddingKEY, 1);
        mNetworkTrafficEndPadding.setValue(NetworkTrafficEndPadding);
        mNetworkTrafficEndPadding.setOnPreferenceChangeListener(this);
        mNetworkTrafficTextFont= (SaltListPreference) findPreference("NetworkTrafficTextFont");
        int NetworkTrafficTextFont=getLeoInt(getActivity(),
                mNetworkTrafficTextFontKEY, 0);
        mNetworkTrafficTextFont.setValue(String.valueOf(NetworkTrafficTextFont));
        mNetworkTrafficTextFont.setSummary(mNetworkTrafficTextFont.getEntry());
        mNetworkTrafficTextFont.setOnPreferenceChangeListener(this);
        mNetworkTrafficSeta= (SaltListPreference) findPreference("NetworkTrafficSeta");
        int NetworkTrafficSeta=getLeoInt(getActivity(),
                mNetworkTrafficModeKEY, 0);
        mNetworkTrafficSeta.setValue(String.valueOf(NetworkTrafficSeta));
        mNetworkTrafficSeta.setSummary(mNetworkTrafficSeta.getEntry());
        mNetworkTrafficSeta.setOnPreferenceChangeListener(this);
        mNetworkTrafficRefreshInterval=(SaltSeekBarPreference) findPreference("NetworkTrafficRefreshInterval");
        int NetworkTrafficRefreshInterval = getLeoInt(getActivity(),
                mNetworkTrafficRefreshIntervalKEY, 2);
        mNetworkTrafficRefreshInterval.setValue(NetworkTrafficRefreshInterval);
        mNetworkTrafficRefreshInterval.setOnPreferenceChangeListener(this);

    }
    public void SamsungNetworkTraffic(){
        SamsungNetwork=Settings.System.getInt(getContentResolver(), "network_speed",0 ) == 1;
        if(SamsungNetwork){
            mNetworkTrafficDisplay.setEnabled(false);

        }else{
            mNetworkTrafficDisplay.setEnabled(true);

        }
    }
    class SettingsObserver extends ContentObserver {
        SettingsObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver resolver =getContentResolver();
            resolver.registerContentObserver(Settings.System
                            .getUriFor("network_speed"), false,
                    this);

        }

        /*
         *  @hide
         */
        @Override
        public void onChange(boolean selfChange) {
            SamsungNetworkTraffic();
        }
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getApksStringInt(R.string.broadcast_stausbar)));
        if (preference == mNetworkTrafficDisplay) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    mNetworkTrafficDisplayKEY, value ? 1 : 0);
            SamsungNetworkTraffic();
            return true;
        }else if (preference ==mNetworkTrafficArrowDisplay) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    mNetworkTrafficArrowDisplayKEY, value ? 1 : 0);
            return true;
        }else if (preference ==mNetworkTrafficArrowPosition) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    mNetworkTrafficArrowPositionKEY, value ? 1 : 0);
            return true;
        }else if (preference == mNetworkTrafficTextSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(getActivity().getContentResolver(),
                    mNetworkTrafficTextSizeKEY, width);
            return true;
        }else if (preference ==mNetworkAutoHideThreshold) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(getActivity().getContentResolver(),
                    mNetworkAutoHideThresholdKEY, width);
            return true;
        }else if (preference ==mNetworkTrafficIconPadding) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(getActivity().getContentResolver(),
                    mNetworkTrafficIconPaddingKEY, width);
            return true;
        }else if (preference ==mNetworkTrafficStartPadding) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(getActivity().getContentResolver(),
                    mNetworkTrafficStartPaddingKEY, width);
            return true;
        }else if (preference == mNetworkTrafficEndPadding) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(getActivity().getContentResolver(),
                    mNetworkTrafficEndPaddingKEY, width);
            return true;
        } else if (preference == mNetworkTrafficRefreshInterval) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(getActivity().getContentResolver(),
                    mNetworkTrafficRefreshIntervalKEY, width);
            return true;
        }else  if (preference ==mNetworkTrafficTextFont) {
            int location = Integer.valueOf((String) newValue);
            int index =mNetworkTrafficTextFont.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    mNetworkTrafficTextFontKEY, location);
            mNetworkTrafficTextFont.setSummary(mNetworkTrafficTextFont.getEntries()[index]);
            return true;
        }  else  if (preference ==mNetworkTrafficSeta) {
            int location = Integer.valueOf((String) newValue);
            int index =mNetworkTrafficSeta.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    mNetworkTrafficModeKEY, location);
            mNetworkTrafficSeta.setSummary(mNetworkTrafficSeta.getEntries()[index]);
            return true;
        }else {
            return false;
        }
    }

    @Override
    protected void getSaltPreferenceEnabled() {

    }



    Drawable[] LogoIcon = {CustomDrawable("stat_sys_network_traffic_a_updown") ,
            CustomDrawable("stat_sys_network_traffic_b_updown"),
            CustomDrawable("stat_sys_network_traffic_c_updown"),
            CustomDrawable("stat_sys_network_traffic_d_updown"),
            CustomDrawable("stat_sys_network_traffic_e_updown"),
            CustomDrawable("stat_sys_network_traffic_f_updown"),
            CustomDrawable("stat_sys_network_traffic_g_updown"),
            CustomDrawable("stat_sys_network_traffic_h_updown")
    };
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }
}