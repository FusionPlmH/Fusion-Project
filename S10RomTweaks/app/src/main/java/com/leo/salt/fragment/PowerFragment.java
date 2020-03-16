package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
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
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.Blacklist;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.tweaks.view.widget.DialogView.SafetyDonateDialogView;
import static com.leo.salt.utils.PrefUtils.LEO_PREFE;


@SuppressLint("ResourceAsColor")
public class PowerFragment  extends BasePreferenceFragment implements
       Preference.OnPreferenceChangeListener{


    public SaltSettingDefaultListPreference mPoweDouble,mPowerLongPress,mPowerKeyguardDouble,mPowerLongPressKeyguard;
    //Context mContext;

    private static final String PoweDoubleKEY = LEO_PREFE+"global_power_double_action";
    private static final String PowerLongPressKEY = LEO_PREFE+"global_power_longpress_action";
    private static final String PowerKeyguardDoubleKEY = LEO_PREFE+"keyguard_global_power_double_action";
    private static final String BixbyLongPressKeyguardKEY = LEO_PREFE+"keyguard_global_power_longpress_action";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        mContext = getActivity();
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "power_prefs");

        mPoweDouble = (SaltSettingDefaultListPreference) findPreference("power_double_action");
        int BixbyOnClick = Settings.System.getInt(resolver,
                PoweDoubleKEY, 0);
        mPoweDouble.setValue(String.valueOf(BixbyOnClick));
        mPoweDouble.setSummary(mPoweDouble.getEntry());
        mPoweDouble.setOnPreferenceChangeListener(this);

        mPowerLongPress = (SaltSettingDefaultListPreference) findPreference("power_longpress_action");
        int BixbyOnLongPress = Settings.System.getInt(resolver,
                PowerLongPressKEY, 0);
        mPowerLongPress.setValue(String.valueOf(BixbyOnLongPress));
        mPowerLongPress.setSummary(mPowerLongPress.getEntry());
        mPowerLongPress.setOnPreferenceChangeListener(this);

        mPowerKeyguardDouble = (SaltSettingDefaultListPreference) findPreference("keyguard_power_double_action");
        int BixbyOnKeyguardClick = Settings.System.getInt(resolver,
                PowerKeyguardDoubleKEY, 0);
        mPowerKeyguardDouble.setValue(String.valueOf(BixbyOnKeyguardClick));
        mPowerKeyguardDouble.setSummary(mPowerKeyguardDouble.getEntry());
        mPowerKeyguardDouble.setOnPreferenceChangeListener(this);

        mPowerLongPressKeyguard = (SaltSettingDefaultListPreference) findPreference("keyguard_power_longpress_action");
        int BixbyOnKeyguardLongPress = Settings.System.getInt(resolver,
                BixbyLongPressKeyguardKEY, 0);
        mPowerLongPressKeyguard.setValue(String.valueOf(BixbyOnKeyguardLongPress));
        mPowerLongPressKeyguard.setSummary(mPowerLongPressKeyguard.getEntry());
        mPowerLongPressKeyguard.setOnPreferenceChangeListener(this);
        setHasOptionsMenu(true);
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("global_power_action_enable").setEnabled(true);
        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("global_power_action_enable").setEnabled(false);
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

    private String mString;
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference == mPoweDouble) {
            String STRT=PoweDoubleKEY ;
            if(newValue.equals("88")){
                launchAppSPicker(STRT);
            }else if(newValue.equals("99")){
                mString=STRT+"_short";
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
            int index = mPoweDouble.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    PoweDoubleKEY, location);
            mPoweDouble.setSummary(mPoweDouble.getEntries()[index]);
            return true;
        }else if (preference == mPowerLongPress) {
            String STRT=PowerLongPressKEY  ;
            if(newValue.equals("88")){
                launchAppSPicker(STRT);
            }else if(newValue.equals("99")){
                mString=STRT+"_short";
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
            int index =mPowerLongPress.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    PowerLongPressKEY , location);
            mPowerLongPress.setSummary(mPowerLongPress.getEntries()[index]);
            return true;
        }else if (preference ==mPowerKeyguardDouble) {

            int location = Integer.valueOf((String) newValue);
            int index = mPowerKeyguardDouble.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    PowerKeyguardDoubleKEY, location);
            mPowerKeyguardDouble.setSummary(mPowerKeyguardDouble.getEntries()[index]);
            return true;
        }else if (preference ==mPowerLongPressKeyguard) {

            int location = Integer.valueOf((String) newValue);
            int index =mPowerLongPressKeyguard.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    BixbyLongPressKeyguardKEY, location);
            mPowerLongPressKeyguard.setSummary(mPowerLongPressKeyguard.getEntries()[index]);
            return true;
        }
        return true;
    }



  //  @Override
    public void shortcutPicked(String uri, String friendlyName, Bitmap icon, boolean isApplication) {

    }
}
