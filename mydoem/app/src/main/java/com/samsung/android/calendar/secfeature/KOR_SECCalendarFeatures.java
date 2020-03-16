package com.samsung.android.calendar.secfeature;

import android.content.Context;
import com.samsung.android.calendar.secfeature.holidays.CalendarHoliday;
import com.samsung.android.calendar.secfeature.holidays.KORCalendarHoliday;
import com.samsung.android.calendar.secfeature.holidays.KORCalendarSubstituteHoliday;
import com.samsung.android.calendar.secfeature.holidays.repository.HolidayRepository;
import com.samsung.android.calendar.secfeature.holidays.repository.KORHolidayRepository;
import com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter;
import com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTables;
import com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTablesKOR;

public class KOR_SECCalendarFeatures extends SECCalendarFeatures {
    public int getLocale() {
        return 1;
    }

    public HolidayRepository getCalendarRepository(Context context) {
        return new KORHolidayRepository(context);
    }

    public CalendarHoliday getCalendarSubstituteHoliday(Context context) {
        return new KORCalendarSubstituteHoliday(context);
    }

    public CalendarHoliday getCalendarHoliday(Context context) {
        return new KORCalendarHoliday(context);
    }

    public SolarLunarConverter getSolarLunarConverter() {
        return new SolarLunarConverter(new SolarLunarTablesKOR());
    }

    public SolarLunarTables getSolarLunarTables() {
        return new SolarLunarTablesKOR();
    }

    public boolean isLunarCalendarSupported() {
        return true;
    }

    public boolean areNationalHolidaysSupported() {
        return true;
    }

    public boolean isSubstituteHolidaysSupported() {
        return true;
    }
}
