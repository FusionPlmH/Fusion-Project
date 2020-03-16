package com.fusionleo.salt.preference;

import android.content.Context;
import android.content.res.TypedArray;

import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;


import com.fusionleo.salt.R;




public class CardPreferenceBorder extends Preference {
    private boolean aB;
    private boolean eN;
    public static final int[] CardPreferenceBorder = new int[]{R.attr.topShadow,R.attr.bottomShadow};
    public static final int CardPreferenceBorder_bottomShadow = 1;
    public static final int CardPreferenceBorder_topShadow = 0;
    public CardPreferenceBorder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet,CardPreferenceBorder);
        this.eN = obtainStyledAttributes.getBoolean(CardPreferenceBorder_topShadow, true);
        this.aB = obtainStyledAttributes.getBoolean(CardPreferenceBorder_bottomShadow, true);
        obtainStyledAttributes.recycle();
        setLayoutResource(R.layout.preference_card_border);
        setEnabled(false);
        setSelectable(false);
    }

    public CardPreferenceBorder(Context context, boolean z, boolean z2) {
        super(context);
        this.eN = z;
        this.aB = z2;
        setLayoutResource(R.layout.preference_card_border);
        setEnabled(false);
        setSelectable(false);
    }

    public View getView(View view, ViewGroup viewGroup) {
         int  i;
        int  i2=0;
        View view2 = super.getView(view, viewGroup);
        View findViewById = view2.findViewById(R.id.top);
        if (this.eN) {
            i = 0;
        } else {
            i = 4;
        }
        findViewById.setVisibility(i);
        View findViewById2 = view2.findViewById(R.id.bottom);
        if (!this.aB) {
            i2 = 4;
        }
        findViewById2.setVisibility(i2);
        return view2;
    }
}