package com.leo.global.fragment;


import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.preference.PreferenceFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;


import com.leo.global.preference.AppPicker;
import com.leo.global.preference.SaltSettingAppMultiSelectListPreference;
import com.leo.global.preference.SaltSettingListPreference;
import com.leo.global.preference.SaltSettingSwitchPreference;
import com.leo.global.tweaks.R;
import com.leo.global.tweaks.activity.FragSettingsActivity;
import com.leo.global.tweaks.base.BasePreferenceFragment;
import com.leo.global.utils.Helpers;
import com.leo.global.view.widget.ScrollListView;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
@SuppressLint("ValidFragment")


public class SystemUIClockFragment extends Fragment {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        getActivity().getFragmentManager().beginTransaction()
                .replace(R.id.fragment_container, new SystemUIClock())
                .commit();
    }
    public static class SystemUIClock extends PreferenceFragment {


    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.system_ui_clock_prefs);
    }
    private ListView mList;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

        return inflater.inflate(R.layout.manage_autostarts, null);

    }
}

}
