package com.samsung.android.calendar.secfeature.holidays;

import android.content.Context;
import android.content.res.Resources;
import com.samsung.android.calendar.secfeature.holidays.CalendarHoliday.HolidayType;
import com.samsung.android.calendar.secfeature.holidays.HolidayData.Builder;

public class KORCalendarSubstituteHoliday extends CalendarHoliday {
    private String mSubstHoliday;

    public KORCalendarSubstituteHoliday(Context context) {
        super(context);
        Resources r = this.mContext.getResources();
        this.mSubstHoliday = r.getString(r.getIdentifier("holiday_substitute_day", "string", this.mContext.getPackageName()));
        addSubstDayData("2016-02-10");
        addSubstDayData("2017-01-30");
        addSubstDayData("2020-01-27");
        addSubstDayData("2023-01-24");
        addSubstDayData("2024-02-12");
        addSubstDayData("2027-02-09");
        addSubstDayData("2030-02-05");
        addSubstDayData("2033-02-02");
        addSubstDayData("2034-02-21");
        addSubstDayData("2036-01-30");
        addSubstDayData("2018-05-07");
        addSubstDayData("2019-05-06");
        addSubstDayData("2024-05-06");
        addSubstDayData("2029-05-07");
        addSubstDayData("2030-05-06");
        addSubstDayData("2035-05-06");
        addSubstDayData("2014-09-10");
        addSubstDayData("2015-09-29");
        addSubstDayData("2017-10-06");
        addSubstDayData("2018-09-26");
        addSubstDayData("2022-09-12");
        addSubstDayData("2025-10-08");
        addSubstDayData("2028-10-05");
        addSubstDayData("2029-09-24");
        addSubstDayData("2032-09-21");
        addSubstDayData("2035-09-18");
        addSubstDayData("2036-10-06");
    }

    private void addSubstDayData(String startDay) {
        this.mHolidayData.add(new Builder().title(this.mSubstHoliday).startDay(startDay).isRepeat(false).build());
    }

    public int getLatestVersion() {
        return CalendarHoliday.FIRST_HOLIDAY_VERSION;
    }

    public String getHolidayDisplayName() {
        return this.mContext.getString(this.mContext.getResources().getIdentifier("holiday_substitute_day", "string", this.mContext.getPackageName()));
    }

    public String getHolidayType() {
        return HolidayType.SUBSTITUTE;
    }
}
