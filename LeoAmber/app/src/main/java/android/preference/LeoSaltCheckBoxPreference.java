
/*
 * Grouxho - espdroids.com - 2018

 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.

 */

package android.preference;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.Settings;
import android.support.v7.widget.AppCompatCheckBox;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;


import org.leo.tweaks.salt.LeoSaltPreferenceScreen;
import org.leo.tweaks.salt.R;
import org.leo.tweaks.salt.prefssupport.OnClickRuleHelper;
import org.leo.tweaks.salt.utils.Common;
import org.leo.tweaks.salt.prefssupport.PrefAttrsInfo;
import org.leo.tweaks.salt.utils.LeoSaltPrefsUtils;


public class LeoSaltCheckBoxPreference extends CheckBoxPreference implements LeoSaltPreferenceScreen.CustomDependencyListener {

    ImageView vAndroidIcon;
    private PrefAttrsInfo myPrefAttrsInfo;
    private int mColor;
    private int mLefticonColor =0;

    public LeoSaltCheckBoxPreference(Context context, AttributeSet attrs) {
        super(context,attrs);
        ini_preference(context, attrs);
    }

    public LeoSaltCheckBoxPreference(Context context) {
        super(context);
    }

    public LeoSaltCheckBoxPreference(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        ini_preference(context, attrs);
    }

    private void ini_preference(Context context, AttributeSet attrs){
        myPrefAttrsInfo = new PrefAttrsInfo(context, attrs, getTitle(), getSummary(),getKey());
        mLefticonColor = myPrefAttrsInfo.getMyIconTintColor();

        TypedArray ta;
        if(Common.mContextWrapper!=null) ta = Common.mContextWrapper.obtainStyledAttributes(attrs, R.styleable.LeoSaltCheckBoxPreference);
        else ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltCheckBoxPreference);

