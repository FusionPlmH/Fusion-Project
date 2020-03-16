package com.android.systemui.statusbar.phone;

import android.app.Fragment;

import android.os.Bundle;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.android.systemui.statusbar.CommandQueue.Callbacks;

import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;
import static com.android.settingslib.salt.SaltValues.Values2;
import static com.android.settingslib.salt.SaltValues.Values4;

public class CollapsedStatusBarFragment extends Fragment implements Callbacks {

    private int mDisabled1;

    private View mNotificationIconAreaInner;
    private View mOperatorNameFrame;

    private PhoneStatusBarView mStatusBar;


    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);

    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2131558931, viewGroup, false);
    }

    public void onDestroyView() {
        super.onDestroyView();

    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);

    }
    public void onPause() {
        super.onPause();
       // ((CommandQueue) SysUiServiceProvider.getComponent(getContext(), CommandQueue.class)).removeCallbacks(this);
    }

    public void onResume() {
        super.onResume();
      //  ((CommandQueue) SysUiServiceProvider.getComponent(getContext(), CommandQueue.class)).addCallbacks(this);
    }
    public View mLeoLeftContainerView,mLeoMiddleContainerView;
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        mStatusBar = (PhoneStatusBarView) view;

        LeoView(mStatusBar);
    }




    public void LeoView(PhoneStatusBarView view) {
        mLeoLeftContainerView=view.findViewById(getLeoUIResource(Values4));
        mLeoMiddleContainerView=view.findViewById(getLeoUIResource(Values2));

    }


    private void animateShow(View view, boolean z) {
        view.animate().cancel();
        view.setVisibility(0);
        if (z) {

            return;
        }
        view.setAlpha(1.0f);
    }
    private void animateHide(View view, boolean z) {
        view.animate().cancel();
        view.setVisibility(0);
        if (z) {

            return;
        }
        view.setAlpha(1.0f);
    }
    private void animateHiddenState(View view, int i, boolean z) {
        view.animate().cancel();
        if (z) {

            return;
        }
        view.setAlpha(0.0f);
        view.setVisibility(i);
    }

    public void hideSystemIconArea(boolean z) {

        hideLeoArea(z);
    }
    public void showSystemIconArea(boolean z) {

        showLeoArea(z);
    }
    public StatusBar mStatusBarComponent;

    public void showLeoArea(boolean z) {
        animateShow(mLeoLeftContainerView, z);
        animateShow(mLeoMiddleContainerView, z);
    }
    public void hideLeoArea(boolean z) {
        animateHide( mLeoLeftContainerView, z);
        animateHide(mLeoMiddleContainerView, z);
    }
    public void showClock(boolean z) {
        animateShow(mStatusBar.getLeoStatusBarManager().getSaltLeftContainer(), z);
        animateShow(this.mStatusBar.getClockView(), z);
        animateShow(this.mStatusBar.getCarrierInformationContainer(), z);

    }

    public void hideClock(boolean z) {
        animateHiddenState(mStatusBar.getLeoStatusBarManager().getSaltLeftContainer(), clockHiddenMode(), z);
        animateHiddenState(mStatusBar.getClockView(), clockHiddenMode(), z);
        animateHiddenState(mStatusBar.getCarrierInformationContainer(), clockHiddenMode(), z);

    }
    private int clockHiddenMode() {
        return 0;
    }


}
