package android.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;

import org.leo.tweaks.salt.LeoSaltPreferenceScreen;
import org.leo.tweaks.salt.R;
import org.leo.tweaks.salt.prefs.DlgFrLeoSaltPerItemSingleSelection;
import org.leo.tweaks.salt.utils.Common;
import org.leo.tweaks.salt.utils.LeoSaltPrefsUtils;

import java.util.regex.Pattern;


/*
 * Grouxho - espdroids.com - 2018

 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.

 */

public class LeoSaltPerItemSingleSelection extends LeoSaltBasePreference implements DlgFrLeoSaltPerItemSingleSelection.PerItemSingleSelectionDialogListener {

    int iconsValueTint =0;
    boolean shortout = false;
    int spinnerOptionsArrayId = 0, spinnerValuesArrayId=0;


    public LeoSaltPerItemSingleSelection(Context context, AttributeSet attrs) {
        super(context, attrs);
        initAttributes(context, attrs);
    }

    public LeoSaltPerItemSingleSelection(Context context, AttributeSet attrs, int defStyleAttr){
        super(context,attrs,defStyleAttr);
        initAttributes(context,attrs);
    }

    private void initAttributes(Context context, AttributeSet attrs){
        setWidgetLayoutResource(R.layout.widget_icon_accent);
        initStringPrefsCommonAttributes(context,attrs,true, true);
        TypedArray ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltperitemsingleselection);

        if(ta.hasValue(R.styleable.LeoSaltperitemsingleselection_iconsValueTint)) {
            try {
                iconsValueTint = ta.getInt(R.styleable.LeoSaltperitemsingleselection_iconsValueTint, 0);

            } catch (Exception e) {
            }
        }

        shortout = ta.getBoolean(R.styleable.LeoSaltperitemsingleselection_allowSortOut,false);
        spinnerOptionsArrayId = ta.getResourceId(R.styleable.LeoSaltperitemsingleselection_spinnerOptionsArray,0);
        spinnerValuesArrayId = ta.getResourceId(R.styleable.LeoSaltperitemsingleselection_spinnerValuesArray,0);

        ta.recycle();
        setDefaultValue(myPrefAttrsInfo.getMyStringDefValue());
    }

    @Override
    public void showDialog(){
        LeoSaltPreferenceScreen prefsScreen = (LeoSaltPreferenceScreen) getOnPreferenceChangeListener();
        if(prefsScreen!=null){
            DlgFrLeoSaltPerItemSingleSelection dlg = (DlgFrLeoSaltPerItemSingleSelection) prefsScreen.getFragmentManager().findFragmentByTag(Common.TAG_DLGFRGRPERITEMSINGLESELECTION);
            if(dlg==null){
                dlg = DlgFrLeoSaltPerItemSingleSelection.newInstance(this, Common.TAG_PREFSSCREEN_FRAGMENT, myPrefAttrsInfo.getMyKey(), myPrefAttrsInfo.getMyTitle(),mStringValue,
                        myPrefAttrsInfo.getMyOptionsArrayId(), myPrefAttrsInfo.getMyValuesArrayId(), myPrefAttrsInfo.getMyIconsArrayId(), spinnerOptionsArrayId, spinnerValuesArrayId,
                        iconsValueTint,
                        myPrefAttrsInfo.getMySeparator(),shortout);
                dlg.show(prefsScreen.getFragmentManager(),Common.TAG_DLGFRGRPERITEMSINGLESELECTION);
            }
        }
    }

    @Override
    public void onBindView(View view) {
        super.onBindView(view);

    }

    @Override
    public void resetPreference(){
        mStringValue = myPrefAttrsInfo.getMyStringDefValue();
        saveNewStringValue(mStringValue);
    }


    @Override
    public void configStringPreference(String value){

    }

    public void onPerItemSingleSelectionSet(String value){
        mStringValue=value;
        saveNewStringValue(mStringValue);
    }

}
