/*
 * Copyright (C) 2017-2018 AICP
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.leo.salt.preference;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.preference.ListPreference;
import android.preference.Preference;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;

import com.leo.salt.tweaks.R;

import java.util.Arrays;
import java.util.List;

@TargetApi(Build.VERSION_CODES.O)
public class SaltSettingListPreference extends ListPreference implements Preference.OnPreferenceChangeListener{
    private List<CharSequence> mEntries, mValues;
    private static final String TAG = "ListPreference";

    public SaltSettingListPreference(Context context, AttributeSet attrs) {
        super(context, attrs);

        setWidgetLayoutResource(R.layout.widget_icon);
        intV(context);

    }


    private ContentResolver mContentResolver;



    public void  intV(Context context) {
        mContentResolver = context.getContentResolver();
        mEntries = Arrays.asList(getEntries());
        mValues = Arrays.asList(getEntryValues());
        setOnPreferenceChangeListener(this);
    }


    String dbValue;
    @Override
    protected void onSetInitialValue(boolean restoreValue, Object defaultValue) {

            dbValue = Settings.System.getString(mContentResolver,mKey);

        String value = "";
        if (restoreValue) {
            value = getPersistedString(null);
            if (!(dbValue == null || dbValue.equals(value))) {
                persistString(dbValue);
                value = dbValue;
            }
        } else if (dbValue != null) {
            value = dbValue;
            persistString(value);
        } else if (defaultValue != null) {
            value = (String) defaultValue;

                Settings.System.putString(mContentResolver, mKey, value);

        }
        int index = this.mValues.indexOf(value);
        if (index != -1) {
            setSummary((CharSequence) this.mEntries.get(index));
            setValue(value);
        }


    }
    private String mKey="leo_salt_"+getKey();
    @Override
    public void setValue(String value) {
        String oldValue = getValue();
        super.setValue(value);
        if(!value.equals(oldValue)) {
               notifyDependencyChange(shouldDisableDependents());
        }

    }


    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        String value = (String) newValue;

            Settings.System.putString(mContentResolver, mKey, value);

        int index = this.mValues.indexOf(newValue);
        if (index != -1) {
            setSummary((CharSequence) this.mEntries.get(index));
        }

        return true;
    }
}



