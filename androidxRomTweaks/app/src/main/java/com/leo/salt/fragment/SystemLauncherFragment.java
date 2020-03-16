package com.leo.salt.fragment;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;


import android.os.Environment;
import android.preference.Preference;
import android.preference.PreferenceGroup;
import android.preference.PreferenceScreen;
import android.preference.SwitchPreference;
import android.provider.Settings;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;




import com.leo.salt.preference.SaltSettingCardWarningPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.view.widget.DialogView;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;

import static com.leo.salt.tweaks.view.widget.DialogView.Blacklist;



public  class SystemLauncherFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener{

    private SaltSettingSwitchPreference mSlidingEnabled;
    public  SaltSettingCardWarningPreference mWarning;
   public SaltSettingDefaultListPreference mTop,mBottom,mDouble;
   public static final String TOPKEY="leo_salt_launcher_gesture_sliding_top";
    public static final String      BottomKEY="leo_salt_launcher_gesture_sliding_bottom";
    public static final String   DoubleKEY="leo_salt_launcher_gesture_double_style";
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this,"launcher_gestures_prefs");
        mTop = (SaltSettingDefaultListPreference) findPreference("sliding_top");
        int top = Settings.System.getInt(resolver,
                TOPKEY, 0);
        mTop.setValue(String.valueOf(top));
        mTop.setSummary( mTop.getEntry());
        mTop.setOnPreferenceChangeListener(this);
        mBottom = (SaltSettingDefaultListPreference) findPreference("sliding_bottom");
        int Bottom = Settings.System.getInt(resolver,
                BottomKEY, 0);
        mBottom.setValue(String.valueOf(Bottom));
        mBottom.setSummary( mBottom.getEntry());
        mBottom.setOnPreferenceChangeListener(this);

        mDouble = (SaltSettingDefaultListPreference) findPreference("gesture_double");
        int Double = Settings.System.getInt(resolver,
                DoubleKEY, 0);
        mDouble.setValue(String.valueOf(Double));
        mDouble.setSummary(mDouble.getEntry());
        mDouble.setOnPreferenceChangeListener(this);
        setHasOptionsMenu(true);
        mSlidingEnabled= (SaltSettingSwitchPreference)findPreference("sliding_enabled");
        mSlidingEnabled.setChecked((Settings.System.getInt(resolver,
                "leo_salt_launcher_gesture_sliding_enabled", 0) == 1));
        mSlidingEnabled.setOnPreferenceChangeListener(this);

        mWarning= (SaltSettingCardWarningPreference)findPreference("launcher_warning");
        setDateclick();
    }

    private static final int MENU_RESET = Menu.FIRST;
    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        menu.add(0, MENU_RESET, 0, getStringIdentifier(mContext,"grid_Blacklist"))

                .setShowAsAction(MenuItem.SHOW_AS_ACTION_ALWAYS);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case MENU_RESET:
                Blacklist(mContext);
                return true;
            default:
                return super.onContextItemSelected(item);
        }
    }
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == Activity.RESULT_OK) {
            if (requestCode == ShortcutPickerHelper.REQUEST_PICK_SHORTCUT

                    || requestCode == ShortcutPickerHelper.REQUEST_CREATE_SHORTCUT
                    ) {
                mPicker.onActivityResult(requestCode, resultCode, data);
            }
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {

        if (preference ==mTop) {
            String key=TOPKEY;
            String mStr = key;
            if(newValue.equals("88")){
                launchAppSPicker(mStr);
            }else if(newValue.equals("99")){
                mString=mStr+"_short";
                mPicker = new ShortcutPickerHelper(this) {
                    @Override
                    public void onListViewItemClickActivity(String str, String str2, Bitmap bitmap) {
                        showSnack(getStringIdentifier(getActivity(),"shortcut_select")+"［"+str2+"］");
                        Settings.System.putString( mResolver,mString, str);
                    }
                };
                mPicker.pickShortcut();
            }
            int location = Integer.valueOf((String) newValue);
            int index =mTop.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    mStr, location);
            mTop.setSummary(mTop.getEntries()[index]);
            return true;
        }else if (preference ==mBottom) {
            String key2=BottomKEY;
            String mStr = key2;
            if(newValue.equals("88")){
                launchAppSPicker(mStr);
            }else if(newValue.equals("99")){
                mString=mStr+"_short";
                mPicker = new ShortcutPickerHelper(this) {
                    @Override
                    public void onListViewItemClickActivity(String str, String str2, Bitmap bitmap) {
                        showSnack(getStringIdentifier(getActivity(),"shortcut_select")+"［"+str2+"］");
                        Settings.System.putString( mResolver,mString, str);
                    }
                };
                mPicker.pickShortcut();
            }
            int location = Integer.valueOf((String) newValue);
            int index =mBottom.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    mStr, location);
            mBottom.setSummary(mBottom.getEntries()[index]);
            return true;
        }else if (preference == mDouble) {
           String mStr = DoubleKEY;
            if(newValue.equals("88")){
                launchAppSPicker(mStr);
            }else if(newValue.equals("99")){
                mString=mStr+"_short";
                mPicker = new ShortcutPickerHelper(this) {
                    @Override
                    public void onListViewItemClickActivity(String str, String str2, Bitmap bitmap) {
                        showSnack(getStringIdentifier(getActivity(),"shortcut_select")+"［"+str2+"］");
                        Settings.System.putString( mResolver,mString, str);
                    }
                };
                mPicker.pickShortcut();
            }
            int location = Integer.valueOf((String) newValue);
            int index =mDouble.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    mStr, location);
            mDouble.setSummary(mDouble.getEntries()[index]);
            return true;
        }else if (preference ==mSlidingEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    "leo_salt_launcher_gesture_sliding_enabled", value ? 1 : 0);
            setDateclick();
            return true;
        }
        return true;
    }
  private   String mString;

    private void setDateclick() {
        boolean mNavRingLong = Settings.System.getInt(mContext.getContentResolver(),
                "leo_salt_launcher_gesture_sliding_enabled", 0)==1;
        if (mNavRingLong) {
            getPreferenceScreen().addPreference(mWarning);
            getPreferenceScreen().addPreference(mTop);
            getPreferenceScreen().addPreference(mBottom);
        }else {
            getPreferenceScreen().removePreference(mWarning);
            getPreferenceScreen().removePreference(mTop);
            getPreferenceScreen().removePreference(mBottom);
        }
    }
}
