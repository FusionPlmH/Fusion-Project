package com.samsung.android.calendar.secfeature;

import android.content.Context;
import com.samsung.android.calendar.secfeature.holidays.CalendarHoliday;
import com.samsung.android.calendar.secfeature.holidays.JPNCalendarHoliday;
import com.samsung.android.calendar.secfeature.holidays.JPNCalendarSubstituteHoliday;
import com.samsung.android.calendar.secfeature.holidays.repository.HolidayRepository;
import com.samsung.android.calendar.secfeature.holidays.repository.JPNHolidayRepository;

public class JPN_SECCalendarFeatures extends SECCalendarFeatures {
    public int getLocale() {
        return 3;
    }

    public HolidayRepository getCalendarRepository(Context context) {
        return new JPNHolidayRepository(context);
    }

    public CalendarHoliday getCalendarSubstituteHoliday(Context context) {
        return new JPNCalendarSubstituteHoliday(context);
    }

    public CalendarHoliday getCalendarHoliday(Context context) {
        return new JPNCalendarHoliday(context);
    }

    public boolean areNationalHolidaysSupported() {
        return true;
    }

    public boolean isSubstituteHolidaysSupported() {
        return true;
    }
}
