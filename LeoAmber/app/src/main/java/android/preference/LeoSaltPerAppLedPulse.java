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

import org.leo.tweaks.salt.LeoSaltPreferenceScreen;
import org.leo.tweaks.salt.R;
import org.leo.tweaks.salt.prefs.DlgFrLeoSaltPerAppLedPulse;
import org.leo.tweaks.salt.utils.Common;

import java.util.regex.Pattern;


public class LeoSaltPerAppLedPulse extends LeoSaltBasePreference implements DlgFrLeoSaltPerAppLedPulse.PerAppLedPulseListener{

    private String mLabel;
    private boolean showSystemApps;


    public LeoSaltPerAppLedPulse(Context context, AttributeSet attrs) {
        super(context, attrs);
        initAttributes(context, attrs);
    }

    public LeoSaltPerAppLedPulse(Context context, AttributeSet attrs, int defStyleAttr){
        super(context,attrs,defStyleAttr);
        initAttributes(context,attrs);
    }

    private void initAttributes(Context context, AttributeSet attrs) {
        setWidgetLayoutResource(R.layout.widget_icon_accent);
        initStringPrefsCommonAttributes(context, attrs, true, true);
        TypedArray ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltPreferences);
        showSystemApps = ta.getBoolean(R.styleable.LeoSaltPreferences_showSystemapps,getContext().getResources().getBoolean(R.bool.LeoSaltb_showSystemapps_default));
        ta.recycle();
        setDefaultValue(myPrefAttrsInfo.getMyStringDefValue());
    }


    @Override
    public void resetPreference(){
        mStringValue = myPrefAttrsInfo.getMyStringDefValue();
        saveNewStringValue(mStringValue);
        configStringPreference(mStringValue);
    }


    @Override
    public void configStringPreference(String value){
        int numitems=0;
        if(! (mStringValue.isEmpty()||(mStringValue==null))  ){
            String[] arr = mStringValue.split(Pattern.quote(myPrefAttrsInfo.getMySeparator()));
            numitems=arr.length;
        }
        if(numitems==0) mLabel="";/*myPrefAttrsInfo.getMySummary();*/
        else mLabel = getContext().getString( R.string.LeoSalts_num_selected,numitems ) ;
        setSummary(myPrefAttrsInfo.getMySummary() + " " +mLabel);
    }


    @Override
    public void showDialog(){
        DlgFrLeoSaltPerAppLedPulse dlg;
        LeoSaltPreferenceScreen prefsScreen = (LeoSaltPreferenceScreen) getOnPreferenceChangeListener();
        if(prefsScreen!=null){
            dlg = (DlgFrLeoSaltPerAppLedPulse) prefsScreen.getFragmentManager().findFragmentByTag(Common.TAG_DLGFRPERAPPAPPLEDPULSE);
            if(dlg==null){
                dlg = DlgFrLeoSaltPerAppLedPulse.newInstance(this, Common.TAG_PREFSSCREEN_FRAGMENT, myPrefAttrsInfo.getMyKey(),myPrefAttrsInfo.getMyTitle(), mStringValue,
                        myPrefAttrsInfo.getMySeparator(), showSystemApps,myPrefAttrsInfo.getMyMaxItems());
                dlg.show(prefsScreen.getFragmentManager(),Common.TAG_DLGFRPERAPPAPPLEDPULSE);
            }
        }

    }


    public void onAppsLedPulseSelected(String apps_selected){
        if(!mStringValue.equals(apps_selected)){
            mStringValue=apps_selected;
            configStringPreference(apps_selected);
            saveNewStringValue(apps_selected);
        }

    }

}
