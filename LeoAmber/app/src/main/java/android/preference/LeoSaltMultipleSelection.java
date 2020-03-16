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
import org.leo.tweaks.salt.prefs.DlgFrMultiSelect;
import org.leo.tweaks.salt.utils.Common;
import org.leo.tweaks.salt.utils.LeoSaltPrefsUtils;

import java.util.regex.Pattern;


public class LeoSaltMultipleSelection extends LeoSaltBasePreference implements DlgFrMultiSelect.LeoSaltMultiSelectListener{

    private String mLabel;
    int iconsValueTint =0;


    public LeoSaltMultipleSelection(Context context, AttributeSet attrs) {
        super(context, attrs);
        initAttributes(context, attrs);
    }

    public LeoSaltMultipleSelection(Context context, AttributeSet attrs, int defStyleAttr){
        super(context,attrs,defStyleAttr);
        initAttributes(context,attrs);
    }

    private void initAttributes(Context context, AttributeSet attrs){
        setWidgetLayoutResource(R.layout.widget_icon_accent);
        initStringPrefsCommonAttributes(context,attrs,true, true);
        TypedArray ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltsiconsarray);

        if(ta.hasValue(R.styleable.LeoSaltsiconsarray_iconsValueTint)) {
            try {
                iconsValueTint = ta.getInt(R.styleable.LeoSaltsiconsarray_iconsValueTint, 0);

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
            DlgFrMultiSelect dlg = (DlgFrMultiSelect) prefsScreen.getFragmentManager().findFragmentByTag(Common.TAG_DLGFRGRMULTISELECT);
            if(dlg==null){
                dlg = DlgFrMultiSelect.newInstance(this, Common.TAG_PREFSSCREEN_FRAGMENT, myPrefAttrsInfo.getMyKey(), myPrefAttrsInfo.getMyTitle(),mStringValue,
                        myPrefAttrsInfo.getMyOptionsArrayId(), myPrefAttrsInfo.getMyValuesArrayId(), myPrefAttrsInfo.getMyIconsArrayId(), iconsValueTint,
                        myPrefAttrsInfo.getMySeparator(), myPrefAttrsInfo.getMyMaxItems());
                dlg.show(prefsScreen.getFragmentManager(),Common.TAG_DLGFRGRMULTISELECT);
            }
        }
    }

    @Override
    public void onBindView(View view) {
        super.onBindView(view);
        setSummary(myPrefAttrsInfo.getMySummary() + " " +mLabel);
    }

    @Override
    public void resetPreference(){
        if(mStringValue!=null && !mStringValue.isEmpty()){
            String[] uris = mStringValue.split(Pattern.quote(myPrefAttrsInfo.getMySeparator()));
            for(int i=0;i<uris.length;i++) LeoSaltPrefsUtils.deleteLeoSaltIconFileFromUriString(uris[i]);
        }
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


    public void LeoSaltSetMultiSelect(String value){
        if(!mStringValue.equals(value)){
            mStringValue=value;
            saveNewStringValue(mStringValue);
            configStringPreference(mStringValue);
        }
    }


}