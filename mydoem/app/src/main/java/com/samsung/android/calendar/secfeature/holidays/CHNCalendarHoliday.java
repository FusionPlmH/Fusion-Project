package com.samsung.android.calendar.secfeature.holidays;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.support.annotation.ColorInt;
import com.samsung.android.calendar.secfeature.BuildConfig;
import com.samsung.android.calendar.secfeature.holidays.CalendarHoliday.HolidayType;
import com.samsung.android.calendar.secfeature.holidays.HolidayData.Builder;
import com.samsung.android.calendar.secfeature.holidays.day.chn.TombSweepingDay;

public class CHNCalendarHoliday extends CalendarHoliday {
    public CHNCalendarHoliday(Context context) {
        super(context);
        Resources r = this.mContext.getResources();
        String packageName = this.mContext.getPackageName();
        int newYearsID = r.getIdentifier("chn_holiday_new_years_day", "string", packageName);
        int valentinesID = r.getIdentifier("chn_holiday_valentines_day", "string", packageName);
        int womensID = r.getIdentifier("chn_holiday_womens_day", "string", packageName);
        int laborID = r.getIdentifier("chn_holiday_labor_day", "string", packageName);
        int youthID = r.getIdentifier("chn_holiday_chinese_youth_day", "string", packageName);
        int chilerensID = r.getIdentifier("chn_holiday_chilrens_day", "string", packageName);
        int partysID = r.getIdentifier("chn_holiday_partys_day", "string", packageName);
        int armysID = r.getIdentifier("chn_holiday_armys_day", "string", packageName);
        int tearchersID = r.getIdentifier("chn_holiday_tearchers_day", "string", packageName);
        int nationalID = r.getIdentifier("chn_holiday_national_day", "string", packageName);
        int christmasID = r.getIdentifier("chn_holiday_christmas", "string", packageName);
        int chineseNewYearsID = r.getIdentifier("chn_holiday_chinese_new_years_day", "string", packageName);
        int lanternID = r.getIdentifier("chn_holiday_lantern_festival", "string", packageName);
        int dragonBoatID = r.getIdentifier("chn_holiday_dragon_boat_festival", "string", packageName);
        int doubleSeventhID = r.getIdentifier("chn_holiday_double_seventh_day", "string", packageName);
        int midAutumnID = r.getIdentifier("chn_holiday_mid_autumn_festival", "string", packageName);
        int doubleNinthID = r.getIdentifier("chn_holiday_double_ninth_day", "string", packageName);
        int lunar11ID = r.getIdentifier("chn_holiday_lunar_1_1", "string", packageName);
        int lunar115ID = r.getIdentifier("chn_holiday_lunar_1_15", "string", packageName);
        int lunar55ID = r.getIdentifier("chn_holiday_lunar_5_5", "string", packageName);
        int lunar77ID = r.getIdentifier("chn_holiday_lunar_7_7", "string", packageName);
        int lunar815ID = r.getIdentifier("chn_holiday_lunar_8_15", "string", packageName);
        int lunar99ID = r.getIdentifier("chn_holiday_lunar_9_9", "string", packageName);
        this.mHolidayData.add(new Builder().title(r.getString(newYearsID)).startDay("1902-01-01").build());
        this.mHolidayData.add(new Builder().title(r.getString(valentinesID)).startDay("1902-02-14").redOffset(BuildConfig.FLAVOR).build());
        this.mHolidayData.add(new Builder().title(r.getString(womensID)).startDay("1911-03-08").redOffset(BuildConfig.FLAVOR).build());
        this.mHolidayData.add(new Builder().title(r.getString(laborID)).startDay("1902-05-01").build());
        this.mHolidayData.add(new Builder().title(r.getString(youthID)).startDay("1902-05-04").redOffset(BuildConfig.FLAVOR).build());
        this.mHolidayData.add(new Builder().title(r.getString(chilerensID)).startDay("1902-06-01").redOffset(BuildConfig.FLAVOR).build());
        this.mHolidayData.add(new Builder().title(r.getString(partysID)).startDay("1902-07-01").redOffset(BuildConfig.FLAVOR).build());
        this.mHolidayData.add(new Builder().title(r.getString(armysID)).startDay("1902-08-01").redOffset(BuildConfig.FLAVOR).build());
        this.mHolidayData.add(new Builder().title(r.getString(tearchersID)).startDay("1902-09-10").redOffset(BuildConfig.FLAVOR).build());
        this.mHolidayData.add(new Builder().title(r.getString(nationalID)).startDay("1949-10-01").build());
        this.mHolidayData.add(new Builder().title(r.getString(christmasID)).startDay("1902-12-25").redOffset(BuildConfig.FLAVOR).build());
        this.mHolidayData.add(new Builder().title(r.getString(chineseNewYearsID)).description(r.getString(lunar11ID)).startDay("1902-02-08").isLunar(true).build());
        this.mHolidayData.add(new Builder().title(r.getString(lanternID)).description(r.getString(lunar115ID)).startDay("1902-02-22").isLunar(true).redOffset(BuildConfig.FLAVOR).build());
        this.mHolidayData.add(new Builder().title(r.getString(dragonBoatID)).description(r.getString(lunar55ID)).startDay("1902-06-10").isLunar(true).build());
        this.mHolidayData.add(new Builder().title(r.getString(doubleSeventhID)).description(r.getString(lunar77ID)).startDay("1902-08-10").isLunar(true).redOffset(BuildConfig.FLAVOR).build());
        this.mHolidayData.add(new Builder().title(r.getString(midAutumnID)).description(r.getString(lunar815ID)).startDay("1902-09-16").isLunar(true).build());
        this.mHolidayData.add(new Builder().title(r.getString(doubleNinthID)).description(r.getString(lunar99ID)).startDay("1902-10-10").isLunar(true).redOffset(BuildConfig.FLAVOR).build());
        addHolidayData(new TombSweepingDay(r.getString(r.getIdentifier("chn_holiday_tomb_sweeping_day", "string", packageName))));
    }

    public int getLatestVersion() {
        return CalendarHoliday.FIRST_HOLIDAY_VERSION;
    }

    public String getHolidayDisplayName() {
        return this.mContext.getString(this.mContext.getResources().getIdentifier("chn_festival_calendar_label", "string", this.mContext.getPackageName()));
    }

    @ColorInt
    public int getHolidayColor() {
        return Color.rgb(199, 28, 34);
    }

    public String getHolidayType() {
        return HolidayType.LEGAL;
    }
}
