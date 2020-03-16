/* 
 * Grouxho - espdroids.com - 2018	

 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. 
 
 */

package android.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;


import org.leo.tweaks.salt.LeoSaltPreferenceScreen;
import org.leo.tweaks.salt.R;
import org.leo.tweaks.salt.utils.Common;
import org.leo.tweaks.salt.prefs.DlgFrLeoSaltNumberPicker;


public class LeoSaltNumberPicker extends LeoSaltBasePreference implements DlgFrLeoSaltNumberPicker.OnLeoSaltNumberPickerSetListener {


    private String mUnits;
    private int min=0;
    private int max=5;


    public LeoSaltNumberPicker(Context context, AttributeSet attrs) {
        super(context, attrs);
        initAttributes(context, attrs);
    }

    public LeoSaltNumberPicker(Context context, AttributeSet attrs, int defStyleAttr){
        super(context,attrs,defStyleAttr);
        initAttributes(context,attrs);
    }

    private void initAttributes(Context context, AttributeSet attrs) {
        setWidgetLayoutResource(R.layout.widget_text);
        initIntPrefsCommonAttributes(getContext(),attrs,0,false);
        TypedArray ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltPreferences);
        min=ta.getInt(R.styleable.LeoSaltPreferences_minValue,0);
        max=ta.getInt(R.styleable.LeoSaltPreferences_maxValue,0);
        mUnits=ta.getString(R.styleable.LeoSaltPreferences_units);
        ta.recycle();
        if(myPrefAttrsInfo.getMyIntDefValue()>=min && myPrefAttrsInfo.getMyIntDefValue()<=max)
                setDefaultValue(myPrefAttrsInfo.getMyIntDefValue());
        else setMyIntDefaultValue(min);
    }


    @Override
    public void configIntPreference(int value){
        mStringValue = getTextValue();
        if(vWidgetText!=null) vWidgetText.setText(mStringValue);

    }


    @Override
    public void onBindView(View view) {
        super.onBindView(view);
        vWidgetText.setText(mStringValue);

    }


    public String getTextValue(){
        String value;
        value =  Integer.toString(mIntValue);
        if ((mUnits != null) && (!mUnits.isEmpty())){
            value = value.concat(" ").concat(mUnits);
        }
        return value;
    }


    @Override
    public void resetPreference(){
        saveNewIntValue(myPrefAttrsInfo.getMyIntDefValue());
        configIntPreference(mIntValue);
    }


    @Override
    public void showDialog(){
        LeoSaltPreferenceScreen prefsScreen = (LeoSaltPreferenceScreen) getOnPreferenceChangeListener();
        if(prefsScreen!=null){
            DlgFrLeoSaltNumberPicker dlgFrLeoSaltNumberPicker = (DlgFrLeoSaltNumberPicker) prefsScreen.getFragmentManager().findFragmentByTag("DlgFrLeoSaltNumberPicker");
            if (dlgFrLeoSaltNumberPicker==null){
                dlgFrLeoSaltNumberPicker = DlgFrLeoSaltNumberPicker.newInstance(this,getKey(), myPrefAttrsInfo.getMyTitle(), mIntValue,min,max,mUnits, Common.TAG_PREFSSCREEN_FRAGMENT);
                dlgFrLeoSaltNumberPicker.show(prefsScreen.getFragmentManager(), "DlgFrLeoSaltNumberPicker");
            }
        }
    }

    public void onLeoSaltNumberPickerSet(int value, String key){
        saveNewIntValue(value);
        configIntPreference(mIntValue);
    }

}

