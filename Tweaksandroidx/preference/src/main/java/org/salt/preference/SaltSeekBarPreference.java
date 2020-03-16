package org.salt.preference;

import android.content.Context;

import android.util.AttributeSet;

import org.salt.preference.utils.SaltBaseSeekPreference;
import org.salt.preference.utils.SystemSettingsStore;


public class SaltSeekBarPreference extends SaltBaseSeekPreference {


    public SaltSeekBarPreference(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        setPreferenceDataStore(new SystemSettingsStore(context.getContentResolver()));
    }

    public SaltSeekBarPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        setPreferenceDataStore(new SystemSettingsStore(context.getContentResolver()));
    }

    public SaltSeekBarPreference(Context context) {
        super(context, null);
        setPreferenceDataStore(new SystemSettingsStore(context.getContentResolver()));
    }

}
