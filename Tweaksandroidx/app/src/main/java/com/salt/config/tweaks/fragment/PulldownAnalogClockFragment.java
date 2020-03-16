package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltIconListPreference;
import org.salt.preference.SaltSettingCategoryPreference;
import org.salt.preference.SaltSwitchPreference;

import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getCustomArray;

public class PulldownAnalogClockFragment extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener {
    private SaltSwitchPreference mEnabled;
    private SaltIconListPreference mAnalogClockStyle;

    private static final String ANALOGCLOCK = "leo_salt_panel_analogclock";
    private static final String ENABLED = ANALOGCLOCK+"_enabled";
    @Override
    protected void getSaltPreferenceEnabled() {

    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }


    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {

        getActivity().sendBroadcast(new Intent(getString(R.string.broadcast_panel)));
         if (preference == mEnabled) {

             boolean value = (Boolean) newValue;
             Settings.System.putInt(getActivity().getContentResolver(),
                     ENABLED, value ? 1 : 0);
            return true;
        }
        return false;
    }


    Drawable[] DialIcon = {CustomDrawable("analogclock_"+AnalogClockDial(0)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(1)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(2)+"_dial"),

            CustomDrawable("analogclock_"+AnalogClockDial(3)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(4)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(5)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(6)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(7)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(8)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(9)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(10)+"_dial")


    };
    public String AnalogClockDial(int style ){
        switch ( style) {
            case 1:
                return "custom";
            case 2:
                return "dot";
            case 3:
                return "baii";
            case 4:
                return "spectrum";
            case 5:
                return "spidey";
            case 6:
                return "hit";
            case 7:
                return "num";
            case 8:
                return "kaleidoscope";
            case 9:
                return "dian";
            case 10:
                return "yuan";
            default:
                return "sneeky";
        }

    }


    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.pulldown_analogclock_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        ContentResolver resolver = getActivity().getContentResolver();
        mEnabled = (SaltSwitchPreference) findPreference("analogclock_enabled");
        mEnabled.setChecked((Settings.System.getInt(resolver,
                ENABLED, 0) == 1));
        mEnabled.setOnPreferenceChangeListener(this);
        SaltSettingCategoryPreference mSaltSettingCategoryPreference=(SaltSettingCategoryPreference) findPreference("analogcolock");
        mSaltSettingCategoryPreference.setTitle(getApksStringInt("qs_analogcolock_tab"));
        mAnalogClockStyle = (SaltIconListPreference) findPreference("panel_analogclock_dial_style");
        mAnalogClockStyle.setEntries(getCustomArray("dial_style_entries"));
        mAnalogClockStyle.setEntryValues(getCustomArray("dial_style_values"));
        mAnalogClockStyle.setDrawableArray(DialIcon);
        mAnalogClockStyle.setSummary(getApksStringInt("icon_select"));
        mAnalogClockStyle.setOnPreferenceChangeListener(this);
    }
}
