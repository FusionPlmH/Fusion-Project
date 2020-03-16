package com.leo.salt.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

import com.leo.salt.preference.ReverseDependencyMonitor;
import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tweaks.R;


import static com.leo.salt.tweaks.resource.Resource.getColorAttr;

/*      Created by Roberto Mariani and Anna Berkovitch, 18/08/2016
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


public class SaltSettingPreference extends Preference {

    private String mReverseDependencyKey;

    public SaltSettingPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.LeoPreference);
        mReverseDependencyKey = typedArray.getString(R.styleable.LeoPreference_reverseDependency);
        typedArray.recycle();
        setWidgetLayoutResource(R.layout.widget_icon);
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
    protected void onBindView(View preferenceViewHolder) {
        super.onBindView(preferenceViewHolder);
        TextView textView = (TextView) preferenceViewHolder.findViewById(android.R.id.summary);
        textView.setTextColor(getContext().getColor(R.color.colorPrimaryMain_setting));
    }
}
