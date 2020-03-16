package com.fusionleo.salt.fragment;
import android.os.Bundle;
import com.fusionleo.salt.base.BasePreferenceFragment;


public class StatusBarActionFragment extends BasePreferenceFragment {

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
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
