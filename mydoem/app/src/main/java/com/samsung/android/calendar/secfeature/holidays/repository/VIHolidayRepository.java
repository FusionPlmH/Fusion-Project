package com.samsung.android.calendar.secfeature.holidays.repository;

import android.content.Context;
import com.samsung.android.calendar.secfeature.holidays.VICalendarHoliday;

public class VIHolidayRepository extends HolidayRepository {
    public VIHolidayRepository(Context context) {
        super(context);
    }

    public void init(Context context) {
        this.mCalendarList.add(new VICalendarHoliday(context));
    }
}
