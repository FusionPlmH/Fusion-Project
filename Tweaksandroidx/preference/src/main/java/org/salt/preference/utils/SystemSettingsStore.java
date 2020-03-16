package org.salt.preference.utils;

import android.content.ContentResolver;
import android.preference.PreferenceDataStore;
import android.provider.Settings;

public class SystemSettingsStore extends androidx.preference.PreferenceDataStore
        implements PreferenceDataStore {

    private ContentResolver mContentResolver;

    public SystemSettingsStore(ContentResolver contentResolver) {
        mContentResolver = contentResolver;
    }

    public boolean getBoolean(String key, boolean defValue) {
        return getInt(key, defValue ? 1 : 0) != 0;
    }

    public float getFloat(String key, float defValue) {
        return Settings.System.getFloat(mContentResolver, key, defValue);
    }

    public int getInt(String key, int defValue) {
        return Settings.System.getInt(mContentResolver, key, defValue);
    }

    public long getLong(String key, long defValue) {
        return Settings.System.getLong(mContentResolver, key, defValue);
    }

    public String getString(String key, String defValue) {
        String result = Settings.System.getString(mContentResolver, key);
        return result == null ? defValue : result;
    }

    public void putBoolean(String key, boolean value) {
        putInt(key, value ? 1 : 0);
    }

    public void putFloat(String key, float value) {
        Settings.System.putFloat(mContentResolver, key, value);
    }

    public void putInt(String key, int value) {
        Settings.System.putInt(mContentResolver, key, value);
    }

    public void putLong(String key, long value) {
        Settings.System.putLong(mContentResolver, key, value);
    }

    public void putString(String key, String value) {
        Settings.System.putString(mContentResolver, key, value);
    }

}
