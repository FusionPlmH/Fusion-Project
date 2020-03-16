package com.salt.config.tweaks.fragment;


import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltDropDownPreference;
import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSeekBarPreference;

import static org.salt.preference.utils.SaltPrefeUtils.defaultKey;

public class PulldownDeviceInfoFragment extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener {
    private SaltSeekBarPreference mSize,mStatusbarSize;
    private static final String KEYdefault=defaultKey+"device_info";
    private static final String KEY1= KEYdefault+"_statusbar_style";
    private static final String KEY2= KEYdefault+"_size";
    private static final String KEY3= KEYdefault+"_one_style";
    private static final String KEY4= KEYdefault+"_two_style";
    private static final String KEY5= KEYdefault+"_three_style";
    private static final String KEY6= KEYdefault+"_four_style";
    private static final String KEY7= KEYdefault+"_five_style";
    private static final String KEY8= KEYdefault+"_list";

    private SaltListPreference mOne,mTwo,mThree,mFour,mFive;
    private SaltDropDownPreference mEnabled;
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getString(R.string.broadcast_panel)));
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mEnabled) {
            String key=KEY8;
            int location = Integer.valueOf((String) newValue);
            int index =mEnabled.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mEnabled.setSummary(mEnabled.getEntries()[index]);
            return true;
        }else if (preference ==  mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY2, width);
            return true;
        }else if (preference == mOne) {
            String key=KEY3;
            int location = Integer.valueOf((String) newValue);
            int index = mOne.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mOne.setSummary( mOne.getEntries()[index]);
            return true;
        }else if (preference == mTwo) {
            String key=KEY4;
            int location = Integer.valueOf((String) newValue);
            int index =mTwo.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mTwo.setSummary(mTwo.getEntries()[index]);
            return true;
        }else if (preference ==  mThree) {
            String key=KEY5;
            int location = Integer.valueOf((String) newValue);
            int index = mThree.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mThree.setSummary( mThree.getEntries()[index]);
            return true;
        }else if (preference == mFour) {
            String key=KEY6;
            int location = Integer.valueOf((String) newValue);
            int index =mFour.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mFour.setSummary(mFour.getEntries()[index]);
            return true;
        }else if (preference == mFive) {
            String key=KEY7;
            int location = Integer.valueOf((String) newValue);
            int index =mFive.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mFive.setSummary(mFive.getEntries()[index]);
            return true;
        }
        return false;
    }


    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.pulldown_deviceinfo_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        ContentResolver resolver = getActivity().getContentResolver();

        mSize= (SaltSeekBarPreference) findPreference("Infosize");
        int clockEndPadding = Settings.System.getInt(resolver,
                KEY2, 13);
        mSize.setValue(clockEndPadding);
        mSize.setOnPreferenceChangeListener(this);

        mOne= (SaltListPreference) findPreference("InfoOnestyle");
        int One = Settings.System.getInt(resolver,
                KEY3, 0);
        mOne.setValue(String.valueOf(One ));
        mOne.setSummary( mOne.getEntry());
        mOne.setOnPreferenceChangeListener(this);
        mTwo= (SaltListPreference) findPreference("InfoTwostyle");
        int Two = Settings.System.getInt(resolver,
                KEY4, 1);
        mTwo.setValue(String.valueOf(Two));
        mTwo.setSummary(mTwo.getEntry());
        mTwo.setOnPreferenceChangeListener(this);

        mThree= (SaltListPreference) findPreference("InfoThreestyle");
        int Three = Settings.System.getInt(resolver,
                KEY5, 2);
        mThree.setValue(String.valueOf(Three));
        mThree.setSummary(mThree.getEntry());
        mThree.setOnPreferenceChangeListener(this);

        mFour= (SaltListPreference) findPreference("InfoFourstyle");
        int Four = Settings.System.getInt(resolver,
                KEY6, 0);
        mFour.setValue(String.valueOf(Four));
        mFour.setSummary( mFour.getEntry());
        mFour.setOnPreferenceChangeListener(this);

        mFive= (SaltListPreference) findPreference("InfoFivestyle");
        int Five = Settings.System.getInt(resolver,
                KEY7, 0);
        mFive.setValue(String.valueOf(Five));
        mFive.setSummary( mFour.getEntry());
        mFive.setOnPreferenceChangeListener(this);

        mEnabled= (SaltDropDownPreference) findPreference("Infoenabledstyle");
        int Enabled = Settings.System.getInt(resolver,
                KEY8, 3);
        mEnabled.setValue(String.valueOf(Enabled));
        mEnabled.setSummary( mEnabled.getEntry());
        mEnabled.setOnPreferenceChangeListener(this);
    }
    @Override
    protected void getSaltPreferenceEnabled() {

    }


    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }
}
