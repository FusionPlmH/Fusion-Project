package com.tweaks.leo.preference;

import android.content.Context;

import android.graphics.Color;
import android.preference.Preference;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.tweaks.leo.R;



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


public class MyPreferenceAlerts extends MyPreference {


    public MyPreferenceAlerts(Context context, AttributeSet attrs) {
        super(context, attrs);
        setLayoutResource(R.layout.preference_screen);

    }

    @Override
    protected View onCreateView(ViewGroup parent) {
        View view = (View) super.onCreateView(parent);
        TextView vTitle =  (TextView) view.findViewById(android.R.id.title);
        vTitle.setVisibility(View.GONE);
        String t = getSummary().toString();

        if(t!=null) setSummary(Html.fromHtml(getSummary().toString()));



        return view;
    }

    @Override
    public void onBindView(View view) {
        super.onBindView(view);


    }


}
