package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Fragment;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;


import android.preference.ListPreference;
import android.preference.Preference;
import android.provider.Settings;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;


import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.Blacklist;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.utils.PrefUtils.LEO_PREFE;


@SuppressLint("ResourceAsColor")
public class GlobalGesturesFragment  extends BasePreferenceFragment implements
       Preference.OnPreferenceChangeListener{


    public SaltSettingDefaultListPreference mTop,mLeft,mRight,mBottom;
    private String mString;

    private static final String TopkKEY = "leo_salt_global_finger_top_gestures";
    private static final String LeftKEY = "leo_salt_global_finger_left_gestures";
    private static final String RightKEY = "leo_salt_global_finger_right_gestures";
    private static final String BottomKEY = "leo_salt_global_finger_bottom_gestures";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);

        mContext = getActivity();
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "global_gesture_prefs");

        mTop = (SaltSettingDefaultListPreference) findPreference("finger_top_gestures");
        int BixbyOnClick = Settings.System.getInt(resolver,
                TopkKEY, 0);
        mTop.setValue(String.valueOf(BixbyOnClick));
        mTop.setSummary( mTop.getEntry());
        mTop.setOnPreferenceChangeListener(this);
        mLeft = (SaltSettingDefaultListPreference) findPreference("finger_left_gestures");
        int BixbyOnLongPress = Settings.System.getInt(resolver,
                LeftKEY , 0);
        mLeft.setValue(String.valueOf(BixbyOnLongPress));
        mLeft.setSummary(mLeft.getEntry());
        mLeft.setOnPreferenceChangeListener(this);

        mRight = (SaltSettingDefaultListPreference) findPreference("finger_right_gestures");
        int BixbyOnKeyguardClick = Settings.System.getInt(resolver,
                RightKEY, 0);
        mRight.setValue(String.valueOf(BixbyOnKeyguardClick));
        mRight.setSummary( mRight.getEntry());
        mRight.setOnPreferenceChangeListener(this);
        mBottom = (SaltSettingDefaultListPreference) findPreference("finger_bottom_gestures");
        int Bottom = Settings.System.getInt(resolver,
                BottomKEY, 0);
        mBottom.setValue(String.valueOf(Bottom));
        mBottom.setSummary(mBottom.getEntry());
        mBottom.setOnPreferenceChangeListener(this);
        setHasOptionsMenu(true);
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("global_finger_gestures_enable").setEnabled(true);
        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("global_finger_gestures_enable").setEnabled(false);
        }
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


    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference ==mTop) {
            String key=TopkKEY;
            if(newValue.equals("88")){
                launchAppSPicker(key);
            }else if(newValue.equals("99")){
                mString=key+"_short";
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
            int index = mTop.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mTop.setSummary(mTop.getEntries()[index]);
            return true;
        }else if (preference ==mLeft) {
            String key2=LeftKEY;
            if(newValue.equals("88")){
                launchAppSPicker(key2);
            }else if(newValue.equals("99")){
                mString=key2+"_short";
              //  launchShortcutPicker(key+"_short");

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
            int index = mLeft.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key2, location);
            mLeft.setSummary(mLeft.getEntries()[index]);
            return true;
        }else if (preference ==  mRight) {
            String key2=RightKEY;
            if(newValue.equals("88")){
                launchAppSPicker(key2);
            }else if(newValue.equals("99")){
                mString=key2+"_short";
                //  launchShortcutPicker(key+"_short");

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
            int index = mRight.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key2, location);
            mRight.setSummary( mRight.getEntries()[index]);
            return true;
        }else if (preference == mBottom) {
            String key2=BottomKEY;
            if(newValue.equals("88")){
                launchAppSPicker(key2);
            }else if(newValue.equals("99")){
                mString=key2+"_short";
                //  launchShortcutPicker(key+"_short");

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
                    key2, location);
            mBottom.setSummary( mBottom.getEntries()[index]);
            return true;
        }
        return true;
    }




}
