package com.samsung.android.calendar.secfeature.holidays;

import android.content.Context;
import android.content.res.Resources;
import com.samsung.android.calendar.secfeature.holidays.CalendarHoliday.HolidayType;
import com.samsung.android.calendar.secfeature.holidays.HolidayData.Builder;

public class KORCalendarHoliday extends CalendarHoliday {
    public KORCalendarHoliday(Context context) {
        super(context);
        Resources r = this.mContext.getResources();
        String packageName = this.mContext.getPackageName();
        int newYearID = r.getIdentifier("holiday_1_newyear", "string", packageName);
        int hol3ID = r.getIdentifier("holiday_3_31", "string", packageName);
        int hol5ID = r.getIdentifier("holiday_5_children", "string", packageName);
        int hol6ID = r.getIdentifier("holiday_6_memorial", "string", packageName);
        int hol8ID = r.getIdentifier("holiday_8_independence", "string", packageName);
        int hol10ID = r.getIdentifier("holiday_10_foundation", "string", packageName);
        int hol12ID = r.getIdentifier("holiday_12_xmas", "string", packageName);
        int lunNewYearID = r.getIdentifier("holiday_1_newyear_lunar", "string", packageName);
        int lunBuddhaID = r.getIdentifier("holiday_4_buddha_lunar", "string", packageName);
        int lunChusokID = r.getIdentifier("holiday_8_harvest_lunar", "string", packageName);
        int lunNewYearComID = r.getIdentifier("holiday_1_newyear_lunar_string", "string", packageName);
        int lunBuddhaComID = r.getIdentifier("holiday_4_buddha_lunar_string", "string", packageName);
        int lunChusokComID = r.getIdentifier("holiday_8_harvest_lunar_string", "string", packageName);
        int hol10_9ID = r.getIdentifier("holiday_10_9_hanguel", "string", packageName);
        int hol_presidential_election_19th = r.getIdentifier("holiday_presidential_election_19th", "string", packageName);
        int hol_presidential_election_20th = r.getIdentifier("holiday_presidential_election_20th", "string", packageName);
        int hol_local_election_7th = r.getIdentifier("holiday_local_election_7th", "string", packageName);
        int hol_local_election_8th = r.getIdentifier("holiday_local_election_8th", "string", packageName);
        int hol_assembly_election_21th = r.getIdentifier("holiday_assembly_election_21th", "string", packageName);
        int hol_assembly_election_22th = r.getIdentifier("holiday_assembly_election_22th", "string", packageName);
        this.mHolidayData.add(new Builder().title(r.getString(newYearID)).startDay("1902-01-01").build());
        this.mHolidayData.add(new Builder().title(r.getString(hol3ID)).startDay("1950-03-01").build());
        this.mHolidayData.add(new Builder().title(r.getString(hol5ID)).startDay("1946-05-05").build());
        this.mHolidayData.add(new Builder().title(r.getString(hol6ID)).startDay("1971-06-06").build());
        this.mHolidayData.add(new Builder().title(r.getString(hol8ID)).startDay("1950-08-15").build());
        this.mHolidayData.add(new Builder().title(r.getString(hol10ID)).startDay("1949-10-03").build());
        this.mHolidayData.add(new Builder().title(r.getString(hol12ID)).startDay("1902-12-25").build());
        this.mHolidayData.add(new Builder().title(r.getString(lunNewYearID)).description(r.getString(lunNewYearComID)).startDay("1902-02-08").isLunar(true).redOffset("-1_0_+1").build());
        this.mHolidayData.add(new Builder().title(r.getString(lunBuddhaID)).description(r.getString(lunBuddhaComID)).startDay("1902-05-15").isLunar(true).build());
        this.mHolidayData.add(new Builder().title(r.getString(lunChusokID)).description(r.getString(lunChusokComID)).startDay("1902-09-16").isLunar(true).redOffset("-1_0_+1").build());
        this.mHolidayData.add(new Builder().title(r.getString(hol10_9ID)).startDay("2013-10-09").build());
        this.mHolidayData.add(new Builder().title(r.getString(hol_presidential_election_19th)).startDay("2017-05-09").isRepeat(false).build());
        this.mHolidayData.add(new Builder().title(r.getString(hol_presidential_election_20th)).startDay("2022-03-09").isRepeat(false).build());
        this.mHolidayData.add(new Builder().title(r.getString(hol_local_election_7th)).startDay("2018-06-13").isRepeat(false).build());
        this.mHolidayData.add(new Builder().title(r.getString(hol_local_election_8th)).startDay("2022-06-01").isRepeat(false).build());
        this.mHolidayData.add(new Builder().title(r.getString(hol_assembly_election_21th)).startDay("2020-04-15").isRepeat(false).build());
        this.mHolidayData.add(new Builder().title(r.getString(hol_assembly_election_22th)).startDay("2024-04-10").isRepeat(false).build());
    }

    public int getLatestVersion() {
        return CalendarHoliday.FIRST_HOLIDAY_VERSION;
    }

    public String getHolidayDisplayName() {
        return this.mContext.getString(this.mContext.getResources().getIdentifier("holiday_calendar_label", "string", this.mContext.getPackageName()));
    }

    public String getHolidayType() {
        return HolidayType.LEGAL;
    }
}
