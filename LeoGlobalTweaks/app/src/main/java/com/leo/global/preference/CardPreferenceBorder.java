package com.leo.global.preference;

import android.content.Context;
import android.content.res.TypedArray;

import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

import com.leo.global.tweaks.R;


public class CardPreferenceBorder extends Preference {
    private boolean aB;
    private boolean eN;

    public CardPreferenceBorder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        final TypedArray a = context.obtainStyledAttributes(attributeSet,
                R.styleable.CardPreference);
        eN =
                a.getBoolean(R.styleable.CardPreference_topView,
                        true);
        aB =
                a.getBoolean(R.styleable.CardPreference_bottomView,
                      true);
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