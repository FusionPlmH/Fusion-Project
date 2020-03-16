package com.leo.salt.preference;

import android.content.Context;

import android.preference.Preference;
import android.util.AttributeSet;

import com.leo.salt.R;



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


public class MyPreference extends Preference {


    public MyPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        setWidgetLayoutResource(R.layout.widget_icon_accent);
    }



}
