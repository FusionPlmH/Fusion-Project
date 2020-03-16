package com.android.systemui.statusbar.phone;


import androidx.fragment.app.Fragment;

public class NavigationBarFragment extends Fragment {

    protected NavigationBarView mNavigationBarView = null;

    public void setDoubleTapToSleep() {
        if (this.mNavigationBarView != null) {
            this.mNavigationBarView.setDoubleTapToSleep();
        }
    }



}
