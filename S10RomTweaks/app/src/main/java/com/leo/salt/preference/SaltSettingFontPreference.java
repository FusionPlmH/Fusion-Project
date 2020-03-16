package com.leo.salt.preference;

import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;

import android.preference.CheckBoxPreference;
import android.preference.DialogPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.provider.Settings;

import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.TextView;


import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.view.widget.OverScrollListView;

import java.util.Arrays;
import java.util.List;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.LEOFRAMEWORK;

/*      Created by Roberto Mariani and Anna Berkovitch, 30/06/2016
        This program is free software: you can redistribute it and/or modify
        it under the terms of the GNU General Public License as published by
        the Free Software Foundation, either version 3 of the License, or
        (at your option) any later version.

        This program is distributed in the hope that it will be useful,
        but WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
        GNU General Public License for more details.

        You should have received a copy of the GNU General Public License
        along with this program.  If not, see <http://www.gnu.org/licenses/>.*/

@SuppressWarnings("unused")
public class SaltSettingFontPreference extends SaltSettingDefaultListPreference implements Preference.OnPreferenceChangeListener{
    private List<CharSequence> mEntries, mValues;
    private static final String TAG = "SaltSettingFontPreference";
    private ContentResolver mContentResolver;
    public SaltSettingFontPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.LeoPreference);
        mReverseDependencyKey = typedArray.getString(R.styleable.LeoPreference_reverseDependency);
        typedArray.recycle();
        intV(context);
    }
    private String mKey="leo_salt_"+getKey();
    public void  intV(Context context) {

        mContentResolver = context.getContentResolver();
        mEntries = Arrays.asList(getEntries());
        mValues = Arrays.asList(getEntryValues());
        setOnPreferenceChangeListener(this);
    }


    String dbValue;
    @Override
    protected void onSetInitialValue(boolean restoreValue, Object defaultValue) {

            dbValue = Settings.System.getString(mContentResolver, mKey);

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

    @Override
    public void setValue(String value) {
        String oldValue = getValue();
        super.setValue(value);
        if(!value.equals(oldValue)) {
            //   notifyDependencyChange(shouldDisableDependents());
        }

    }
    private final String mReverseDependencyKey;
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
        String value = (String) newValue;


         Settings.System.putString(mContentResolver, mKey, value);

        int index = this.mValues.indexOf(newValue);
        if (index != -1) {
            setSummary((CharSequence) this.mEntries.get(index));
        }
        return true;
    }
}
