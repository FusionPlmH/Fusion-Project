package com.leo.salt.preference;

import android.content.Context;
import android.content.res.TypedArray;

import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

import com.leo.salt.tweaks.R;


public class SaltSettingCardPreference extends Preference {
    private boolean aB;
    private boolean eN;
    public SaltSettingCardPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);

        this.eN =true;
        this.aB =true;
        setLayoutResource(R.layout.preference_card_border);
        setEnabled(false);
        setSelectable(false);
    }

    public SaltSettingCardPreference(Context context, boolean z, boolean z2) {
        super(context);
        this.eN = z;
        this.aB = z2;
        setLayoutResource(R.layout.preference_card_border);
        setEnabled(false);
        setSelectable(false);
    }

    public View getView(View view, ViewGroup viewGroup) {

        View view2 = super.getView(view, viewGroup);

        View findViewById2 = view2.findViewById(R.id.bottom);
        findViewById2.setVisibility(View.VISIBLE);

        return view2;
    }
}