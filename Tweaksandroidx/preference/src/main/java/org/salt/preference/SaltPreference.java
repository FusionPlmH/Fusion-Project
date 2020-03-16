package org.salt.preference;


import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;

import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;

import static org.salt.preference.utils.SaltPrefeUtils.showArrows;

public class SaltPreference extends Preference {


    public SaltPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    public void onBindViewHolder(PreferenceViewHolder holder) {
        super.onBindViewHolder(holder);
        showArrows(getContext(), holder);
       // TextView textView = (TextView) holder.findViewById(android.R.id.summary);

    }

}
