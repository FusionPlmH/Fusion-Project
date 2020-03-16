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

import org.leo.tweaks.salt.utils.Common;
import org.leo.tweaks.salt.LeoSaltPreferenceScreen;
import org.leo.tweaks.salt.R;
import org.leo.tweaks.salt.prefs.DlgLeoSaltMultipleAppSelection;

import java.util.regex.Pattern;



public class LeoSaltMultipleAppSelection extends LeoSaltBasePreference implements DlgLeoSaltMultipleAppSelection.OnAppsSelectedListener{

    private boolean showSystemApps;
    private boolean saveActivityName;
    private String mLabel;

    public LeoSaltMultipleAppSelection(Context context, AttributeSet attrs){
        super(context,attrs);
        initAttributes(context,attrs);
    }

    public LeoSaltMultipleAppSelection(Context context, AttributeSet attrs, int defStyleAttr){
        super(context,attrs,defStyleAttr);
        initAttributes(context,attrs);
    }

    private void initAttributes(Context context, AttributeSet attrs){
        setWidgetLayoutResource(R.layout.widget_icon_accent);
        initStringPrefsCommonAttributes(context,attrs,true, false);
        TypedArray ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltPreferences);
        showSystemApps = ta.getBoolean(R.styleable.LeoSaltPreferences_showSystemapps,getContext().getResources().getBoolean(R.bool.LeoSaltb_showSystemapps_default));
        saveActivityName=ta.getBoolean(R.styleable.LeoSaltPreferences_saveActivityname, getContext().getResources().getBoolean(R.bool.LeoSaltb_saveActivityname_default));
        ta.recycle();
        setDefaultValue(myPrefAttrsInfo.getMyStringDefValue());
    }

    @Override
    public void resetPreference(){
        mStringValue= myPrefAttrsInfo.getMyStringDefValue();
        persistString(mStringValue);
        saveNewStringValue(mStringValue);
        configStringPreference(mStringValue);
    }


    @Override
    public void showDialog(){
        DlgLeoSaltMultipleAppSelection dlg;
        LeoSaltPreferenceScreen prefsScreen = (LeoSaltPreferenceScreen) getOnPreferenceChangeListener();
        if(prefsScreen!=null){
            dlg = (DlgLeoSaltMultipleAppSelection) prefsScreen.getFragmentManager().findFragmentByTag(Common.TAG_DLGFRGRMULTISELECTAPP);
            if(dlg==null){
                dlg = DlgLeoSaltMultipleAppSelection.newInstance(this, Common.TAG_PREFSSCREEN_FRAGMENT, myPrefAttrsInfo.getMyKey(),myPrefAttrsInfo.getMyTitle(), mStringValue,
                                                            myPrefAttrsInfo.getMySeparator(), showSystemApps,myPrefAttrsInfo.getMyMaxItems(),saveActivityName);
                dlg.show(prefsScreen.getFragmentManager(),Common.TAG_DLGFRGRMULTISELECTAPP);
            }
        }
    }

    @Override
    public void configStringPreference(String value){
        getPrefInfo();
        setSummary(mLabel);

    }

    private void getPrefInfo(){
        int napps=0;
        if(! (mStringValue.isEmpty()||(mStringValue==null))  ){
            String[] arr = mStringValue.split(Pattern.quote(myPrefAttrsInfo.getMySeparator()));
            napps=arr.length;
        }
        if(napps==0) mLabel=myPrefAttrsInfo.getMySummary();
        else mLabel = myPrefAttrsInfo.getMySummary() +" "+  getContext().getString( R.string.LeoSalts_num_selected,napps ) ;

    }

    public void OnAppsSelected(String apps_selected){
        if(!mStringValue.equals(apps_selected)){
            mStringValue=apps_selected;
            saveNewStringValue(mStringValue);
            configStringPreference(mStringValue);
        }
    }


}
