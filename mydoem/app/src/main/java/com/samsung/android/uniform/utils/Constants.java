package com.samsung.android.uniform.utils;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class Constants {
    public static final int BASE_GRAY_LEVEL = 204;
    public static final int CALENDAR_CLOCK_MODE = 2;
    public static final String CUSTOM_GIF_FILENAME = "custom_gif_image.gif";
    public static final int EDGE_CLOCK_MODE = 1;
    public static final String[] PERSIAN_CALENDAR_ENG = new String[]{"", "Far", "Ord", "Khor", "Tir", "Mor", "Shrv", "Mehr", "Aban", "Azar", "Dey", "Bah", "Esf"};
    public static final String[] PERSIAN_CALENDAR_PER = new String[]{"", "فروردین", "اردیبهشت", "خرداد", "تیر", "مرداد", "شهریور", "مهر", "آبان", "آذر", "دی", "بهمن", "اسفند"};
    public static final String SETTINGS_KEY_ADAPTIVE_COLOR_ENABLED = "lock_adaptive_color";
    public static final String SETTINGS_KEY_CONTACT_INFO_ENABLED = "contact_info_option";
    public static final String SETTINGS_KEY_FACE_WIDGETS_OPTION_ENABLED = "face_widgets_option";
    public static final String SETTINGS_KEY_HOME_CITY_TIMEZONE = "homecity_timezone";
    public static final String SETTINGS_KEY_LOCKSCREEN_NOTIFICATION_ENABLED = "lockscreen_notifications_option";
    public static final String SETTINGS_KEY_ROAMING_CLOCK_OPTION_ENABLED = "roaming_clock_option";
    public static final String SETTINGS_KEY_WHITE_LOCK_SCREEN_WALLPAPER = "white_lockscreen_wallpaper";
    public static final int SETTINGS_WHERE_TO_SHOW_VALUE_AOD_ONLY = 2;
    public static final int SETTINGS_WHERE_TO_SHOW_VALUE_LOCK_AND_AOD = 0;
    public static final int SETTINGS_WHERE_TO_SHOW_VALUE_LOCK_ONLY = 1;
    public static final int THEME_CLOCK_GIF_IMAGE_ONLY_MODE = 5;
    public static final int THEME_CLOCK_GIF_IMAGE_WITH_CLOCK_MODE = 4;
    public static final int THEME_CLOCK_IMAGE_ONLY_MODE = 3;
    public static final int THEME_CLOCK_IMAGE_WITH_CLOCK_MODE = 0;

    @Retention(RetentionPolicy.SOURCE)
    public @interface WhereToShowType {
        public static final int SETTINGS_WHERE_TO_SHOW_AOD_TYPE = 2;
        public static final int SETTINGS_WHERE_TO_SHOW_LOCK_TYPE = 1;
    }
}
