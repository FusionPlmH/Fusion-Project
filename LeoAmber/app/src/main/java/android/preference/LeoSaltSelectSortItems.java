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

import org.leo.tweaks.salt.prefs.DlgFrSelectSortItems;
import org.leo.tweaks.salt.utils.Common;

import java.util.regex.Pattern;




public class LeoSaltSelectSortItems extends LeoSaltBasePreference implements DlgFrSelectSortItems.LeoSaltMultiValueListener{


    private String mLabel;
    int iconsValueTint =0;

    public LeoSaltSelectSortItems(Context context, AttributeSet attrs) {
        super(context, attrs);
        initAttributes(context, attrs);
    }

    public LeoSaltSelectSortItems(Context context, AttributeSet attrs, int defStyleAttr){
        super(context,attrs,defStyleAttr);
        initAttributes(context,attrs);
    }

    private void initAttributes(Context context, AttributeSet attrs){
        setWidgetLayoutResource(R.layout.widget_icon_accent);
        initStringPrefsCommonAttributes(context,attrs,true, true);
        setDefaultValue(myPrefAttrsInfo.getMyStringDefValue());
        TypedArray ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltSelectSortItems);
        if(ta.hasValue(R.styleable.LeoSaltSelectSortItems_iconsValueTint))
                iconsValueTint = ta.getInt(R.styleable.LeoSaltSelectSortItems_iconsValueTint, 0);

        ta.recycle();
    }

    @Override
    public void resetPreference(){
        mStringValue= myPrefAttrsInfo.getMyStringDefValue();
        configStringPreference(mStringValue);
        saveNewStringValue(mStringValue);
        setSummary(mLabel);
    }


    @Override
    public void configStringPreference(String value){
        int napps=0;
        if(! (mStringValue.isEmpty()||(mStringValue==null))  ){
            String[] arr = mStringValue.split(Pattern.quote(myPrefAttrsInfo.getMySeparator()));
            napps=arr.length;
        }
        if(napps==0) mLabel=myPrefAttrsInfo.getMySummary();
        else mLabel = getContext().getString( R.string.LeoSalts_num_selected,napps ) ;
        setSummary(mLabel);
    }


    @Override
    public void showDialog(){
        LeoSaltPreferenceScreen prefsScreen = (LeoSaltPreferenceScreen) getOnPreferenceChangeListener();
        if(prefsScreen!=null){
            DlgFrSelectSortItems dlg =(DlgFrSelectSortItems) prefsScreen.getFragmentManager().findFragmentByTag(Common.TAG_DLGFRGRMULTIVALUES);
            if(dlg==null){
                dlg = DlgFrSelectSortItems.newInstance(this, Common.TAG_PREFSSCREEN_FRAGMENT, myPrefAttrsInfo.getMyKey(), myPrefAttrsInfo.getMyTitle(),mStringValue,
                        myPrefAttrsInfo.getMyOptionsArrayId(), myPrefAttrsInfo.getMyValuesArrayId(), myPrefAttrsInfo.getMyIconsArrayId(), iconsValueTint, myPrefAttrsInfo.getMySeparator(), myPrefAttrsInfo.getMyMaxItems());
                dlg.show(prefsScreen.getFragmentManager(),Common.TAG_DLGFRGRMULTIVALUES);
            }
        }
    }

    public void LeoSaltSetMultiValue(String value){
        if(!mStringValue.equals(value)){
            mStringValue=value;
            configStringPreference(value);
            saveNewStringValue(value);

        }
    }


}
