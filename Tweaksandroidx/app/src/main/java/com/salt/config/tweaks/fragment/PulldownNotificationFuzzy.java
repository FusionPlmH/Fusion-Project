package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltPreference;
import org.salt.preference.SaltSeekBarPreference;

import static com.salt.config.tweaks.activity.FragSubActivity.FragmentType.KeyguardLunar;
import static com.salt.utils.startUtils.startSub;

public class PulldownNotificationFuzzy extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener {
    private static final String KEYdefault= "leo_salt_qs_blur";
    private static final String KEY=KEYdefault+"_style";
    private SaltSeekBarPreference mSize;
    @Override
    protected void getSaltPreferenceEnabled() {

    }


    private SaltPreference mbg;
    @Override
    public boolean onPreferenceTreeClick(Preference preference) {
        if (preference == mbg) {
            startActivityForResult(new Intent().setAction("android.intent.action.PICK").setType("image/png"), 0);
            return true;
        }else{
            return super.onPreferenceTreeClick(preference);
        }

    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {

        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY, width);
            return true;
        }
        return false;
    }
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            String[] strArr = new String[]{"_data"};
            Cursor query = getContentResolver().query(intent.getData(), strArr, null, null, null);
            query.moveToFirst();
            Settings.System.putString(getContentResolver(), "leo_salt_recents_bg_style_wallpaper_url", query.getString(query.getColumnIndex(strArr[0])));
            query.close();
        }
    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }
    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.pulldown_fuzzy_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        ContentResolver resolver = getActivity().getContentResolver();
        mSize = (SaltSeekBarPreference) findPreference("qs_blursyule");
        int clockMultiSize = Settings.System.getInt(resolver,
                KEY, 15);
        mSize.setValue(clockMultiSize);

        mSize.setOnPreferenceChangeListener(this);
        mbg= (SaltPreference) findPreference("bg");
    }
}
