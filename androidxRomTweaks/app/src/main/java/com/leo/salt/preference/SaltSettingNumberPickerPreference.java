/*
 * Based on: http://www.lukehorvat.com/blog/android-numberpickerdialogpreference/
 * Thanks to the original author!
 */

package com.leo.salt.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import android.widget.NumberPicker;

public class SaltSettingNumberPickerPreference  extends NumberPicker {
    public SaltSettingNumberPickerPreference(Context context) {
        super(context);
    }

    public SaltSettingNumberPickerPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void updateView(View view) {
        if (view instanceof EditText) {
            ((EditText) view).setTextSize(20.0f);
        }
    }

    public void addView(View view) {
        super.addView(view);
        updateView(view);
    }

    public void addView(View view, int i, LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        updateView(view);
    }

    public void addView(View view, LayoutParams layoutParams) {
        super.addView(view, layoutParams);
        updateView(view);
    }

}