        //TypedArray ta = getContext().obtainStyledAttributes(attrs, R.styleable.LeoSaltCheckBoxPreference);
        mColor = ta.getInt(R.styleable.LeoSaltCheckBoxPreference_checkboxColor, 0);
        ta.recycle();

    }

    @Override
    protected View onCreateView(ViewGroup parent) {
        View view = (View) super.onCreateView(parent);
        vAndroidIcon = (ImageView) view.findViewById(android.R.id.icon);
        AppCompatCheckBox appCompatCheckBox =null;
        if(mColor!=0) appCompatCheckBox = (AppCompatCheckBox) view.findViewById(android.R.id.checkbox);
        if(vAndroidIcon!=null) {
            vAndroidIcon.setLayoutParams(Common.AndroidIconParams);
            if(mLefticonColor !=0) vAndroidIcon.setColorFilter(mLefticonColor);
        }
        if(appCompatCheckBox!=null) {
            int states[][] = {{android.R.attr.state_checked}, {}};
            int colors[] = {mColor, mColor};
            appCompatCheckBox.setButtonTintList( new ColorStateList(states, colors));
        }
        return view;
    }


    @Override
    public void onBindView(View view) {
        super.onBindView(view);
        float alpha = (isEnabled() ? (float) 1.0 : (float) 0.4);
        if(vAndroidIcon!=null) vAndroidIcon.setAlpha(alpha);
    }

    @Override
    protected Object onGetDefaultValue(TypedArray a, int index) {
        boolean defvalue= a.getBoolean(index,false);
        return defvalue;
    }


    @Override
    protected void onSetInitialValue(boolean restorePersistedValue, Object defaultValue) {
        int real = myPrefAttrsInfo.getMyBooleanDefValue() ? 1 : 0;
        if(myPrefAttrsInfo.getMySystemPrefType()== PrefAttrsInfo.SETTINGS_PREF_TYPE.SHARED){
            if (restorePersistedValue) {
                setChecked(getPersistedBoolean(myPrefAttrsInfo.getMyBooleanDefValue()));
            } else {
                setChecked(myPrefAttrsInfo.getMyBooleanDefValue());
                if(!myPrefAttrsInfo.isValidKey()) return;;
                persistBoolean(isChecked());
            }
            saveValueInSettings(isChecked());
        }else updateFromSettingsValue();
    }


    public void saveValueInSettings(boolean checked){
        if(!myPrefAttrsInfo.isValidKey()) return;

        try {

            switch (myPrefAttrsInfo.getMySystemPrefType()){
                case SHARED:
                    if(myPrefAttrsInfo.isAllowedToBeSavedInSettingsDb()){
                        int value = (checked) ? 1:0;
                        int real;
                        try {
                            real = Settings.System.getInt(getContext().getContentResolver(), this.getKey());
                            if(real!=value){
                                Settings.System.putInt(getContext().getContentResolver(), this.getKey(), value);

                            }
                        } catch (Settings.SettingNotFoundException e) {
                            Settings.System.putInt(getContext().getContentResolver(), this.getKey(), value);
                        }
                    }
                    break;
                case SYSTEM:
                    Settings.System.putInt(getContext().getContentResolver(),myPrefAttrsInfo.getMyKey(), (checked) ? 1:0  );
                    break;
                case SECURE:
                    Settings.Secure.putInt(getContext().getContentResolver(),myPrefAttrsInfo.getMyKey(), (checked) ? 1:0  );
                    break;
                case GLOBAL:
                    Settings.Global.putInt(getContext().getContentResolver(),myPrefAttrsInfo.getMyKey(), (checked) ? 1:0  );
                    break;
                default:
                    break;
            }

        }catch (Exception e){
            e.printStackTrace();
        }


    }

    /**********   on click rules support  *********/

    public void performOnclickRule(String rule){
        if(OnClickRuleHelper.shouldPerformOnClickForBooleanPref(isChecked(),rule)) onClick();
    }

    /**********  Onpreferencechangelistener - add custom dependency rule *********/

    @Override
    public void setOnPreferenceChangeListener(Preference.OnPreferenceChangeListener onPreferenceChangeListener){
        LeoSaltPreferenceScreen LeoSaltPreferenceScreen = (LeoSaltPreferenceScreen) onPreferenceChangeListener;
        if(!Common.SyncUpMode){
            if(!myPrefAttrsInfo.isBuildPropEnabled()){
                LeoSaltPreferenceScreen.addPreferenceToRemoveList(this);
            }
            else{
                super.setOnPreferenceChangeListener(onPreferenceChangeListener);
                String mydeprule = myPrefAttrsInfo.getMyDependencyRule();
                if(mydeprule!=null){
                    LeoSaltPreferenceScreen.addCustomDependency(this,mydeprule,null);
                }
                if(myPrefAttrsInfo.getMySystemPrefType()!= PrefAttrsInfo.SETTINGS_PREF_TYPE.SHARED)
                    LeoSaltPreferenceScreen.addSupportForSettingsKey(getKey());
            }
        }else {
            if(myPrefAttrsInfo.isBuildPropEnabled()) {
                LeoSaltPreferenceScreen.addCommonBroadCastValuesForSyncUp(myPrefAttrsInfo.getMyCommonBcExtra(),myPrefAttrsInfo.getMyCommonBcExtraValue());
                LeoSaltPreferenceScreen.addGroupKeyForSyncUp(myPrefAttrsInfo.getMyGroupKey());
                LeoSaltPreferenceScreen.addBroadCastToSendForSyncUp(myPrefAttrsInfo.getMyBroadCast1(), myPrefAttrsInfo.getMyBroadCast2());
            }
        }

    }

    /************ custom dependencies ****************/
    public void OnCustomDependencyChange(boolean state){
        setEnabled(state);
    }

    /***** settings system, global and secure support */

    public void updateFromSettingsValue(){

        int real = myPrefAttrsInfo.getMyBooleanDefValue() ? 1 : 0;
        switch (myPrefAttrsInfo.getMySystemPrefType()){
            case SYSTEM:
                real = LeoSaltPrefsUtils.getIntValueFromSettingsSystem(getContext(),myPrefAttrsInfo.getMyKey(),real,false);
                break;
            case SECURE:
                real =LeoSaltPrefsUtils.getIntValueFromSettingsSecure(getContext(),myPrefAttrsInfo.getMyKey(),real,false);
                break;
            case GLOBAL:
                real =LeoSaltPrefsUtils.getIntValueFromSettingsGlobal(getContext(),myPrefAttrsInfo.getMyKey(),real,false);
                break;
            default:
                break;
        }
        boolean checked = (real==1) ? true : false;
        setChecked(checked);
        persistBoolean(checked);
    }


    public PrefAttrsInfo getPrefAttrsInfo() { return myPrefAttrsInfo;}

}
