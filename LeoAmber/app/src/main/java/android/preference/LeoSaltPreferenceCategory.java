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

import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import org.leo.tweaks.salt.LeoSaltPreferenceScreen;
import org.leo.tweaks.salt.R;
import org.leo.tweaks.salt.utils.Common;
import org.leo.tweaks.salt.prefssupport.PrefAttrsInfo;
import org.leo.tweaks.salt.utils.BPRulesUtils;


public class LeoSaltPreferenceCategory extends PreferenceCategory implements LeoSaltPreferenceScreen.CustomDependencyListener{

    private TextView vTit=null;

    private boolean dep=true;
    private int mTextColor=0;
    private int mBackgroundColor=0;
    private boolean mHidden;

    private boolean isBPEnabled = true;
    private boolean centerhorizontal = false;

    PrefAttrsInfo  myPrefAttrsInfo = null;



    public LeoSaltPreferenceCategory(Context context, AttributeSet attrs, int defStyleAttr){
        super(context,attrs,defStyleAttr);
        initAttributes(context,attrs);
    }

    public LeoSaltPreferenceCategory(Context context, AttributeSet attrs) {
        super(context, attrs);
        initAttributes(context,attrs);
    }


    private void initAttributes(Context context, AttributeSet attrs){
        setLayoutResource(R.layout.pref_LeoSaltpreferencecategory);
        myPrefAttrsInfo = new PrefAttrsInfo(getContext(), attrs, getTitle(),getSummary(),getKey());
        checkDepRuleAndAssignKeyIfNeeded();
        String mMyBPRule=myPrefAttrsInfo.getMyBpRule();
        if(mMyBPRule!=null && !mMyBPRule.isEmpty()) isBPEnabled  = BPRulesUtils.isBPEnabled(mMyBPRule);

        TypedArray ta;
        if(Common.mContextWrapper!=null) ta = Common.mContextWrapper.obtainStyledAttributes(attrs, R.styleable.LeoSaltPreferencecategory);
        else ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltPreferencecategory);

        //  TypedArray ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltPreferencecategory);

        if(ta.hasValue(R.styleable.LeoSaltPreferencecategory_textColor))
            mTextColor =ta.getColor(R.styleable.LeoSaltPreferencecategory_textColor,0x80000000);



        if(ta.hasValue(R.styleable.LeoSaltPreferencecategory_backgroundColor))
            mBackgroundColor = ta.getInt(R.styleable.LeoSaltPreferencecategory_backgroundColor, 0);



        centerhorizontal = ta.getBoolean(R.styleable.LeoSaltPreferencecategory_centerHorizontal,false);
        mHidden=ta.getBoolean(R.styleable.LeoSaltPreferencecategory_hiddenCategory,false);

        ta.recycle();

    }

    public void checkDepRuleAndAssignKeyIfNeeded(){  // in some type of prefs, we need to make sure we have a key for dep rules
        String deprul = myPrefAttrsInfo.getMyDependencyRule();
        if(deprul!=null && !deprul.isEmpty()){
            if(!myPrefAttrsInfo.isValidKey()){
                setKey(getClass().getName() + "_" + getOrder());
            }
        }
    }

    @Override
    public void onDependencyChanged(Preference dependency, boolean disableDependent) {
        super.onDependencyChanged(dependency, disableDependent);
        dep = !disableDependent;
    }

    @Override
    protected View onCreateView(ViewGroup parent) {
        LinearLayout ll = (LinearLayout) super.onCreateView(parent);
        if(mHidden) {
            ll.removeAllViews();
        }else {
            vTit =  (TextView) ll.findViewById(android.R.id.title);
            vTit.setMaxLines(5);
            if(mTextColor!=0) vTit.setTextColor(mTextColor);
            if(mBackgroundColor!=0) vTit.setBackgroundColor(mBackgroundColor);
            if(centerhorizontal) {
                vTit.setGravity(Gravity.CENTER);

            }
        }

        return ll;
    }

    @Override
    public void onBindView(View view) {
        super.onBindView(view);
        if(vTit!=null) {
            if(dep) vTit.setAlpha((float) 1.0 );
            else vTit.setAlpha((float) 0.4);
        }
    }

    /**********  Onpreferencechangelistener - add custom dependency rule *********/

    @Override
    public void setOnPreferenceChangeListener(Preference.OnPreferenceChangeListener onPreferenceChangeListener){
        LeoSaltPreferenceScreen LeoSaltPreferenceScreen = (LeoSaltPreferenceScreen) onPreferenceChangeListener;
        if(!isBPEnabled){
            LeoSaltPreferenceScreen.addPreferenceToRemoveList(this);
        }
        else{
            if(!Common.SyncUpMode) {
                super.setOnPreferenceChangeListener(onPreferenceChangeListener);
                if(myPrefAttrsInfo.getMyDependencyRule()!=null) {
                    //    LeoSaltPreferenceScreen LeoSaltPreferenceScreen = (LeoSaltPreferenceScreen) getOnPreferenceChangeListener();
                    if(isBPEnabled) LeoSaltPreferenceScreen.addCustomDependency(this, myPrefAttrsInfo.getMyDependencyRule(), null);
                }
            }

        }
    }

    /************ custom dependencies ****************/
    public void OnCustomDependencyChange(boolean state){
        setEnabled(state);
        dep=state;
    }


}
