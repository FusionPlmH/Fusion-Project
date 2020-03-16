
/* 
 * Grouxho - espdroids.com - 2018	

 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. 
 
 */
 
 
package android.preference;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;


import org.leo.tweaks.salt.LeoSaltPreferenceScreen;
import org.leo.tweaks.salt.R;


import org.leo.tweaks.salt.prefs.DlgFrLeoSaltAccess;
import org.leo.tweaks.salt.utils.Common;
import org.leo.tweaks.salt.utils.LeoSaltPrefsUtils;

import java.io.File;
import java.net.URISyntaxException;



public class LeoSaltAccess extends LeoSaltBasePreference implements
        DlgFrLeoSaltAccess.LeoSaltAccesListener
        {
    private boolean mSaveCustomActionsIcons;
    private boolean mShowShortCuts;
    private boolean mShowUsuApps;
    private boolean mShowActivities;
    int iconsValueTint =0;
    int mType=-1;


    private String mLabel;

    private int mTypoe = -1;

    public LeoSaltAccess(Context context, AttributeSet attrs) {
        super(context,attrs);
        initAttributes(context,attrs);
    }

    public LeoSaltAccess(Context context, AttributeSet attrs, int defStyleAttr){
        super(context,attrs,defStyleAttr);
        initAttributes(context,attrs);
    }

    /***** set up and initial values *************/

    private void initAttributes(Context context, AttributeSet attrs){
        setWidgetLayoutResource(R.layout.widget_icon_accent);
        initStringPrefsCommonAttributes(context,attrs,false, true);

        Resources res = context.getResources();
        mLabel =myPrefAttrsInfo.getMySummary();

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

     /************** view & value management *******************************/

     @Override
     protected View onCreateView(ViewGroup parent) {
         View view = super.onCreateView(parent);
         return view;

     }

    @Override
    public void onBindView(View view) {
        super.onBindView(view);
        if(mType==Common.ID_ACCESS_CUSTOM){
            if(vWidgetIcon!=null && iconsValueTint!=0) vWidgetIcon.setColorFilter(iconsValueTint);
        }
        refreshView();
    }

    @Override
    public void configStringPreference(String value){
        if(value==null || value.isEmpty()){
            setWidgetIcon(null);
            setSummary(myPrefAttrsInfo.getMySummary());
            refreshView();
            return;
        }

        Intent intent=null;

        mLabel = myPrefAttrsInfo.getMySummary();
        try {
            intent = Intent.parseUri(value, 0);
        }catch (URISyntaxException e) {
            return;
        }

        mLabel = LeoSaltPrefsUtils.getActivityLabelFromIntent(getContext(), intent);
        mTypoe = intent.getIntExtra(Common.EXTRA_URI_TYPE,-1);


        setSummary(mLabel);
        mType=intent.getIntExtra(Common.EXTRA_URI_TYPE,-1);
        if(mType!=Common.ID_ACCESS_CUSTOM) {
            if(vWidgetIcon!=null) {
                vWidgetIcon.clearColorFilter();
            }
        }
        else {
            if (iconsValueTint!=0 && vWidgetIcon!=null) {
                vWidgetIcon.setColorFilter(iconsValueTint);
            }
        }
        setWidgetIcon(LeoSaltPrefsUtils.getDrawableFromLeoSaltIntent(getContext(),intent));
    }

    @Override
    public void resetPreference(){
      String curr_file_name = LeoSaltPrefsUtils.getFilenameFromLeoSaltUriString(mStringValue);
      mStringValue = myPrefAttrsInfo.getMyStringDefValue();
      String def_file_name =  LeoSaltPrefsUtils.getFilenameFromLeoSaltUriString(mStringValue);
      if(curr_file_name != null  ) {
          if(def_file_name!= null){
              if(!def_file_name.equals(curr_file_name)) LeoSaltPrefsUtils.deleteFileFromStringName(curr_file_name);
          }else LeoSaltPrefsUtils.deleteFileFromStringName(curr_file_name);
      }
      saveNewStringValue(mStringValue);
      configStringPreference(mStringValue);
    }

    /***************  Show Acess dialog *****************/
    @Override
    public void showDialog(){
        LeoSaltPreferenceScreen prefsScreen = (LeoSaltPreferenceScreen) getOnPreferenceChangeListener();
        if(prefsScreen!=null){
            if (prefsScreen.getFragmentManager().findFragmentByTag(Common.TAG_DLGFRGRACCESS) != null) return;

            DlgFrLeoSaltAccess dlg = DlgFrLeoSaltAccess.newInstance(this, Common.TAG_PREFSSCREEN_FRAGMENT, myPrefAttrsInfo.getMyKey(), myPrefAttrsInfo.getMyTitle(), mStringValue,
                    mShowShortCuts,mShowUsuApps,mShowActivities,
                    myPrefAttrsInfo.getMyOptionsArrayId(), myPrefAttrsInfo.getMyValuesArrayId(), myPrefAttrsInfo.getMyIconsArrayId(), iconsValueTint, mSaveCustomActionsIcons,
                    false);
            dlg.show(prefsScreen.getFragmentManager(),Common.TAG_DLGFRGRACCESS);
        }
    }


    public void LeoSaltSetAccess(String uri){
        LeoSaltPrefsUtils.deleteLeoSaltIconFileFromUriString(mStringValue);
        mStringValue =uri;
        String uri_file_name = LeoSaltPrefsUtils.getShortFileNameFromLeoSaltUriString(uri);
        if(uri_file_name!=null){
            String new_file_name=uri_file_name.replace(Common.TMP_PREFIX,"");
            String dest_file_name = Common.IconsDir + File.separator + new_file_name;
            uri_file_name = LeoSaltPrefsUtils.getFilenameFromLeoSaltUriString(uri);
            LeoSaltPrefsUtils.fileCopyFromTo(uri_file_name,dest_file_name);
            LeoSaltPrefsUtils.deleteFileFromStringName(uri_file_name);
            mStringValue = LeoSaltPrefsUtils.changeExtraValueInUriString(uri,Common.EXTRA_URI_ICON,dest_file_name);
        }
        saveNewStringValue(mStringValue);
        configStringPreference(mStringValue);
    }

}
