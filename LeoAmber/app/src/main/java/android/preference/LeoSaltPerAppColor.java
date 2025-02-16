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
import org.leo.tweaks.salt.prefs.DlgFrLeoSaltPerAppColor;

import java.util.regex.Pattern;


public class LeoSaltPerAppColor extends LeoSaltBasePreference implements DlgFrLeoSaltPerAppColor.OnLeoSaltMultiAppColorListener{

    private boolean mShowAllApps;
    private int mDefaultColor;
    private boolean mShowAuto;
    private boolean mShowAlpha;

    private String mLabel;



    public LeoSaltPerAppColor(Context context, AttributeSet attrs) {
        super(context, attrs);
        initAttributes(context, attrs);
    }


    public LeoSaltPerAppColor(Context context, AttributeSet attrs, int defStyleAttr){
        super(context,attrs,defStyleAttr);
        initAttributes(context,attrs);
    }

    private void initAttributes(Context context, AttributeSet attrs){
        setWidgetLayoutResource(R.layout.widget_icon_accent);
        initStringPrefsCommonAttributes(context,attrs,true, false);
        TypedArray ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltPreferences);
        mShowAllApps = ta.getBoolean(R.styleable.LeoSaltPreferences_showSystemapps,getContext().getResources().getBoolean(R.bool.LeoSaltb_showSystemapps_default));
        mShowAlpha=ta.getBoolean(R.styleable.LeoSaltPreferences_showAlphaSlider, context.getResources().getBoolean(R.bool.LeoSaltb_showAlphaSlider_default) );
        mShowAuto=ta.getBoolean(R.styleable.LeoSaltPreferences_showAutoButton, context.getResources().getBoolean(R.bool.LeoSaltb_showAutoButton_default) );
        mDefaultColor=ta.getInt(R.styleable.LeoSaltPreferences_defaultColor,0xffffffff);
        ta.recycle();
    }

    @Override
    public void configStringPreference(String value){
        int numitems=0;
        if(! (mStringValue.isEmpty()||(mStringValue==null))  ){
            String[] arr = mStringValue.split(Pattern.quote(myPrefAttrsInfo.getMySeparator()));
            numitems=arr.length;
        }
        if(numitems==0) mLabel=myPrefAttrsInfo.getMySummary();
        else mLabel = getContext().getString( R.string.LeoSalts_num_selected,numitems ) ;
        setSummary(myPrefAttrsInfo.getMySummary() + " " +mLabel);
    }


    @Override
    public void onLeoSaltMultiAppColorSel(DlgFrLeoSaltPerAppColor dialog, int num, String value){
        if(!mStringValue.equals(value)){
            mStringValue=value;
            saveNewStringValue(value);
            configStringPreference(mStringValue);
        }
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
        LeoSaltPreferenceScreen prefsScreen = (LeoSaltPreferenceScreen) getOnPreferenceChangeListener();
        if(prefsScreen!=null){
            DlgFrLeoSaltPerAppColor dlg = (DlgFrLeoSaltPerAppColor) prefsScreen.getFragmentManager().findFragmentByTag(Common.TAG_DLGFRGRMULTIPPCOLOR);
            if(dlg!=null) return;
            dlg = DlgFrLeoSaltPerAppColor.newInstance(this, Common.TAG_PREFSSCREEN_FRAGMENT, myPrefAttrsInfo.getMyKey(), myPrefAttrsInfo.getMyTitle(),mStringValue,
                    mShowAllApps, myPrefAttrsInfo.getMyMaxItems(), mDefaultColor, mShowAlpha,mShowAuto,
                    myPrefAttrsInfo.getMySeparator());
            dlg.show(prefsScreen.getFragmentManager(),Common.TAG_DLGFRGRMULTIPPCOLOR);
        }
    }

}
