package com.leo.global.tweaks.base;





import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.provider.MediaStore;
import android.provider.Settings;
import android.support.design.widget.Snackbar;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.Toast;


import com.leo.global.preference.AppPicker;
import com.leo.global.preference.SaltSettingListPreference;
import com.leo.global.tweaks.R;

import java.io.File;

import static com.leo.global.utils.Build.getLeoBuild;

public abstract class BasePreferenceFragment extends PreferenceFragment  {

    protected static final String TAG = "LeoRom";

    BasePreferenceFragment mPreferenceFragment;
    protected Context mContext;
    PreferenceManager mPreferenceManager;
    String spName;
    // SharedPreferences prefs;
    //  SharedPreferences.Editor mEditor;
    protected ContentResolver mResolver;
    protected ContentResolver mContentRes;
    public  String  WALLPAPER_KEY;
    public static final int REQUEST_PICK_WALLPAPER = 999;
    public void launchAppChooseDialog(String keystr,SaltSettingListPreference pref) {
        AppPicker dDialog = new AppPicker(getActivity()) {
            @Override
            public void onListViewItemClick(String str, String str2) {
                Settings.System.putString(
                        mContentRes,keystr+"_apps", str);
                Settings.System.putString(
                        mContentRes, pref.getKey(),
                        str2);
                //   setApplicationNamePreferenceSummary(bb,pref);
            }

            @Override
            public void onListViewItemClickActivity(ActivityInfo ai) {
                Settings.System.putString(
                        mContext.getContentResolver(),keystr+"_activity",
                        ai != null ? ai.name : "NONE");
                // setApplicationNamePreferenceSummary(keyActivity,pref);
            }
        };
        dDialog .setTitle(R.string.global_action_app_select);
        dDialog .setButton(DialogInterface.BUTTON_NEGATIVE,mContext.getString(R.string.color_blend_cancel), new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        });
        dDialog .create();
        dDialog .show();

    }
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == Activity.RESULT_OK) {
            if (requestCode == REQUEST_PICK_WALLPAPER ) {

                if (mImageTmp.length() == 0 || !mImageTmp.exists()) {
                    Toast.makeText(getActivity(),
                            "1515",
                            Toast.LENGTH_LONG).show();
                    return;
                }
                long currentTime = System.currentTimeMillis();



                File image = new File(mContext.getFilesDir() + File.separator
                        + WALLPAPER_KEY+"_"+ getLeoBuild("ro.build.rom.name")+"_"+currentTime + ".jpg");

                String path = image.getAbsolutePath();

                mImageTmp.renameTo(image);
                image.setReadable(true, false);

                if (requestCode == REQUEST_PICK_WALLPAPER) {
                    Settings.System.putString(getActivity().getContentResolver(),
                            "leo_tweaks_"+WALLPAPER_KEY,path);
                }
            }
        } else {
            if (mImageTmp.exists()) {
                mImageTmp.delete();
            }
        }

    }
    public void showSnack(String mensaje){
        Snackbar snackbar = Snackbar.make(getActivity().findViewById(android.R.id.content), mensaje, Snackbar.LENGTH_LONG)
                .setAction("Action", null);
        snackbar.show();

    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = super.onCreateView(inflater, container, savedInstanceState);
        ListView lv = (ListView)view.findViewById(android.R.id.list);
        lv.setBackgroundResource(R.drawable.design_snackbar_background1);

        return view;
    }
    public void startPictureCrop(int request, boolean landscape) {
        Display display = getActivity().getWindowManager().getDefaultDisplay();
        int width = display.getWidth();
        int height = display.getHeight();
        Intent intent = new Intent(Intent.ACTION_PICK, android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent.setType("image/*");
        intent.putExtra("crop", "true");
        boolean isPortrait = getResources()
                .getConfiguration().orientation == Configuration.ORIENTATION_PORTRAIT;
        intent.putExtra("aspectX", (landscape ? !isPortrait : isPortrait)
                ? width : height);
        intent.putExtra("aspectY", (landscape ? !isPortrait : isPortrait)
                ? height : width);
        intent.putExtra("outputX", (landscape ? !isPortrait : isPortrait)
                ? width : height);
        intent.putExtra("outputY", (landscape ? !isPortrait : isPortrait)
                ? height : width);
        intent.putExtra("scale", true);
        intent.putExtra("scaleUpIfNeeded", true);
        intent.putExtra("outputFormat", Bitmap.CompressFormat.PNG.toString());
        try {
            mImageTmp.createNewFile();
            mImageTmp.setWritable(true, false);
            intent.putExtra(MediaStore.EXTRA_OUTPUT, Uri.fromFile(mImageTmp));
            startActivityForResult(intent, request);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage(), e);
        }
    };
    private File mImageTmp;
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        mImageTmp = new File(getActivity().getFilesDir() + "/leo_bg.tmp");
        mContext = getActivity();
        mContentRes = getActivity().getContentResolver();
        mResolver = mContext.getContentResolver();

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




    public AppPicker mDialog;
}
