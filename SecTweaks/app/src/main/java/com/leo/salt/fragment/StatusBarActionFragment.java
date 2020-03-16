package com.leo.salt.fragment;
import android.os.Bundle;

import com.leo.salt.R;
import com.leo.salt.base.BasePreferenceFragment;


public class StatusBarActionFragment extends BasePreferenceFragment {

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
       // addPreferencesFromResource(R.xml.statusbar_action_prefs);
        BasePreferenceFragment( mContext , this, "statusbar_action_prefs");
    }
    @Override
    public void onResume() {
        super.onResume();

    }
    @Override
    public void onPause() {
        super.onPause();

    }

}
