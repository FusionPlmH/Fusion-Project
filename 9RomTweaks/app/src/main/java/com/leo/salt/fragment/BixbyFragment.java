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
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.Blacklist;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.tweaks.view.widget.DialogView.SafetyDonateDialogView;
import static com.leo.salt.utils.PrefUtils.LEO_PREFE;


@SuppressLint("ResourceAsColor")
public class BixbyFragment  extends BasePreferenceFragment implements
       Preference.OnPreferenceChangeListener{


    public SaltSettingDefaultListPreference mBixbyOnClick,mBixbyOnClickLongPress,mBixbyOnKeyguardClick,mBixbyOnClickLongPressKeyguard;
    private String mString;

    private static final String BixbyOnClickKEY = LEO_PREFE+"global_bixby_click_action";
    private static final String BixbyLongPresskKEY = LEO_PREFE+"global_bixby_longpress_action";
    private static final String BixbyOnClickKeyguardKEY = LEO_PREFE+"keyguard_global_bixby_click_action";

    private static final String BixbyLongPressKeyguardKEY = LEO_PREFE+"keyguard_global_bixby_longpress_action";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);

        mContext = getActivity();
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "bixby_prefs");
        mBixbyOnClick = (SaltSettingDefaultListPreference) findPreference("bixby_click");
        int BixbyOnClick = Settings.System.getInt(resolver,
                BixbyOnClickKEY, 0);
        mBixbyOnClick.setValue(String.valueOf(BixbyOnClick));
        mBixbyOnClick.setSummary(mBixbyOnClick.getEntry());
        mBixbyOnClick.setOnPreferenceChangeListener(this);
        mBixbyOnClickLongPress = (SaltSettingDefaultListPreference) findPreference("bixby_longpress");
        int BixbyOnLongPress = Settings.System.getInt(resolver,
                BixbyLongPresskKEY, 0);
        mBixbyOnClickLongPress.setValue(String.valueOf(BixbyOnLongPress));
        mBixbyOnClickLongPress.setSummary(mBixbyOnClickLongPress.getEntry());
        mBixbyOnClickLongPress.setOnPreferenceChangeListener(this);

        mBixbyOnKeyguardClick = (SaltSettingDefaultListPreference) findPreference("keyguard_bixby_click");
        int BixbyOnKeyguardClick = Settings.System.getInt(resolver,
                BixbyOnClickKeyguardKEY, 0);
        mBixbyOnKeyguardClick.setValue(String.valueOf(BixbyOnKeyguardClick));
        mBixbyOnKeyguardClick.setSummary(mBixbyOnKeyguardClick.getEntry());
        mBixbyOnKeyguardClick.setOnPreferenceChangeListener(this);
        mBixbyOnClickLongPressKeyguard = (SaltSettingDefaultListPreference) findPreference("keyguard_bixby_longpress");
        int BixbyOnKeyguardLongPress = Settings.System.getInt(resolver,
                BixbyLongPressKeyguardKEY, 0);
        mBixbyOnClickLongPressKeyguard.setValue(String.valueOf(BixbyOnKeyguardLongPress));
        mBixbyOnClickLongPressKeyguard.setSummary(mBixbyOnClickLongPressKeyguard.getEntry());
        mBixbyOnClickLongPressKeyguard.setOnPreferenceChangeListener(this);
        setHasOptionsMenu(true);
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("global_bixby_action_enable").setEnabled(true);
        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("global_bixby_action_enable").setEnabled(false);
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
        if (preference == mBixbyOnClick) {
            String key=BixbyOnClickKEY ;
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
            int index = mBixbyOnClick.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mBixbyOnClick.setSummary(mBixbyOnClick.getEntries()[index]);
            return true;
        }else if (preference == mBixbyOnClickLongPress) {
            String key2=BixbyLongPresskKEY  ;
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
            int index = mBixbyOnClickLongPress.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key2, location);
            mBixbyOnClickLongPress.setSummary(mBixbyOnClickLongPress.getEntries()[index]);
            return true;
        }else if (preference == mBixbyOnKeyguardClick) {

            int location = Integer.valueOf((String) newValue);
            int index = mBixbyOnKeyguardClick.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    BixbyOnClickKeyguardKEY , location);
            mBixbyOnKeyguardClick.setSummary(mBixbyOnKeyguardClick.getEntries()[index]);
            return true;
        }else if (preference == mBixbyOnClickLongPressKeyguard) {

            int location = Integer.valueOf((String) newValue);
            int index =mBixbyOnClickLongPressKeyguard.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    BixbyLongPressKeyguardKEY, location);
            mBixbyOnClickLongPressKeyguard.setSummary(mBixbyOnClickLongPressKeyguard.getEntries()[index]);
            return true;
        }
        return true;
    }




}
