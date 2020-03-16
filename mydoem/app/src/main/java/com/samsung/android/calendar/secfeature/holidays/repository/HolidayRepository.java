package com.samsung.android.calendar.secfeature.holidays.repository;

import android.content.Context;
import com.samsung.android.calendar.secfeature.holidays.CalendarHoliday;
import java.util.ArrayList;
import java.util.List;

public abstract class HolidayRepository {
    protected List<CalendarHoliday> mCalendarList = new ArrayList();

    public abstract void init(Context context);

    public HolidayRepository(Context context) {
        init(context);
    }

    public List<CalendarHoliday> getCalendarList() {
        return new ArrayList(this.mCalendarList);
    }
}
