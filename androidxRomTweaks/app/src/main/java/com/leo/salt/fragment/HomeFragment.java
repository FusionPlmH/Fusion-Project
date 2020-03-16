package com.leo.salt.fragment;

import android.content.ContentResolver;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;

import android.preference.Preference;
import android.util.Log;

import com.leo.SweetAlert.SweetAlertDialog;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BasePreferenceFragment;

import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.tweaks.view.widget.DialogView.AppPackageVersionsError;
import static com.leo.salt.utils.PrefUtils.getCodeVersion;


public  class HomeFragment extends BasePreferenceFragment {


    public static final String KEY="leo_salt_wallpaper_service";
    public  String mWallpaperService;
    public Preference mHome;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this,"launcher_home_prefs");
        mHome= (Preference) findPreference("wallpaper_service");
        String str="com.sec.android.app.launcher";
        if (getCodeVersion(mContext,str).equals("10.0.35.14")) {
            Log.v(str,"OK");
        }else{
            AppPackageVersionsError(mContext,str,"rm -rf /data/app/com.sec.android.app.launcher*");
        }

    }




}
