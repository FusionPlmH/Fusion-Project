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
import org.leo.tweaks.salt.prefs.DlgLeoSaltAppSelection;
import org.leo.tweaks.salt.utils.Common;
import org.leo.tweaks.salt.utils.LeoSaltPrefsUtils;

public class LeoSaltAppSelection extends LeoSaltBasePreference implements DlgLeoSaltAppSelection.OnLeoSaltAppListener{

    private boolean showSystemApps;
    private boolean saveActivityName;
    private String mLabel;


    public LeoSaltAppSelection(Context context, AttributeSet attrs) {
        super(context, attrs);
        initAttributes(context, attrs);
    }

    public LeoSaltAppSelection(Context context, AttributeSet attrs, int defStyleAttr){
        super(context,attrs,defStyleAttr);
        initAttributes(context,attrs);
    }

    private void initAttributes(Context context, AttributeSet attrs){
        setWidgetLayoutResource(R.layout.widget_icon_accent);
        initStringPrefsCommonAttributes(context,attrs,false, false);
        TypedArray ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltPreferences);
        showSystemApps = ta.getBoolean(R.styleable.LeoSaltPreferences_showSystemapps,getContext().getResources().getBoolean(R.bool.LeoSaltb_showSystemapps_default));
        saveActivityName=ta.getBoolean(R.styleable.LeoSaltPreferences_saveActivityname, getContext().getResources().getBoolean(R.bool.LeoSaltb_saveActivityname_default));
        ta.recycle();
        setDefaultValue(myPrefAttrsInfo.getMyStringDefValue());
    }

    @Override
    public void configStringPreference(String value){

        if(value!=null && value.contains("/")){
            mWidgetIcon = LeoSaltPrefsUtils.getIconFromPackageActivityString(getContext(),value);
            mLabel = LeoSaltPrefsUtils.getLabelFromPackageActivityString(getContext(),mStringValue);
        }else {
            mLabel = LeoSaltPrefsUtils.getApplicationLabel(getContext(),mStringValue);
            mWidgetIcon= LeoSaltPrefsUtils.getApplicationIcon(getContext(),mStringValue);
        }


        if(mLabel.isEmpty()) mLabel=myPrefAttrsInfo.getMySummary();
        setSummary(mLabel);

    }

    @Override
    public void onBindView(View view) {
        super.onBindView(view);
        refreshView();
        setSummary(mLabel);
    }


    @Override
    public void showDialog(){
        DlgLeoSaltAppSelection dlg;
        LeoSaltPreferenceScreen prefsScreen = (LeoSaltPreferenceScreen) getOnPreferenceChangeListener();
        if(prefsScreen!=null){
            dlg = (DlgLeoSaltAppSelection) prefsScreen.getFragmentManager().findFragmentByTag(Common.TAG_DLGFRGRSELECTAPP);
            if(dlg==null){
                dlg = DlgLeoSaltAppSelection.newInstance(this, Common.TAG_PREFSSCREEN_FRAGMENT, myPrefAttrsInfo.getMyKey(),myPrefAttrsInfo.getMyTitle(),showSystemApps, saveActivityName, true);
                dlg.show(prefsScreen.getFragmentManager(),Common.TAG_DLGFRGRSELECTAPP);
            }
        }
    }

    @Override
    public void resetPreference(){
        mStringValue= myPrefAttrsInfo.getMyStringDefValue();
        saveNewStringValue(mStringValue);
        configStringPreference(mStringValue);

    }

    @Override
    public void onLeoSaltAppSel(DlgLeoSaltAppSelection dialog, String app_selected){
        if(!mStringValue.equals(app_selected)){
            mStringValue=app_selected;
            saveNewStringValue(mStringValue);
            configStringPreference(mStringValue);

            //


        }
    }

}




