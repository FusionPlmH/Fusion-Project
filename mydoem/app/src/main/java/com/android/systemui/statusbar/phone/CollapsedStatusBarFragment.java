

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






import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.getLeoCarrierStatusBar;
import static com.os.leo.utils.LeoUserSettings.getLeoCarrierStatusBarOrientation;
import static com.os.leo.utils.LeoUserSettings.getLeoNetworkTrafficPosition;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarClockDisable;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarClockPosition;

import static com.os.leo.utils.LeoUserSettings.getLeoStatusbarLogo;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusbarLogoPosition;

import static com.os.leo.utils.LeoUserSettings.getLeoStatusbarTemperatureOrientation;
import static com.os.leo.utils.LeoUserSettings.getLeoWeatherOrientationStatusBar;
import static com.os.leo.utils.LeoUserSettings.getLeoWeatherStatusBar;
import static com.os.leo.utils.LeoUserSettings.getSetLeoUesrStatusBarCarrier;
import static com.os.leo.utils.LeoUserSettings.getSetLeoUesrStatusBarCarrierOrientation;
import static com.os.leo.utils.LeoUserSettings.mContext;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrNetworkTrafficLocation;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarClockDisable;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarClockPosition;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarLogoLocation;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarLogoVisible;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarOrientation;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarWeather;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarWeatherOrientation;
import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUtils.getLeoInt;
import static com.os.leo.utils.LeoUtils.getLeoUri;
import static com.android.systemui.UId.*;


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
        mLeoRomLeftLayout = mStatusBar.findViewById(getLeoResource("id/leo_left_layout"));
        mLeoRomCenterLayout = mStatusBar.findViewById(getLeoResource("id/leo_clock_center_layout"));
        mLeoRomObserver=new LeoRomObserver(new Handler());
        mLeoRomObserver.observe();
        setLeoClockOrientation();

    }
    private LeoRomObserver mLeoRomObserver;
    public  int getLeoResource(String resource ) {
        Log.v(AUTHOR, "LeoRom Constants" );
        return getContext().getResources().getIdentifier(resource, null, "com.android.systemui");
    }
    public void setLeoClockOrientation() {
        TextView clock=(TextView)mStatusBar.findViewById(getLeoResource("id/clock"));
        TextView clock1=(TextView)mStatusBar.findViewById(getLeoResource("id/leo_center_clock"));
        TextView clock2=(TextView)mStatusBar.findViewById(getLeoResource("id/leo_left_clock"));
        Log.v("LeoRom" , "Author Leo Rom" );
        int positionclock= Settings.System.getInt(getContext().getContentResolver(), "leo_clock_orientation", 0);
            if ( positionclock == 0) {
                clock.setVisibility(TextView.VISIBLE);
                clock1.setVisibility(TextView.GONE);
                clock2.setVisibility(TextView.GONE);
                Log.v("LeoRom" , "Author Leo Rom" );
                //显示在中间
            } else if ( positionclock == 1) {
                clock.setVisibility(TextView.GONE);
                clock1.setVisibility(TextView.VISIBLE);
                clock2.setVisibility(TextView.GONE);
                Log.v("LeoRom" , "Author Leo Rom" );
                //显示在左侧
            } else if ( positionclock == 2) {
                clock.setVisibility(TextView.GONE);
                clock1.setVisibility(TextView.GONE);
                clock2.setVisibility(TextView.VISIBLE);
                Log.v("LeoRom" , "Author Leo Rom" );
                //隐藏时间
            }

    }
    class LeoRomObserver extends ContentObserver {
        LeoRomObserver(Handler handler) {
            super(handler);
        }
        ContentResolver contentResolver ;
        void observe() {
            contentResolver= getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri("leo_clock_orientation"), false,this);
        }

        @Override
        public void onChange(boolean selfChange) {
            setLeoClockOrientation();
        }


    }
}
