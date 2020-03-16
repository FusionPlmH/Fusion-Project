package com.samsung.android.calendar.secfeature;

import android.content.Context;
import com.samsung.android.calendar.secfeature.holidays.CHNCalendarHoliday;
import com.samsung.android.calendar.secfeature.holidays.CHNCalendarSolar24Term;
import com.samsung.android.calendar.secfeature.holidays.CalendarHoliday;
import com.samsung.android.calendar.secfeature.holidays.repository.CHNHolidayRepository;
import com.samsung.android.calendar.secfeature.holidays.repository.HolidayRepository;
import com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter;
import com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTables;
import com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTablesCHN;

public class CHN_SECCalendarFeatures extends SECCalendarFeatures {
    public int getLocale() {
        return 2;
    }

    public HolidayRepository getCalendarRepository(Context context) {
        return new CHNHolidayRepository(context);
    }

    public CalendarHoliday getCalendarHoliday(Context context) {
        return new CHNCalendarHoliday(context);
    }

    public CalendarHoliday getCalendarSolar24Term(Context context) {
        return new CHNCalendarSolar24Term(context);
    }

    public SolarLunarConverter getSolarLunarConverter() {
        return new SolarLunarConverter(new SolarLunarTablesCHN());
    }

    public SolarLunarTables getSolarLunarTables() {
        return new SolarLunarTablesCHN();
    }

    public boolean isLunarCalendarSupported() {
        return true;
    }

    public boolean areNationalHolidaysSupported() {
        return true;
    }

    public boolean are24SoloarTermsSupported() {
        return true;
    }
}
