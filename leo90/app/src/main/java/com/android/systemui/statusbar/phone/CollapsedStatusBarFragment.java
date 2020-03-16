package com.android.systemui.statusbar.phone;

import android.app.Fragment;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Color;
import android.os.Bundle;

import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
;
;

import com.android.systemui.fusionleo.LeoStatusBarController;
import com.android.systemui.statusbar.CommandQueue.Callbacks;
import static com.fusionleo.LeoX.systemui.LeoConfig.LeoGradientDrawable;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoBasicColor;

import static com.fusionleo.LeoX.systemui.LeoConfig.mLeoTag;

import static com.fusionleo.LeoProvider.LeoManages.*;

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

    public View mLeoVisibleContainerView;

    public void LeoViewOpensource(PhoneStatusBarView view) {
        mLeoLeftContainerView=view.findViewById(com.android.systemui.statusbar.phone.SaltStatusBarIconOpensource.getLeoResource("id/status_bar_left_side"));
    }

    public void LeoView(PhoneStatusBarView view) {
        mLeoLeftContainerView=view.findViewById(getLeoUIResource(mLeoTag[10]));
        mLeoMiddleContainerView=view.findViewById(getLeoUIResource(mLeoTag[18]));
        mLeoVisibleContainerView=view.findViewWithTag(mLeoTag[11]);
    }
    public void showLeoAreaOpensource(boolean z) {
        animateShow(mLeoLeftContainerView, z);

    }
    public void hideLeoAreaOpensource(boolean z) {
        animateHide( mLeoLeftContainerView, z);

    }
    private void animateHide(View view, boolean z) {
       // animateHiddenState(view, 4, z);
    }

    private void animateShow(View view, boolean z) {
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
        animateShow(mLeoVisibleContainerView, z);
        animateShow(mLeoMiddleContainerView, z);
    }
    public void hideLeoArea(boolean z) {
        animateHide( mLeoLeftContainerView, z);
        animateHide(mLeoVisibleContainerView, z);
        animateHide(mLeoMiddleContainerView, z);
    }


}
