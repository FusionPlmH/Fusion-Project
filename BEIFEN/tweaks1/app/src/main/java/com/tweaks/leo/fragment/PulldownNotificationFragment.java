package com.tweaks.leo.fragment;



import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;

import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.MenuItem;

import com.tweaks.leo.R;
import com.tweaks.leo.activity.SubActivity;
import com.tweaks.leo.base.BasePreferenceFragment;
import com.tweaks.leo.preference.MyPreference;


import static com.tweaks.leo.utils.NotificationUtils.showTestNotification;
import static com.tweaks.leo.utils.Utils.killPackage;
import static com.tweaks.leo.widget.DialogUtil.BatteryTips;


public class PulldownNotificationFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener{
;
    private static final String TAG ="LeoRom" ;

    MyPreference mMods3;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.pulldown_notification_prefs);
        mMods3 = ((MyPreference) findPreference("leo_notifications_bg"));
        setHasOptionsMenu(true);

    }

    @Override
    public void onResume() {
        super.onResume();
  //   hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
       // hpf.onPauseFragment();
    }
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        //  Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());
       if (preference == mMods3) {
           Intent  FragmentContainer = new Intent(mContext, SubActivity.class);
           FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.StatusBarChangeColor);
           mContext.startActivity(FragmentContainer);
        }

        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }


    @Override
    public void ResetColor() {

        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_notice_clear_all_button_text_color", Color.parseColor("#d9252525"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_notice_noti_setting_button_text_color", Color.parseColor("#d9252525"));

    }


    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        return false;
    }
}
