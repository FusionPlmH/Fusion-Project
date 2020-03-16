package com.samsung.android.calendar.secfeature.holidays;

import android.content.Context;
import android.content.res.Resources;
import com.samsung.android.calendar.secfeature.holidays.CalendarHoliday.HolidayType;
import com.samsung.android.calendar.secfeature.holidays.HolidayData.Builder;

public class VICalendarHoliday extends CalendarHoliday {
    public VICalendarHoliday(Context context) {
        super(context);
        Resources r = this.mContext.getResources();
        String packageName = this.mContext.getPackageName();
        int newYearsID = r.getIdentifier("vi_holiday_new_years_day", "string", packageName);
        int valentinesID = r.getIdentifier("vi_holiday_valentines_day", "string", packageName);
        int womensID = r.getIdentifier("vi_holiday_womens_day", "string", packageName);
        int reunificationID = r.getIdentifier("vi_holiday_reunification_day", "string", packageName);
        int laborID = r.getIdentifier("vi_holiday_labor_day", "string", packageName);
        int chilerensID = r.getIdentifier("vi_holiday_chilrens_day", "string", packageName);
        int augRevolutionID = r.getIdentifier("vi_holiday_august_revolution_day", "string", packageName);
        int nationalID = r.getIdentifier("vi_holiday_national_day", "string", packageName);
        int vietnameseWomensID = r.getIdentifier("vi_holiday_vietnamese_womens_day", "string", packageName);
        int tearchersID = r.getIdentifier("vi_holiday_tearchers_day", "string", packageName);
        int christmasID = r.getIdentifier("vi_holiday_christmas", "string", packageName);
        int vietnameseNewYearsID = r.getIdentifier("vi_holiday_vietnamese_new_years_day", "string", packageName);
        int lanternID = r.getIdentifier("vi_holiday_lantern_festival", "string", packageName);
        int coldFoodID = r.getIdentifier("vi_holiday_cold_food_festival", "string", packageName);
        int hungKingsID = r.getIdentifier("vi_holiday_hung_kings_festival", "string", packageName);
        int vesakID = r.getIdentifier("vi_holiday_vesak_festival", "string", packageName);
        int dragonBoatID = r.getIdentifier("vi_holiday_dragon_boat_festival", "string", packageName);
        int ghostID = r.getIdentifier("vi_holiday_ghost_day", "string", packageName);
        int midAutumnID = r.getIdentifier("vi_holiday_mid_autumn_festival", "string", packageName);
        int kitchenGodID = r.getIdentifier("vi_holiday_kitchen_god_festival", "string", packageName);
        int lunar11ID = r.getIdentifier("vi_holiday_lunar_1_1", "string", packageName);
        int lunar115ID = r.getIdentifier("vi_holiday_lunar_1_15", "string", packageName);
        int lunar33ID = r.getIdentifier("vi_holiday_lunar_3_3", "string", packageName);
        int lunar310ID = r.getIdentifier("vi_holiday_lunar_3_10", "string", packageName);
        int lunar415ID = r.getIdentifier("vi_holiday_lunar_4_15", "string", packageName);
        int lunar55ID = r.getIdentifier("vi_holiday_lunar_5_5", "string", packageName);
        int lunar715ID = r.getIdentifier("vi_holiday_lunar_7_15", "string", packageName);
        int lunar815ID = r.getIdentifier("vi_holiday_lunar_8_15", "string", packageName);
        int lunar1223ID = r.getIdentifier("vi_holiday_lunar_12_23", "string", packageName);
        this.mHolidayData.add(new Builder().title(r.getString(newYearsID)).startDay("1902-01-01").build());
        this.mHolidayData.add(new Builder().title(r.getString(valentinesID)).startDay("1902-02-14").build());
        this.mHolidayData.add(new Builder().title(r.getString(womensID)).startDay("1911-03-08").build());
        this.mHolidayData.add(new Builder().title(r.getString(reunificationID)).startDay("1975-04-30").build());
        this.mHolidayData.add(new Builder().title(r.getString(laborID)).startDay("1902-05-01").build());
        this.mHolidayData.add(new Builder().title(r.getString(chilerensID)).startDay("1902-06-01").build());
        this.mHolidayData.add(new Builder().title(r.getString(augRevolutionID)).startDay("1945-08-19").build());
        this.mHolidayData.add(new Builder().title(r.getString(nationalID)).startDay("1945-09-02").build());
        this.mHolidayData.add(new Builder().title(r.getString(vietnameseWomensID)).startDay("1930-10-20").build());
        this.mHolidayData.add(new Builder().title(r.getString(tearchersID)).startDay("1958-11-20").build());
        this.mHolidayData.add(new Builder().title(r.getString(christmasID)).startDay("1902-12-25").build());
        this.mHolidayData.add(new Builder().title(r.getString(vietnameseNewYearsID)).description(r.getString(lunar11ID)).startDay("1902-02-08").isLunar(true).build());
        this.mHolidayData.add(new Builder().title(r.getString(lanternID)).description(r.getString(lunar115ID)).startDay("1902-02-22").isLunar(true).build());
        this.mHolidayData.add(new Builder().title(r.getString(coldFoodID)).description(r.getString(lunar33ID)).startDay("1902-04-10").isLunar(true).build());
        this.mHolidayData.add(new Builder().title(r.getString(hungKingsID)).description(r.getString(lunar310ID)).startDay("1902-04-17").isLunar(true).build());
        this.mHolidayData.add(new Builder().title(r.getString(vesakID)).description(r.getString(lunar415ID)).startDay("1902-05-22").isLunar(true).build());
        this.mHolidayData.add(new Builder().title(r.getString(dragonBoatID)).description(r.getString(lunar55ID)).startDay("1902-06-10").isLunar(true).build());
        this.mHolidayData.add(new Builder().title(r.getString(ghostID)).description(r.getString(lunar715ID)).startDay("1902-08-18").isLunar(true).build());
        this.mHolidayData.add(new Builder().title(r.getString(midAutumnID)).description(r.getString(lunar815ID)).startDay("1902-09-16").isLunar(true).build());
        this.mHolidayData.add(new Builder().title(r.getString(kitchenGodID)).description(r.getString(lunar1223ID)).startDay("1902-02-01").isLunar(true).build());
    }

    public int getLatestVersion() {
        return CalendarHoliday.FIRST_HOLIDAY_VERSION;
    }

    public String getHolidayDisplayName() {
        return this.mContext.getString(this.mContext.getResources().getIdentifier("vi_festival_calendar_label", "string", this.mContext.getPackageName()));
    }

    public String getHolidayType() {
        return HolidayType.LEGAL;
    }
}
