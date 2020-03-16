/* 
 * Grouxho - espdroids.com - 2018	

 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. 
 
 */



package android.preference;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;

import android.util.AttributeSet;


import org.leo.tweaks.salt.LeoSaltPreferenceScreen;
import org.leo.tweaks.salt.R;

import org.leo.tweaks.salt.prefs.DlgFrLeoSaltMultiAccess;
import org.leo.tweaks.salt.utils.Common;
import org.leo.tweaks.salt.utils.LeoSaltPrefsUtils;

import java.util.regex.Pattern;


public class LeoSaltMultiAccess extends LeoSaltBasePreference implements DlgFrLeoSaltMultiAccess.LeoSaltMultiAccessListener {

    private boolean mShowShortCuts;
    private boolean mShowUsuApps;
    private boolean mShowActivities;
    private boolean mSaveCustomActionsIcons;
    int iconsValueTint =0;

    private String mLabel;

    public LeoSaltMultiAccess(Context context, AttributeSet attrs) {
        super(context, attrs);
        initAttributes(context, attrs);
    }


    public LeoSaltMultiAccess(Context context, AttributeSet attrs, int defStyleAttr){
        super(context,attrs,defStyleAttr);
        initAttributes(context,attrs);
    }

    private void initAttributes(Context context, AttributeSet attrs){
        setWidgetLayoutResource(R.layout.widget_icon_accent);
        initStringPrefsCommonAttributes(context,attrs,true, true);

        Resources res = context.getResources();
        TypedArray ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltPreferences);
        mSaveCustomActionsIcons = ta.getBoolean(R.styleable.LeoSaltPreferences_saveActionsicons, res.getBoolean(R.bool.LeoSaltb_saveActionsicons_default));
        mShowShortCuts = ta.getBoolean(R.styleable.LeoSaltPreferences_showShortcuts, res.getBoolean(R.bool.LeoSaltb_showShortcuts_default) );
        mShowUsuApps = ta.getBoolean(R.styleable.LeoSaltPreferences_showApplications, res.getBoolean(R.bool.LeoSaltb_showApplications_default) );
        mShowActivities=ta.getBoolean(R.styleable.LeoSaltPreferences_showActivities, res.getBoolean(R.bool.LeoSaltb_showActivities_default) );
        if(ta.hasValue(R.styleable.LeoSaltPreferences_iconsValueTint)) {
            try {
                iconsValueTint = ta.getInt(R.styleable.LeoSaltPreferences_iconsValueTint, 0);

            } catch (Exception e) {
            }
        }
        ta.recycle();
        setDefaultValue(myPrefAttrsInfo.getMyStringDefValue());
    }


    @Override
    public void showDialog(){
            LeoSaltPreferenceScreen prefsScreen = (LeoSaltPreferenceScreen) getOnPreferenceChangeListener();
            if(prefsScreen!=null){
                DlgFrLeoSaltMultiAccess dlg = (DlgFrLeoSaltMultiAccess) prefsScreen.getFragmentManager().findFragmentByTag(Common.TAG_DLGFRGRMULTIACCESS);
                if(dlg!=null) return;
                dlg = DlgFrLeoSaltMultiAccess.newInstance(this, Common.TAG_PREFSSCREEN_FRAGMENT, myPrefAttrsInfo.getMyKey(), myPrefAttrsInfo.getMyTitle(),mStringValue,
                        mShowShortCuts, mShowUsuApps,mShowActivities, myPrefAttrsInfo.getMyOptionsArrayId(), myPrefAttrsInfo.getMyValuesArrayId(), myPrefAttrsInfo.getMyIconsArrayId(),
                        iconsValueTint,mSaveCustomActionsIcons, myPrefAttrsInfo.getMySeparator(), myPrefAttrsInfo.getMyMaxItems());
                dlg.show(prefsScreen.getFragmentManager(),Common.TAG_DLGFRGRMULTIACCESS);
            }
    }


    @Override
    public void resetPreference(){
        if(mStringValue.isEmpty()) return;

         String[] uris = mStringValue.split(Pattern.quote(myPrefAttrsInfo.getMySeparator()));
         for(int i=0;i<uris.length;i++) LeoSaltPrefsUtils.deleteLeoSaltIconFileFromUriString(uris[i]);

         mStringValue= myPrefAttrsInfo.getMyStringDefValue();
         configStringPreference(mStringValue);
         saveNewStringValue(mStringValue);
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

    public void LeoSaltSetMultiAccess(String value){
        if(!mStringValue.equals(value)){
            mStringValue=value;
            configStringPreference(value);
            saveNewStringValue(value);
            }
    }

}
