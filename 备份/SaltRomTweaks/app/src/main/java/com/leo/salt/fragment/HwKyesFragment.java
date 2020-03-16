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


import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.Blacklist;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.utils.PrefUtils.LEO_PREFE;


@SuppressLint("ResourceAsColor")
public class HwKyesFragment  extends BasePreferenceFragment implements
       Preference.OnPreferenceChangeListener{


    public ListPreference mLongPressOnRecent
            ,mLongPressOnBack,mLongPressOnHome;
    private String mString;

    private static final String LongPressOnRecentKEY = LEO_PREFE+"global_longpress_recent_action";
    private static final String LongPressOnBACKKEY = LEO_PREFE+"global_longpress_back_action";
    private static final String LongPressOnHOMEKEY = LEO_PREFE+"global_longpress_home_action";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);

        mContext = getActivity();
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "hwkyes_prefs");

        mLongPressOnRecent = (ListPreference) findPreference("recent_longpress_action");
        int BixbyOnClick = Settings.System.getInt(resolver,
                LongPressOnRecentKEY, 0);
        mLongPressOnRecent.setValue(String.valueOf(BixbyOnClick));
        mLongPressOnRecent.setSummary(mLongPressOnRecent.getEntry());
        mLongPressOnRecent.setOnPreferenceChangeListener(this);

        mLongPressOnHome= (ListPreference) findPreference("home_longpress_action");
        int home = Settings.System.getInt(resolver,
                LongPressOnHOMEKEY, 0);
        mLongPressOnHome.setValue(String.valueOf(home));
        mLongPressOnHome.setSummary(mLongPressOnHome.getEntry());
        mLongPressOnHome.setOnPreferenceChangeListener(this);

        mLongPressOnBack = (ListPreference) findPreference("back_longpress_action");
        int back = Settings.System.getInt(resolver,
                LongPressOnBACKKEY, 0);
        mLongPressOnBack.setValue(String.valueOf(back));
        mLongPressOnBack.setSummary(mLongPressOnBack.getEntry());
        mLongPressOnBack.setOnPreferenceChangeListener(this);
        setHasOptionsMenu(true);
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("global_hwkeys_action_enable").setEnabled(true);
        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("global_hwkeys_action_enable").setEnabled(false);
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
        if (preference == mLongPressOnRecent) {
            String key=LongPressOnRecentKEY;
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
            int index = mLongPressOnRecent.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mLongPressOnRecent.setSummary(mLongPressOnRecent.getEntries()[index]);
            return true;
        }else if (preference == mLongPressOnBack) {
            String key=LongPressOnBACKKEY;
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
            int index =  mLongPressOnBack.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mLongPressOnBack.setSummary( mLongPressOnBack.getEntries()[index]);
            return true;
        }else if (preference ==mLongPressOnHome) {
            String key=LongPressOnHOMEKEY;
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
            int index =mLongPressOnHome.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mLongPressOnHome.setSummary(mLongPressOnHome.getEntries()[index]);
            return true;
        }
        return true;
    }




}
