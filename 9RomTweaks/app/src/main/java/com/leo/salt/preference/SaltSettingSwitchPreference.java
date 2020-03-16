/*
 * Copyright (C) 2017 AICP
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

import android.content.ContentResolver;
import android.content.Context;

import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Build;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.SwitchPreference;
import android.provider.Settings;
import android.support.annotation.RequiresApi;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

import com.leo.salt.tweaks.R;

import java.util.ArrayList;

import static com.leo.salt.tweaks.resource.Resource.getColorAttr;


public class SaltSettingSwitchPreference extends SwitchPreference implements Preference.OnPreferenceChangeListener,
        ReverseDependencyMonitor {
    private ContentResolver mContentResolver;
    private String mKey="leo_salt_"+getKey();
    private ArrayList<Preference> mReverseDependents;
    private String mReverseDependencyKey;
    public SaltSettingSwitchPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        setSummaryOn(R.string.on);
        setSummaryOff(R.string.off);
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.LeoPreference);
        mReverseDependencyKey = typedArray.getString(R.styleable.LeoPreference_reverseDependency);
        typedArray.recycle();
        mContentResolver = context.getContentResolver();
        setOnPreferenceChangeListener(this);
    }
    @Override
    protected void onSetInitialValue(boolean restoreValue, Object defaultValue) {
        int dbInt = 0;
        try {
            dbInt = Settings.System.getInt(mContentResolver,mKey);
        } catch (Settings.SettingNotFoundException e) {
            if (defaultValue != null) {
                dbInt = (boolean) defaultValue ? 1 : 0;
                Settings.System.putInt(mContentResolver, mKey, dbInt);
            }
        }
        persistBoolean(dbInt != 0);
        setChecked(dbInt != 0);

    }
    @Override
    protected void onAttachedToActivity() {
        super.onAttachedToActivity();
        if (!TextUtils.isEmpty(mReverseDependencyKey)) {
            Preference preference = findPreferenceInHierarchy(mReverseDependencyKey);
            if (preference != null && (preference instanceof SaltSettingSwitchPreference || preference instanceof CheckBoxPreference)) {
                ReverseDependencyMonitor reverseDependencyMonitor = (ReverseDependencyMonitor) preference;
                reverseDependencyMonitor.registerReverseDependencyPreference(this);
            }
        }
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        boolean isTrue = (boolean) newValue;
        int dbInt = isTrue ? 1 : 0;
        Settings.System.putInt(mContentResolver,mKey, dbInt);

        if (mReverseDependents != null && mReverseDependents.size() > 0) {
            for (Preference pref : mReverseDependents) {
                pref.setEnabled(!isTrue);
            }
        }
        return true;
    }

    @Override
    public void registerReverseDependencyPreference(Preference preference) {
        if (mReverseDependents == null) {
            mReverseDependents = new ArrayList<>();
        }
        if (preference != null && !mReverseDependents.contains(preference)) {
            mReverseDependents.add(preference);
            preference.setEnabled(!isChecked());
            Log.d("leo", "registerReverseDependencyPreference preference is " + preference.getClass().getSimpleName());
        }

    }
    protected void onBindView(View preferenceViewHolder) {
        super.onBindView(preferenceViewHolder);
        TextView textView = (TextView) preferenceViewHolder.findViewById(android.R.id.summary);
        textView.setTextColor(getColorAttr(getContext(),R.attr.colorAccent));
    }
}




