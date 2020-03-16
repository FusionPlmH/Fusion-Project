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

package org.salt.preference;

import android.app.AlertDialog;
import android.content.Context;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.TypedArray;
import android.os.Build;


import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;

import android.widget.TextView;

import androidx.appcompat.widget.SwitchCompat;
import androidx.preference.PreferenceViewHolder;
import androidx.preference.SwitchPreference;
import androidx.preference.SwitchPreferenceCompat;

import static org.salt.preference.colorpicker.Utils.getColorAttr;
import static org.salt.preference.utils.SaltPrefeUtils.putIntSaltSettings;

public class SaltMainSwitchPreference extends SwitchPreference {
    private  int mModeSettings;
    public SaltMainSwitchPreference(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        setLayoutResource(R.layout.main_switch_preference);
        intPreference(context, attrs);
    }
    public SaltMainSwitchPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        setLayoutResource(R.layout.main_switch_preference);
        intPreference(context, attrs);
    }
    public SaltMainSwitchPreference(Context context) {
        super(context);
        setLayoutResource(R.layout.main_switch_preference);
    }

    public  void  intPreference(Context context, AttributeSet attrs) {
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.LeoPreference);
        mModeSettings =typedArray.getInt(R.styleable.LeoPreference_modeSettings,0);
        typedArray.recycle();
    }

    public TextView mTextView;
    private SwitchCompat mSwitch;


    @Override
    public void onBindViewHolder(PreferenceViewHolder holder) {
        super.onBindViewHolder(holder);
        mSwitch = (SwitchCompat) holder.findViewById(R.id.switchWidget);
        mSwitch.setChecked(isChecked());
        mTextView = (TextView)holder.findViewById(android.R.id.title);

    }


    class OnClick implements  View.OnClickListener {
        @Override
        public void onClick(View v) {
            setChecked(!isChecked());
            putIntSaltSettings(mModeSettings,getContext(),getKey(), isChecked() ? 1 : 0);
        }
    }


    public void setEnabled(boolean z) {
        super.setEnabled(z);

    }


}
