package com.samsung.android.calendar.secfeature;

import android.content.Context;
import com.samsung.android.calendar.secfeature.holidays.CalendarHoliday;
import com.samsung.android.calendar.secfeature.holidays.VICalendarHoliday;
import com.samsung.android.calendar.secfeature.holidays.repository.HolidayRepository;
import com.samsung.android.calendar.secfeature.holidays.repository.VIHolidayRepository;
import com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter;
import com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTables;
import com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTablesVI;

public class VI_SECCalendarFeatures extends SECCalendarFeatures {
    public int getLocale() {
        return 5;
    }

    public HolidayRepository getCalendarRepository(Context context) {
        return new VIHolidayRepository(context);
    }

    public CalendarHoliday getCalendarHoliday(Context context) {
        return new VICalendarHoliday(context);
    }

    public SolarLunarConverter getSolarLunarConverter() {
        return new SolarLunarConverter(new SolarLunarTablesVI());
    }

    public SolarLunarTables getSolarLunarTables() {
        return new SolarLunarTablesVI();
    }

    public boolean isLunarCalendarSupported() {
        return true;
    }

    public boolean areNationalHolidaysSupported() {
        return true;
    }
}
