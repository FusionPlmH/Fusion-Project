package com.samsung.android.calendar.secfeature.holidays.repository;

import android.content.Context;
import com.samsung.android.calendar.secfeature.holidays.KORCalendarHoliday;
import com.samsung.android.calendar.secfeature.holidays.KORCalendarSubstituteHoliday;

public class KORHolidayRepository extends HolidayRepository {
    public KORHolidayRepository(Context context) {
        super(context);
    }

    public void init(Context context) {
        this.mCalendarList.add(new KORCalendarHoliday(context));
        this.mCalendarList.add(new KORCalendarSubstituteHoliday(context));
    }
}
