package com.samsung.android.calendar.secfeature;

import android.content.Context;
import com.samsung.android.calendar.secfeature.holidays.CalendarHoliday;
import com.samsung.android.calendar.secfeature.holidays.repository.HolidayRepository;
import com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter;
import com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTables;


public class SECCalendarFeatures {
    public static final String CHINA = "CHINA";
    public static final String HKTW = "HKTW";
    public static final String JAPAN = "JAPAN";
    public static final String KOREA = "KOREA";
    public static final int LOC_CHINA = 2;
    public static final int LOC_DEFAULT = -1;
    public static final int LOC_HKTW = 4;
    public static final int LOC_JAPAN = 3;
    public static final int LOC_KOREA = 1;
    public static final int LOC_VI = 5;
    public static final String VI = "VI";
    private static SECCalendarFeatures sInstance = null;

    public static SECCalendarFeatures getInstance() {
        if (sInstance == null) {
            String CSC ="";
            if (KOREA.equals(CSC)) {
                sInstance = new KOR_SECCalendarFeatures();
            } else if (CHINA.equals(CSC)) {
                sInstance = new CHN_SECCalendarFeatures();
            } else if (HKTW.equals(CSC)) {
                sInstance = new HKTW_SECCalendarFeatures();
            } else if (JAPAN.equals(CSC)) {
                sInstance = new JPN_SECCalendarFeatures();
            } else if (VI.equals(CSC)) {
                sInstance = new VI_SECCalendarFeatures();
            } else {
                sInstance = new SECCalendarFeatures();
            }
        }
        return sInstance;
    }

    public int getLocale() {
        return -1;
    }

    public HolidayRepository getCalendarRepository(Context context) {
        return null;
    }

    public CalendarHoliday getCalendarHoliday(Context context) {
        return null;
    }

    public CalendarHoliday getCalendarSubstituteHoliday(Context context) {
        return null;
    }

    public CalendarHoliday getCalendarSolar24Term(Context context) {
        return null;
    }

    public SolarLunarConverter getSolarLunarConverter() {
        return null;
    }

    public SolarLunarTables getSolarLunarTables() {
        return null;
    }

    public boolean isLunarCalendarSupported() {
        return false;
    }

    public boolean areNationalHolidaysSupported() {
        return false;
    }

    public boolean are24SoloarTermsSupported() {
        return false;
    }

    public boolean isSubstituteHolidaysSupported() {
        return false;
    }
}
