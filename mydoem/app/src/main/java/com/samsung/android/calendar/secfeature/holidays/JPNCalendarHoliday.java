package com.samsung.android.calendar.secfeature.holidays;

import android.content.Context;
import android.content.res.Resources;
import com.samsung.android.calendar.secfeature.holidays.CalendarHoliday.HolidayType;
import com.samsung.android.calendar.secfeature.holidays.HolidayData.Builder;
import com.samsung.android.calendar.secfeature.holidays.day.jpn.AutumnDay;
import com.samsung.android.calendar.secfeature.holidays.day.jpn.ElderDay;
import com.samsung.android.calendar.secfeature.holidays.day.jpn.MarineDay;
import com.samsung.android.calendar.secfeature.holidays.day.jpn.SaintDay;
import com.samsung.android.calendar.secfeature.holidays.day.jpn.SportsDay;
import com.samsung.android.calendar.secfeature.holidays.day.jpn.SpringDay;

public class JPNCalendarHoliday extends CalendarHoliday {
    public JPNCalendarHoliday(Context context) {
        super(context);
        Resources r = this.mContext.getResources();
        String packageName = this.mContext.getPackageName();
        int newyearId = r.getIdentifier("jp_holiday_1_newyear", "string", packageName);
        int foundationId = r.getIdentifier("jp_holiday_2_foundation", "string", packageName);
        int showaId = r.getIdentifier("jp_holiday_4_showa", "string", packageName);
        int constitutionId = r.getIdentifier("jp_holiday_5_constitution", "string", packageName);
        int greenId = r.getIdentifier("jp_holiday_5_green", "string", packageName);
        int childrenId = r.getIdentifier("jp_holiday_5_children", "string", packageName);
        int mountainId = r.getIdentifier("jp_holiday_8_mountain_day", "string", packageName);
        int cultureId = r.getIdentifier("jp_holiday_11_culture", "string", packageName);
        int laborId = r.getIdentifier("jp_holiday_11_labor", "string", packageName);
        int emperorId = r.getIdentifier("jp_holiday_12_emperor", "string", packageName);
        this.mHolidayData.add(new Builder().title(r.getString(newyearId)).startDay("1902-01-01").build());
        this.mHolidayData.add(new Builder().title(r.getString(foundationId)).startDay("1902-02-11").build());
        this.mHolidayData.add(new Builder().title(r.getString(showaId)).startDay("1902-04-29").build());
        this.mHolidayData.add(new Builder().title(r.getString(constitutionId)).startDay("1902-05-03").build());
        this.mHolidayData.add(new Builder().title(r.getString(greenId)).startDay("1902-05-04").build());
        this.mHolidayData.add(new Builder().title(r.getString(childrenId)).startDay("1902-05-05").build());
        this.mHolidayData.add(new Builder().title(r.getString(mountainId)).startDay("2016-08-11").build());
        this.mHolidayData.add(new Builder().title(r.getString(cultureId)).startDay("1902-11-03").build());
        this.mHolidayData.add(new Builder().title(r.getString(laborId)).startDay("1902-11-23").build());
        this.mHolidayData.add(new Builder().title(r.getString(emperorId)).startDay("1902-12-23").build());
        int autumnId = r.getIdentifier("jp_holiday_9_autumn", "string", packageName);
        int eldersId = r.getIdentifier("jp_holiday_9_elders", "string", packageName);
        int marineId = r.getIdentifier("jp_holiday_7_marine", "string", packageName);
        int ageId = r.getIdentifier("jp_holiday_1_age", "string", packageName);
        int sportsId = r.getIdentifier("jp_holiday_10_sports", "string", packageName);
        int springId = r.getIdentifier("jp_holiday_3_spring", "string", packageName);
        addHolidayData(new AutumnDay(r.getString(autumnId)));
        addHolidayData(new ElderDay(r.getString(eldersId)));
        addHolidayData(new MarineDay(r.getString(marineId)));
        addHolidayData(new SaintDay(r.getString(ageId)));
        addHolidayData(new SportsDay(r.getString(sportsId)));
        addHolidayData(new SpringDay(r.getString(springId)));
    }

    public int getLatestVersion() {
        return CalendarHoliday.FIRST_HOLIDAY_VERSION;
    }

    public String getHolidayDisplayName() {
        return this.mContext.getString(this.mContext.getResources().getIdentifier("jp_calendar_name", "string", this.mContext.getPackageName()));
    }

    public String getHolidayType() {
        return HolidayType.LEGAL;
    }
}
