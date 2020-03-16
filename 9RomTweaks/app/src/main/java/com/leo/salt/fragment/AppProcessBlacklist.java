/*
 * Copyright (C) 2018 AICP
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

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceGroup;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.widget.ListView;


import com.leo.salt.preference.SaltSettingAppMultiSelectListPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.view.widget.PackageListAdapter;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;

public class AppProcessBlacklist extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {


   private static final String mBlacklistPackageStore="leo_salt_killer_white_list";
    private SaltSettingAppMultiSelectListPreference mProcessBlacklist;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "appprocess_whitelist_prefs");
        PreferenceScreen prefSet = getPreferenceScreen();
        mProcessBlacklist = (SaltSettingAppMultiSelectListPreference) prefSet.findPreference("process_whitelist");
        Set<String> excludedApps = getProcessExcludedApps();
        if (excludedApps != null) {
            mProcessBlacklist.setValues(excludedApps);
        }
        mProcessBlacklist.setOnPreferenceChangeListener(this);
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference == mProcessBlacklist) {
            storeProcessExcludedApps((Set<String>) newValue);
            return true;
        }
        return false;
    }


    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }

    private void storeProcessExcludedApps(Set<String> values) {
        StringBuilder builder = new StringBuilder();
        String delimiter = "";
        for (String value : values) {
            builder.append(delimiter);
            builder.append(value);
            delimiter = "|";
        }
        Settings.System.putString(mResolver,
                "leo_salt_killer_white_list", builder.toString());
    }

    private Set<String> getProcessExcludedApps() {
        String excluded = Settings.System.getString(mResolver,
                "leo_salt_killer_white_list");
        if (TextUtils.isEmpty(excluded)) {
            return null;
        }
        return new HashSet<String>(Arrays.asList(excluded.split("\\|")));
    }

}