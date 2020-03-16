/*
 * Copyright (C) 2015 The Android Open Source Project
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

package com.leo.salt.preference;

import android.annotation.SuppressLint;
import android.content.Context;

import android.content.res.TypedArray;

import android.graphics.Typeface;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.preference.SwitchPreference;
import android.support.annotation.ColorInt;
import android.support.v4.content.res.TypedArrayUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.TextView;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;

import com.leo.salt.tweaks.R;


@SuppressLint("ResourceAsColor")
public class SaltSettingCategoryPreference extends PreferenceCategory {
    private String mReverseDependencyKey;

    public  SaltSettingCategoryPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.LeoPreference);
        mReverseDependencyKey = typedArray.getString(R.styleable.LeoPreference_reverseDependency);
        typedArray.recycle();

    }


    @Override
    protected void onAttachedToActivity() {
        super.onAttachedToActivity();
        if (!TextUtils.isEmpty(mReverseDependencyKey)) {
            Preference preference = findPreferenceInHierarchy(mReverseDependencyKey);
            if (preference != null && (preference instanceof SwitchPreference || preference instanceof CheckBoxPreference)) {
                ReverseDependencyMonitor reverseDependencyMonitor = (ReverseDependencyMonitor) preference;
                reverseDependencyMonitor.registerReverseDependencyPreference(this);
            }
        }
    }

    protected void onBindView(View preferenceViewHolder) {
        super.onBindView(preferenceViewHolder);
        TextView textView = (TextView) preferenceViewHolder.findViewById(16908310);
        textView.setGravity(Gravity.CENTER);
        textView.setTextSize(17);
        textView.setTypeface(Typeface.defaultFromStyle(Typeface.BOLD));


    }



}
