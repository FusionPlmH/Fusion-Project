package com.samsung.android.calendar.secfeature.holidays.repository;

import android.content.Context;
import com.samsung.android.calendar.secfeature.holidays.CHNCalendarHoliday;
import com.samsung.android.calendar.secfeature.holidays.CHNCalendarSolar24Term;

public class CHNHolidayRepository extends HolidayRepository {
    public CHNHolidayRepository(Context context) {
        super(context);
    }

    public void init(Context context) {
        this.mCalendarList.add(new CHNCalendarHoliday(context));
        this.mCalendarList.add(new CHNCalendarSolar24Term(context));
    }
}
