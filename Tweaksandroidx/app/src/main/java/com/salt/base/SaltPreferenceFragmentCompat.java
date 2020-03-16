package com.salt.base;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;

import androidx.fragment.app.DialogFragment;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceGroup;

import androidx.preference.PreferenceScreen;


import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.salt.config.R;
import com.salt.config.SaltApp;
import com.salt.config.picker.AppPicker;
import com.salt.config.picker.BatteryPicker;
import com.salt.config.picker.ShortcutPickerHelper;
import org.salt.preference.SaltListPreference;
import org.salt.preference.utils.CustomDialogPreferenceCompat;
import java.util.UUID;

import static com.salt.frame.LeadFrame.getCustomDrawable;
import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.utils.SaltProper.BuildSecuritycheck;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getCustomArrayDrawable;
import static org.salt.preference.colorpicker.Utils.getColorAttr;
import static org.salt.preference.utils.SaltPrefeUtils.defaultKey;
import static org.salt.preference.utils.SaltPrefeUtils.putStringSaltString;


public abstract class SaltPreferenceFragmentCompat extends PreferenceFragmentCompat {
    private static final String TAG = SaltPreferenceFragmentCompat.class.getSimpleName();
    public boolean findPreferenceEnabled =BuildSecuritycheck()?true :false;
    protected abstract int getSaltPreferencesFromXML();
    protected abstract void getSaltCreatePreferences();
    protected abstract void getSaltPreferenceEnabled();
;
    protected abstract boolean getSaltPreferenceDisableSnackn();


    ;
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
    @Override
    public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
        addPreferencesFromResource(getSaltPreferencesFromXML());
        getSaltCreatePreferences();
        if(!isProKeyInstalled(getActivity().getApplicationContext())) getSaltPreferenceEnabled();
        if(getSaltPreferenceDisableSnackn()){
            showSnackn(getApksStringInt(R.string.donate_error));
        }
    }

    private void setAllPreferencesToAvoidHavingExtraSpace(Preference preference) {
        preference.setIconSpaceReserved(false);
        if (preference instanceof PreferenceGroup) {
            PreferenceGroup preferenceGroup = ((PreferenceGroup) preference);
            for (int i = 0; i < preferenceGroup.getPreferenceCount(); i++) {
                setAllPreferencesToAvoidHavingExtraSpace(preferenceGroup.getPreference(i));
            }
        }
    }

    @Override
    public void setPreferenceScreen(PreferenceScreen preferenceScreen) {
        if (preferenceScreen != null)
            setAllPreferencesToAvoidHavingExtraSpace(preferenceScreen);
        super.setPreferenceScreen(preferenceScreen);
    }


    @Override
    public void onDisplayPreferenceDialog(Preference preference) {
        if (preference.getKey() == null) {
            // Auto-key preferences that don't have a key, so the dialog can find them.
            preference.setKey(UUID.randomUUID().toString());
        }
        DialogFragment f;
        if (preference instanceof CustomDialogPreferenceCompat) {
            f = CustomDialogPreferenceCompat.CustomPreferenceDialogFragment
                    .newInstance(preference.getKey());
        } else {
            super.onDisplayPreferenceDialog(preference);
            return;
        }
        f.setTargetFragment(this, 0);
        f.show(getFragmentManager(), "dialog_preference");
    }
    protected ContentResolver getContentResolver() {
        return getActivity().getContentResolver();
    }

 public void launchAppPicker(String keystr) {
        Intent intent = new Intent();
        intent.putExtra("appkey", keystr);
        intent.setClass(getActivity(), AppPicker.class);
        startActivity(intent);
    }
   public void launchBatteryPicker(String str){
        Intent  intent = new Intent();
        intent.putExtra("batterykey",str);
        intent.setClass(getActivity(), BatteryPicker.class);
        startActivity(intent);
    }
    protected ShortcutPickerHelper mPicker;
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

    public void pickShortcut(String key){
        mPicker = new ShortcutPickerHelper(this) {
            @Override
            public void onListViewItemClickActivity(String str, String str2, Bitmap bitmap) {
                showSnackn(getStringIdentifier(getActivity(),"shortcut_select")+"［"+str2+"］");
                putStringSaltString( 0,getActivity(),key, str);
            }
        };
        mPicker.pickShortcut();
    }

    public void showSnackn(String mensaje){
        Snackbar snackbar = Snackbar.make(getActivity().findViewById(android.R.id.content), mensaje, Snackbar.LENGTH_SHORT)
                .setAction("Action", null);
        snackbar.getView().setBackgroundColor(getColorAttr(getActivity(), R.attr.colorAccent));
        snackbar.show();

    }
    public Drawable CustomDrawable(String str) {
        return getCustomDrawable(SaltApp.getContext(), str);
    }
    protected void EditTextDialog(String STR,String Title,String broadcast){
        EditTextDialog(getActivity(),STR,getStringIdentifier(getActivity(),"input_hint"),Title,broadcast);
    }

    private TextInputLayout mTextInputLayoutA,mTextInputLayoutB;
    private TextInputEditText mTextInputEditTextA,mTextInputEditTextB;
     public  void EditTextDialog(Context context, String key, String hint,String Title,String broadcast){
        LayoutInflater welmsgInflater = LayoutInflater.from(context);
        View layout = welmsgInflater.inflate(org.salt.preference.R.layout.edit_text_dialog, null);
        androidx.appcompat.app.AlertDialog dialog;
        androidx.appcompat.app.AlertDialog.Builder alert = new androidx.appcompat.app.AlertDialog.Builder(getContext());
        alert.setTitle(Title);
        alert.setIcon(getCustomArrayDrawable("android","menu_ic_magnifier_window") );
        alert.setView(layout);
        mTextInputLayoutA =(TextInputLayout)layout.findViewById(org.salt.preference.R.id.custom_TextInput_a);
        mTextInputLayoutA.setHint(hint);
        mTextInputLayoutB =(TextInputLayout)layout.findViewById(org.salt.preference.R.id.custom_TextInput_b);
        mTextInputLayoutB.setVisibility(View.GONE);
        mTextInputEditTextA =(TextInputEditText)layout.findViewById(org.salt.preference.R.id.custom_text_a);
        mTextInputEditTextB =(TextInputEditText)layout.findViewById(org.salt.preference.R.id.custom_text_b);
        mTextInputEditTextB.setVisibility(View.GONE);
        String oldText =  Settings.System.getString(
                getContext().getContentResolver(),
                key);
        if (oldText != null) {
            mTextInputEditTextA.setText(oldText);
        }
        alert.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int whichButton) {
                String value = mTextInputEditTextA.getText().toString();
                if (value.equals("")) {
                    return;
                }
                Settings.System.putString(getContext().getContentResolver(),
                        key, value);
                getActivity().sendBroadcast(new Intent(broadcast));
                return;
            }
        });

        alert.setNegativeButton(android.R.string.cancel,
                (dialogInterface, which) -> {
                    return;
                });
        dialog = alert.create();
        dialog.show();
    }

    public void Picker(SaltListPreference preference, Object newValue, final String  mStr){
        if(newValue.equals("88")){
            launchAppPicker(mStr);
        }else if(newValue.equals("99")){
            pickShortcut(mStr+"_short");
        }
        int location = Integer.valueOf((String) newValue);
        int index =preference.findIndexOfValue((String) newValue);
        Settings.System.putInt(getActivity().getContentResolver(),
                mStr, location);
        preference.setSummary(preference.getEntries()[index]);
    }
    public static  final String LEO_PREFE=defaultKey;
}