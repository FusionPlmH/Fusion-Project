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
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Html;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import org.leo.tweaks.salt.R;
import org.leo.tweaks.salt.prefssupport.PrefAttrsInfo;
import org.leo.tweaks.salt.utils.Common;

public class LeoSaltInfoText extends LeoSaltBasePreference{

    private int mRightIconTint =0;

    public LeoSaltInfoText(Context context, AttributeSet attrs) {
        super(context, attrs);
        initAttributes(context, attrs);
    }

    public LeoSaltInfoText(Context context, AttributeSet attrs, int defStyleAttr){
        super(context,attrs,defStyleAttr);
        initAttributes(context,attrs);
    }

    private void initAttributes(Context context, AttributeSet attrs){
        initStringPrefsCommonAttributes(context,attrs,false, false);
        setTypeOfPreference(PrefAttrsInfo.PREF_TYPE.NEUTRAL);

        TypedArray ta;
        if(Common.mContextWrapper!=null) ta = Common.mContextWrapper.obtainStyledAttributes(attrs, R.styleable.LeoSaltInfotext);
        else ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltInfotext);

        //   TypedArray ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltInfotext);
        Drawable mRightIcon=ta.getDrawable(R.styleable.LeoSaltInfotext_rightIcon);

        if(ta.hasValue(R.styleable.LeoSaltInfotext_rightIconTint)) {
            try {
                mRightIconTint = ta.getInt(R.styleable.LeoSaltInfotext_rightIconTint, 0);
            } catch (Exception e) {
            }
        }
        ta.recycle();

        int a = 47;
        checkDepRuleAndAssignKeyIfNeeded();

        if(mRightIcon!=null) {
            setWidgetLayoutResource(R.layout.widget_icon_accent);
            setWidgetIcon(mRightIcon);
        }

        setSelectable(false);

    }

    @Override
    public void saveStringValueInSettings(String value){

    }

    @Override
    protected View onCreateView(ViewGroup parent) {
        View view = (View) super.onCreateView(parent);
        TextView vTitle =  (TextView) view.findViewById(android.R.id.title);
        vTitle.setVisibility(View.GONE);
        String t = getSummary().toString();
        if(t!=null) setSummary(Html.fromHtml(getSummary().toString()));
        if(vWidgetIcon!=null && mRightIconTint !=0) {
            vWidgetIcon.setColorFilter(mRightIconTint);
        }
        return view;
    }

    @Override
    public void onBindView(View view) {
        super.onBindView(view);
        refreshView();
    }


}
