

package com.android.systemui.statusbar.phone;



import android.app.Fragment;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;


public class CollapsedStatusBarFragment extends Fragment {

    public static final String TAG = "CollapsedStatusBarFragment";
    private static final String EXTRA_PANEL_STATE = "panel_state";

    private PhoneStatusBarView mStatusBar;
    private StatusBar mStatusBarComponent;
    private View mLeoRomLeftLayout;
    private View mLeoRomCenterLayout;
    private View mLeoRomVisibilityLayout;

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

    }



    @Override

    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        mStatusBar = (PhoneStatusBarView) view;
        if (savedInstanceState != null && savedInstanceState.containsKey(EXTRA_PANEL_STATE)) {
            mStatusBar.go(savedInstanceState.getInt(EXTRA_PANEL_STATE));
        }
        this.mLeoRomLeftLayout = this.mStatusBar.findViewById(getLeoResource("id/left_clock_container"));
        this.mLeoRomCenterLayout = this.mStatusBar.findViewById(getLeoResource("id/leo_statusbar_clock_center_layout"));
        this.mLeoRomVisibilityLayout = this.mStatusBar.findViewById(getLeoResource("id/leo_visibility_layout"));


    }


}
