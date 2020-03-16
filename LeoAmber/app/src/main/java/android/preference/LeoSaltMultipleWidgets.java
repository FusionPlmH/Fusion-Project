/* 
 * Grouxho - espdroids.com - 2018	

 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. 
 
 */


package android.preference;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

import org.leo.tweaks.salt.utils.Common;
import org.leo.tweaks.salt.LeoSaltPreferenceScreen;
import org.leo.tweaks.salt.R;
import org.leo.tweaks.salt.prefs.DlgFrLeoSaltMultipleWidgets;
import org.leo.tweaks.salt.utils.LeoSaltPrefsUtils;

import java.util.List;
import java.util.regex.Pattern;


public class LeoSaltMultipleWidgets extends LeoSaltBasePreference  implements DlgFrLeoSaltMultipleWidgets.OnWidgetsSelectedListener{

    private String mLabel;
    private int idWidgetsArray;


    public LeoSaltMultipleWidgets(Context context, AttributeSet attrs) {
        super(context, attrs);
        initAttributes(context, attrs);
    }

    public LeoSaltMultipleWidgets(Context context, AttributeSet attrs, int defStyleAttr){
        super(context,attrs,defStyleAttr);
        initAttributes(context,attrs);
    }

    private void initAttributes(Context context, AttributeSet attrs){
        setWidgetLayoutResource(R.layout.widget_icon_accent);
        initStringPrefsCommonAttributes(context,attrs,true, false);
        TypedArray ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltMultiplewidgets);
        idWidgetsArray = ta.getResourceId(R.styleable.LeoSaltMultiplewidgets_widgetsArray,0);
        ta.recycle();
        setDefaultValue(myPrefAttrsInfo.getMyStringDefValue());
    }

    @Override
    public void resetPreference(){
        String[] uris = mStringValue.split(Pattern.quote(myPrefAttrsInfo.getMySeparator()));
        for(int i=0;i<uris.length;i++) LeoSaltPrefsUtils.deleteLeoSaltIconFileFromUriString(uris[i]);
        mStringValue= myPrefAttrsInfo.getMyStringDefValue();
        configStringPreference(mStringValue);
        saveNewStringValue(mStringValue);

    }

    @Override
    public void configStringPreference(String value){
        int napps=0;
        if(! (mStringValue.isEmpty()||(mStringValue==null))  ){
            String[] arr = mStringValue.split(Pattern.quote(myPrefAttrsInfo.getMySeparator()));
            napps=arr.length;
        }
        if(napps==0) mLabel=myPrefAttrsInfo.getMySummary();
        else mLabel = myPrefAttrsInfo.getMySummary() +" "+  getContext().getString( R.string.LeoSalts_num_selected,napps ) ;
        setSummary(mLabel);
    }

    @Override
    public void showDialog(){

        AppWidgetManager manager = AppWidgetManager.getInstance(getContext());
        List<AppWidgetProviderInfo> infoList = manager.getInstalledProviders();
        /*for (AppWidgetProviderInfo info : infoList) {
            ComponentName componentName =  info.provider;
            Toast.makeText(getContext(),"Widgets = " + String.valueOf(infoList.size()),Toast.LENGTH_SHORT);
        }*/
        DlgFrLeoSaltMultipleWidgets dlg;
        LeoSaltPreferenceScreen prefsScreen = (LeoSaltPreferenceScreen) getOnPreferenceChangeListener();
        if(prefsScreen!=null){
            dlg = (DlgFrLeoSaltMultipleWidgets) prefsScreen.getFragmentManager().findFragmentByTag(Common.TAG_DLGFRGRWIDGETS);
            if(dlg==null){
                dlg = DlgFrLeoSaltMultipleWidgets.newInstance(this, Common.TAG_PREFSSCREEN_FRAGMENT, true,myPrefAttrsInfo.getMyKey(),myPrefAttrsInfo.getMyTitle(), mStringValue,
                        idWidgetsArray, myPrefAttrsInfo.getMySeparator(), myPrefAttrsInfo.getMyMaxItems());
                dlg.show(prefsScreen.getFragmentManager(),Common.TAG_DLGFRGRWIDGETS);
            }
        }

    }

    public void OnWidgetsSelected(String widgets){
        if(!mStringValue.equals(widgets)){
            mStringValue=widgets;
            saveNewStringValue(mStringValue);
            configStringPreference(mStringValue);
        }
    }
}
