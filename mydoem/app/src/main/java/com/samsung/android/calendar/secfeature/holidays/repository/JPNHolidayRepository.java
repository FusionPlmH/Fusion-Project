package com.samsung.android.calendar.secfeature.holidays.repository;

import android.content.Context;
import com.samsung.android.calendar.secfeature.holidays.JPNCalendarHoliday;
import com.samsung.android.calendar.secfeature.holidays.JPNCalendarSubstituteHoliday;

public class JPNHolidayRepository extends HolidayRepository {
    public JPNHolidayRepository(Context context) {
        super(context);
    }

    public void init(Context context) {
        this.mCalendarList.add(new JPNCalendarHoliday(context));
        this.mCalendarList.add(new JPNCalendarSubstituteHoliday(context));
    }
}
