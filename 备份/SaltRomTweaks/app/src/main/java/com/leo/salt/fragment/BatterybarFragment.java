/*
 * Copyright (C) 2018 Havoc-OS
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.leo.salt.fragment;

import android.content.ContentResolver;
import android.content.res.Resources;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.UserHandle;
import android.preference.Preference;

import android.provider.Settings;

import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.tweaks.base.BasePreferenceFragment;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;

public class BatterybarFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {

    private SaltSettingSeekBarPreference mSize;

    private static final String BATTERY_BAR_THICKNESS="leo_salt_statusbar_battery_bar_thickness";



    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "statusbar_battery_bar_prefs");
        mSize= (SaltSettingSeekBarPreference) findPreference("battery_bar_thickness");
        int clockSize = Settings.System.getInt(resolver,
                BATTERY_BAR_THICKNESS, 1);
        mSize.setValue(clockSize);

        mSize.setOnPreferenceChangeListener(this);
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    BATTERY_BAR_THICKNESS, width);
            return true;
        }
        return false;
    }
}
