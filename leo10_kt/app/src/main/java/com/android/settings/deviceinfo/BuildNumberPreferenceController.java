package com.android.settings.deviceinfo;



import android.content.Context;
import android.util.AttributeSet;

import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;
import static com.salt.settings.SaltUtils.*;
public class BuildNumberPreferenceController extends Preference {


    public BuildNumberPreferenceController(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
    }

    public void displayPreference(PreferenceScreen preferenceScreen) {

        Preference findPreference = preferenceScreen.findPreference("build_number");
        findPreference.setSummary(getLeoROMdonate());
    }

    public String getPreferenceKey() {
        return "build_number";
    }

    public CharSequence getSummary() {
        return getLeoROMdonate();
    }

}
