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
import org.leo.tweaks.salt.prefs.DlgFrLeoSaltSortList;
import org.leo.tweaks.salt.utils.Common;
import org.leo.tweaks.salt.utils.LeoSaltPrefsUtils;

public class LeoSaltSortList extends LeoSaltBasePreference implements DlgFrLeoSaltSortList.OnSortedList {

    private boolean mSortIcon;
    private String mDefValue;
    int iconsValueTint =0;

    public LeoSaltSortList(Context context, AttributeSet attrs){
        super(context,attrs);
        initAttributes(context,attrs);
    }

    public LeoSaltSortList(Context context, AttributeSet attrs, int defStyleAttr){
        super(context,attrs,defStyleAttr);
        initAttributes(context,attrs);
    }

    private void initAttributes(Context context, AttributeSet attrs){
        setWidgetLayoutResource(R.layout.widget_icon_accent);
        initStringPrefsCommonAttributes(context,attrs,true, true);
        

        TypedArray ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltSortlist);
        mSortIcon=ta.getBoolean(R.styleable.LeoSaltSortlist_showShortIcon,getContext().getResources().getBoolean(R.bool.LeoSaltb_showShortIcon_default) );
        if(ta.hasValue(R.styleable.LeoSaltSortlist_iconsValueTint))
                iconsValueTint = ta.getInt(R.styleable.LeoSaltSortlist_iconsValueTint, 0);

        
        ta.recycle();

        mDefValue=myPrefAttrsInfo.getMyStringDefValue();
        if(mDefValue==null || mDefValue.isEmpty()){
            mDefValue= LeoSaltPrefsUtils.getFormattedStringFromArrayResId(getContext(),myPrefAttrsInfo.getMyValuesArrayId(),myPrefAttrsInfo.getMySeparator());
          }
        setDefaultValue(mDefValue);
        setSummary(myPrefAttrsInfo.getMySummary());
    }

    @Override
    public void resetPreference(){
        if(mStringValue.isEmpty()) return;
        mStringValue= mDefValue;
        saveNewStringValue(mStringValue);
    }

    @Override
    public void showDialog(){
        LeoSaltPreferenceScreen LeoSaltPreferenceScreen = (LeoSaltPreferenceScreen) getOnPreferenceChangeListener();
        if(LeoSaltPreferenceScreen !=null){
            DlgFrLeoSaltSortList dlg = (DlgFrLeoSaltSortList) LeoSaltPreferenceScreen.getFragmentManager().findFragmentByTag("DlgFrLeoSaltSortList");
            if(dlg==null){
                dlg = DlgFrLeoSaltSortList.newInstance(this, Common.TAG_PREFSSCREEN_FRAGMENT, getKey(), getTitle().toString(), mStringValue, myPrefAttrsInfo.getMySeparator(),
                        myPrefAttrsInfo.getMyOptionsArrayId(), myPrefAttrsInfo.getMyValuesArrayId(), myPrefAttrsInfo.getMyIconsArrayId(),iconsValueTint,mSortIcon);
                dlg.show(LeoSaltPreferenceScreen.getFragmentManager(),"DlgFrLeoSaltSortList");
            }
        }
    }

    @Override
    public void saveSortedList(String value){
        if(!mStringValue.equals(value)) {
            mStringValue= value;
            saveNewStringValue(mStringValue);
        }
    }



}
