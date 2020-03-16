package com.salt.setting;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Handler;

import static com.salt.frame.utils.SaltUtils.SaltSettings.getLeoInt;
import static com.salt.frame.utils.SaltUtils.SaltSettings.getLeoString;
import static com.salt.frame.utils.SaltUtils.SaltSettings.getLeoUri;

public class SaltSetting  {
    private  Context mContext;
    public boolean G5Style;
    public boolean drawercarrier;
    public boolean HOMEINFO;
    public String DrawerCarrierString;
    public int mCarouselAnimation;
    public int mupdateApps;

    public String hideStatusBarString;
    public boolean hideStatusBar ;
    public SaltSetting(Context context){
        mContext=context;

    }

    public static String CONFIG_SPF_TOUCH_BAR = "touch_bar";
    public static String GLOBAL_SPF_NIGHT_MODE = "app_night_mode";
    public static String GLOBAL_SPF_DISABLE_ENFORCE = "enforce_0";
    public static String GLOBAL_SPF = "global"; //spf
    public static String APP_HIDE_HISTORY_SPF = "app_hide_spf";
    public static final String FIRST_OPEN = "first_open";
    public static String CHARGE_SPF = "charge"; //spf
    public static String KEY_EVENT_SPF = "key_event_spf";
    public static String KEY_EVENT_ONTHER_CONFIG_SPF = "key_event_spf2";

    public String[] key={"leo_salt_"+"statusbar"+"_icon_5g"+"_enabled",
            "leo_salt_drawer_carrier",
            "leo_salt_drawer_carrier_string",
            "leo_home_carousel_animation",
            "leo_home_info_layoutcompat",
            "leo_apps_info_update",
            "leo_salt_hide_statusbar",
            "leo_hide_statusbar_blacklist",
    };
    public  void  SettingSalt(){
         G5Style=getLeoInt(mContext, key[0], 0) == 1;
        drawercarrier=getLeoInt(mContext, key[1], 0) == 1;
        DrawerCarrierString=getLeoString(mContext, key[2]);
        mCarouselAnimation=getLeoInt(mContext,
                key[3], 15);
        HOMEINFO=getLeoInt(mContext,
                key[4], 0)==1;
        mupdateApps=getLeoInt(mContext,
                key[5], 0);
        hideStatusBar=getLeoInt(mContext,
                key[6], 0)==1;
        hideStatusBarString=getLeoString(mContext, key[7]);
    }
}