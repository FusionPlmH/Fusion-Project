package com.samsung.android.uniform.feature;

import android.content.Context;
import com.samsung.android.calendar.secfeature.SECCalendarFeatures;

import com.samsung.android.uniform.feature.CscFeature.TagCalendar;
import com.samsung.android.uniform.feature.CscFeature.TagLockScreen;
import com.samsung.android.uniform.feature.FloatingFeature.TagCommon;
import com.samsung.android.uniform.feature.FloatingFeature.TagContextService;

public class Rune {
    public static final String CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY = CscFeature.getString(TagLockScreen.TAG_CSCFEATURE_LOCKSCREEN_CONFIGCLOCKDISPLAYPOLICY);
    private static final boolean ENABLE_LOCAL_CALENDAR_IN_CHINA = "CHINA".equals(CscFeature.getString(TagCalendar.TAG_CSCFEATURE_CALENDAR_ENABLELOCALHOLIDAYDISPLAY, null));
    public static final boolean FEATURE_SUPPORT_CONTEXTUAL_SURVEY = FloatingFeature.getBoolean(TagContextService.SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE);
    public static final boolean FEATURE_SUPPORT_SERVICE_BOX = FloatingFeature.getBoolean(TagCommon.SEC_FLOATING_FEATURE_COMMON_SUPPORT_SERVICEBOX);
    private static final String FLOATING_FEATURE_CONFIG_AOD_ITEM = FloatingFeature.getString("SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM");
    public static int GREAT_SPEN_USP_LEVEL = 30;
    public static final boolean NOT_SUPPORT_EDGE_CLOCK = FLOATING_FEATURE_CONFIG_AOD_ITEM.contains("-edgeclock");
    public static final boolean SUPPORT_HIDE_TEXT_OF_ROAMING_CLOCK = CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY.contains("HideTextOfRoamingClock");
    private static final boolean SUPPORT_LUNAR_CALENDAR = SECCalendarFeatures.getInstance().isLunarCalendarSupported();
    public static final boolean SUPPORT_LUNAR_IN_CHINA;
    public static final boolean SUPPORT_PERSIAN_CALENDAR = CscFeature.getBoolean(CscFeature.TagCommon.TAG_CSCFEATURE_COMMON_SUPPORTPERSIANCALENDAR, false);
    public static final boolean SUPPORT_SET_SEOUL_AS_DEFAULT_HOMECITY_TIMEZONE = CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY.contains("SetAutoTimeAsiaSeoul");
    public static final boolean SUPPORT_SHOWING_SWIPE_BOUNCER = "US_NORTH".equals(CscFeature.getString(TagLockScreen.TAG_CSCFEATURE_LOCKSCREEN_CONFIGDISPLAYSHORCUTCIRCLEARROW));
    public static final boolean SUPPORT_USE_SKT_TEXT_FOR_HOMECITY_CLOCK;
    public static final boolean SUPPORT_USE_SKT_TEXT_FOR_ROAMING_CLOCK;
    private static final String mSalesCode = "";
    private static int mSpenUspLevel = -1;

    static {
        boolean z = true;
        boolean z2 = CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY.contains("SetAsiaSeoulForHome") && !CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY.contains("NeedToCheckOMCCSCSalesCode");
        SUPPORT_USE_SKT_TEXT_FOR_HOMECITY_CLOCK = z2;
        if (!CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY.contains("ShowRomaingTime") || CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY.contains("NeedToCheckOMCCSCSalesCode")) {
            z2 = false;
        } else {
            z2 = true;
        }
        SUPPORT_USE_SKT_TEXT_FOR_ROAMING_CLOCK = z2;
        if (!(SUPPORT_LUNAR_CALENDAR && ENABLE_LOCAL_CALENDAR_IN_CHINA)) {
            z = false;
        }
        SUPPORT_LUNAR_IN_CHINA = z;
    }

    public static boolean isLGTModel() {
        if ("LGT".equals(mSalesCode) || "LUC".equals(mSalesCode) || "LUO".equals(mSalesCode)) {
            return true;
        }
        return false;
    }

    public static boolean isATTModel() {
        if ("ATT".equals(mSalesCode) || "UC".equals(mSalesCode)) {
            return true;
        }
        return false;
    }

    public static int getSpenUspLevel(Context context) {
        if (mSpenUspLevel == -1) {
            mSpenUspLevel = 1;
        }
        return mSpenUspLevel;
    }
}
