package com.android.settingslib.salt;
import java.util.Locale;

import android.animation.ArgbEvaluator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Base64;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import static com.android.settingslib.salt.SaltConfigFrame.getLeoColor;
import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;
import static com.android.settingslib.salt.SaltConfigFrame.mSaltContext;


public class SaltValues {
    public  static  int mLightModeFillColor =getLeoColor("light_mode_icon_color_single_tone");
    public  static  int  mDarkModeFillColor =getLeoColor("dark_mode_icon_color_single_tone");
    public  static String Values1 ="id/left_clock_container";
    public  static String Values2 ="id/middle_clock_container";
    public  static String Values3 ="id/right_clock_container";
    public  static String Values4 ="id/status_bar_left_side";
    public  static String Values5 ="id/system_icons";
    public  static String Values6 ="id/statusIcons";
    public  static String Values7 ="id/battery";
    public  static String Values9 ="leo_status_bar_carrier";
    public  static String Values8 ="leo_keyguard_status_bar_carrier";
    public  static String Values10 ="leo_notification_panel_carrier";
    public  static String Values11 ="id/networkSpeed";
    public  static String  capacityunit= "mAh";
    public  static String Values12 ="id/notification_panel_carrier_label";
    public  static String Values13 ="leo_pulldown_panel";
    public  static String Values14 ="dimen/status_bar_header_height_expanded";
    public  static String Values15 ="qs_service_box_clock";
    public  static String Values16 ="qs_service_box_date";
    public  static String Values17 ="leo_qs_battery_view";
    public  static String Values18 ="leo_status_bar_action";
    public  static String Values19 ="leo_status_bar_right_action";
    public  static int Values20 =mSaltContext.getColor(getLeoUIResource("color/qs_tile_label"));


}
