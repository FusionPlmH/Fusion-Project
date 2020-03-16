package com.leo.salt.tweaks.base;





import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.provider.MediaStore;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.support.design.widget.Snackbar;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;

import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.AppPicker;
import com.leo.salt.tweaks.view.BatteryPicker;
import com.leo.salt.tweaks.view.WallpaperPicker;

import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import java.util.HashSet;
import static com.leo.salt.utils.PrefUtils.*;
import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getColorAttr;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;


public abstract class BasePreferenceFragment extends PreferenceFragment  {
    protected static final String TAG = "LeoRom";
    BasePreferenceFragment mPreferenceFragment;
    protected Context mContext;
    PreferenceManager mPreferenceManager;
    String spName;
    protected ContentResolver mResolver;
    protected ShortcutPickerHelper mPicker;


     public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);


        mContext = getActivity();

        mResolver = getActivity().getContentResolver();

    }
    public  Intent mLeoIntent;
    public void keySendBroadcast(Preference preference,String ACTION){
        preference.setOnPreferenceClickListener(preference1 -> {
            mLeoIntent = new Intent();
            mLeoIntent.setAction(ACTION);
            getActivity().sendBroadcast( mLeoIntent);
            return false;
        });
    }
    public void  BasePreferenceFragment(Context context, BasePreferenceFragment pf, String spName) {
        this. mPreferenceFragment= pf;
        this. mContext= context;
        this.spName = spName;
        mPreferenceManager= pf.getPreferenceManager();
        mPreferenceManager.setSharedPreferencesName(spName);
        //prefs =mPreferenceManager.getSharedPreferences();
        //  mEditor= prefs.edit();

        mResolver= mContext.getContentResolver();
        int id =mContext.getResources().getIdentifier(spName, "xml", mContext.getPackageName());
        pf.addPreferencesFromResource(id);

    }
    public boolean isProKeyInstalled(Context context){
        boolean isInstalled;
        PackageManager packageManager = context.getPackageManager();
        try {
            PackageInfo pInfo1 = packageManager.getPackageInfo("", PackageManager.GET_SIGNATURES);
            PackageInfo pInfo2 = packageManager.getPackageInfo(context.getPackageName(), PackageManager.GET_SIGNATURES);

            isInstalled = pInfo1.signatures[0].toCharsString().equals(pInfo2.signatures[0].toCharsString());
        } catch (PackageManager.NameNotFoundException e) {
            isInstalled = false;
            e.printStackTrace();
        }
        return isInstalled;
    }

    public void showSnack(String mensaje){
        Snackbar snackbar = Snackbar.make(getActivity().findViewById(android.R.id.content), mensaje, Snackbar.LENGTH_SHORT)
                .setAction("Action", null);
     snackbar.getView().setBackgroundColor(getColorAttr(getActivity(),R.attr.colorAccent));
        snackbar.show();

    }


    public void launchAppSPicker(String keystr) {
       Intent intent = new Intent();
       intent.putExtra("appkey", keystr);
       intent.setClass(mContext, AppPicker.class);
       startActivity(intent);
    }

    protected void EditTextDialog(String STR,String Title){
        AlertDialog dialog;
        AlertDialog.Builder alert = new AlertDialog.Builder(getActivity());
        alert.setTitle(Title);
        alert.setIcon(getCustomArrayDrawable("android","menu_ic_magnifier_window") );
        alert.setMessage(getStringIdentifier(getActivity(),"input_message"));

        final EditText input = new EditText(getActivity());
        String oldText =  Settings.System.getString(
                getActivity().getContentResolver(),
                STR);
        if (oldText != null) {
            input.setHint(getStringIdentifier(getActivity(),"input_hint"));
            input.setText(oldText);
        }
        alert.setView(input);

        alert.setPositiveButton(android.R.string.ok, (dialogInterface, whichButton) -> {
            String value = input.getText().toString();
            if (value.equals("")) {
                return;
            }
            Settings.System.putString(getActivity().getContentResolver(),
                    STR, value);

            return;
        });

        alert.setNegativeButton(android.R.string.cancel,
                (dialogInterface, which) -> {
                    return;
                });
        dialog = alert.create();
        dialog.show();
    }
    protected void launchWallpaperPicker(String keystr,String name) {
        Intent intent = new Intent();
        Resource.Urlr = ("/data/data/com.leo.salt.tweaks/LeoTweaks/"+keystr+"_BG_" + System.currentTimeMillis() + ".jpg");
        intent.putExtra("WallpaperKey", keystr);
        intent.putExtra("WallpaperName", name);
        intent.setClass(mContext, WallpaperPicker.class);
        startActivity(intent);
    }
    private int mLayoutResId = R.layout.preference_list_fragment;
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(this.mLayoutResId, viewGroup, false);
    }




}
