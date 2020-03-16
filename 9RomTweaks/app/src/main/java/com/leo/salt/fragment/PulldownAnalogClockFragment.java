package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Bundle;


import android.os.UserHandle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.format.DateFormat;
import android.widget.EditText;


import com.leo.salt.preference.SaltSettingColorPickerPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingIconListPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tools.constants.KeepShellPublic;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;

import java.util.Date;

import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;


@SuppressLint("ResourceAsColor")
public class PulldownAnalogClockFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {
    private SaltSettingSwitchPreference mEnabled;
    private SaltSettingIconListPreference mAnalogClockStyle;

    private static final String ANALOGCLOCK = "leo_salt_panel_analogclock";
    private static final String ENABLED = ANALOGCLOCK+"_enabled";

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "pulldown_analogclock_prefs");
        ContentResolver resolver = getActivity().getContentResolver();
        mEnabled = (SaltSettingSwitchPreference) findPreference("analogclock_enabled");
        mEnabled.setChecked((Settings.System.getInt(resolver,
                ENABLED, 0) == 1));
        mEnabled.setOnPreferenceChangeListener(this);

        mAnalogClockStyle = (SaltSettingIconListPreference) findPreference("panel_analogclock_dial_style");
        mAnalogClockStyle.setEntries(getCustomArray("dial_style_entries"));
        mAnalogClockStyle.setEntryValues(getCustomArray("dial_style_values"));
        mAnalogClockStyle.setDrawableArray(DialIcon);
        mAnalogClockStyle.setSummary(getStringIdentifier(getContext(),"icon_select"));
        mAnalogClockStyle.setOnPreferenceChangeListener(this);

    }


    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {

        ContentResolver resolver = getActivity().getContentResolver();
         if (preference == mEnabled) {

             boolean value = (Boolean) newValue;
             Settings.System.putInt(getActivity().getContentResolver(),
                     ENABLED, value ? 1 : 0);
            return true;
        }
        return false;
    }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }
    public Drawable CustomDrawable(String str){
        return Resource.getCustomDrawable(getContext(), str);
    }

    Drawable[] DialIcon = {CustomDrawable("analogclock_"+AnalogClockDial(0)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(1)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(2)+"_dial"),

            CustomDrawable("analogclock_"+AnalogClockDial(3)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(4)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(5)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(6)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(7)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(8)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(9)+"_dial"),
            CustomDrawable("analogclock_"+AnalogClockDial(10)+"_dial")


    };
    public String AnalogClockDial(int style ){
        switch ( style) {
            case 1:
                return "custom";
            case 2:
                return "dot";
            case 3:
                return "baii";
            case 4:
                return "spectrum";
            case 5:
                return "spidey";
            case 6:
                return "hit";
            case 7:
                return "num";
            case 8:
                return "kaleidoscope";
            case 9:
                return "dian";
            case 10:
                return "yuan";
            default:
                return "sneeky";
        }

    }


}
