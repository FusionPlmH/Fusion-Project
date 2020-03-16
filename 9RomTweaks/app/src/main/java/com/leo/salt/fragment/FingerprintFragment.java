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
import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.Blacklist;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.utils.PrefUtils.LEO_PREFE;


@SuppressLint("ResourceAsColor")
public class FingerprintFragment  extends BasePreferenceFragment implements
       Preference.OnPreferenceChangeListener{


    public SaltSettingDefaultListPreference mFingerprintUP,mFingerprintDown;
    private String mString;

    private static final String FingerprintUPKEY = LEO_PREFE+"global_fingerprint_up_action";
    private static final String FingerprintDown = LEO_PREFE+"global_fingerprint_down_action";

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);

        mContext = getActivity();
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "fingerprint_prefs");

        mFingerprintUP = (SaltSettingDefaultListPreference) findPreference("fingerprint_up_action");
        int BixbyOnClick = Settings.System.getInt(resolver,
                FingerprintUPKEY, 0);
        mFingerprintUP.setValue(String.valueOf(BixbyOnClick));
        mFingerprintUP.setSummary(mFingerprintUP.getEntry());
        mFingerprintUP.setOnPreferenceChangeListener(this);
        mFingerprintDown = (SaltSettingDefaultListPreference) findPreference("fingerprint_down_action");
        int BixbyOnLongPress = Settings.System.getInt(resolver,
                FingerprintDown, 0);
        mFingerprintDown.setValue(String.valueOf(BixbyOnLongPress));
        mFingerprintDown.setSummary(mFingerprintDown.getEntry());
        mFingerprintDown.setOnPreferenceChangeListener(this);

        setHasOptionsMenu(true);
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("fingerprint_gesture_quick").setEnabled(true);
        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("fingerprint_gesture_quick").setEnabled(false);
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
        if (preference ==mFingerprintUP) {
            String key=FingerprintUPKEY;
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
            int index =mFingerprintUP.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mFingerprintUP.setSummary(mFingerprintUP.getEntries()[index]);
            return true;
        }else if (preference ==mFingerprintDown) {
            String key2=FingerprintDown;
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
            int index =mFingerprintDown.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key2, location);
            mFingerprintDown.setSummary(mFingerprintDown.getEntries()[index]);
            return true;
        }
        return true;
    }




}
