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

package com.leo.global.preference;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.TypedArray;

import android.preference.ListPreference;
import android.preference.Preference;
import android.provider.Settings;


import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.leo.global.tweaks.R;

import java.util.Arrays;
import java.util.List;

public class SaltSettingListPreference extends ListPreference implements Preference.OnPreferenceChangeListener{
    private List<CharSequence> mEntries, mValues;
    private static final String TAG = "ListPreference";
    private  int mIsSilent;
    public SaltSettingListPreference(Context context, AttributeSet attrs) {
        super(context, attrs);

        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.LeoPreference);

        mIsSilent = typedArray.getInt(R.styleable.LeoPreference_isSilent,0);
        typedArray.recycle();
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
        if (mIsSilent==1) {
            dbValue = Settings.Global.getString(mContentResolver, getKey());
        } else if (mIsSilent==2) {
            dbValue = Settings.Secure.getString(mContentResolver, getKey());
        } else if (mIsSilent==0) {
            dbValue = Settings.System.getString(mContentResolver, getKey());
        }
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
            if (mIsSilent==1) {
                Settings.Global.putString(mContentResolver, getKey(), value);
            } else if (mIsSilent==2){
                Settings.Secure.putString(mContentResolver, getKey(), value);
            } else if (mIsSilent==0){
                Settings.System.putString(mContentResolver, getKey(), value);
            }
        }
        int index = this.mValues.indexOf(value);
        if (index != -1) {
            setSummary((CharSequence) this.mEntries.get(index));
            setValue(value);
        }


    }

    @Override
    public void setValue(String value) {
        String oldValue = getValue();
        super.setValue(value);
        if(!value.equals(oldValue)) {
         //   notifyDependencyChange(shouldDisableDependents());
        }

    }


    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        String value = (String) newValue;
        if (mIsSilent==1) {
            Settings.Global.putString(mContentResolver, getKey(), value);
        } else if (mIsSilent==2){
            Settings.Secure.putString(mContentResolver, getKey(), value);
        } else if (mIsSilent==0){
            Settings.System.putString(mContentResolver, getKey(), value);
        }
        int index = this.mValues.indexOf(newValue);
        if (index != -1) {
            setSummary((CharSequence) this.mEntries.get(index));
        }

        return true;
    }
}
