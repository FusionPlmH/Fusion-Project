package com.samsung.android.calendar.secfeature.holidays;

import android.content.Context;
import android.graphics.Color;
import android.text.format.Time;
import com.samsung.android.calendar.secfeature.holidays.CalendarHoliday.HolidayType;
import com.samsung.android.calendar.secfeature.holidays.HolidayData.Builder;
import com.samsung.android.calendar.secfeature.holidays.day.chn.Solar24Term;

public class CHNCalendarSolar24Term extends CalendarHoliday {
    public CHNCalendarSolar24Term(Context context) {
        super(context);
        addCHNSolarTerm24();
    }

    public int getLatestVersion() {
        return CalendarHoliday.FIRST_HOLIDAY_VERSION;
    }

    public String getHolidayDisplayName() {
        return this.mContext.getString(this.mContext.getResources().getIdentifier("chn_24solarterms_calendar_label", "string", this.mContext.getPackageName()));
    }

    public int getHolidayColor() {
        return Color.rgb(229, 138, 0);
    }

    private void addCHNSolarTerm24() {
        Time time = new Time();
        time.allDay = true;
        time.hour = 0;
        time.minute = 0;
        time.second = 0;
        time.timezone = "UTC";
        String[] solarTermTitleArray = this.mContext.getResources().getStringArray(this.mContext.getResources().getIdentifier("solar_terms_24_title_array", "array", this.mContext.getPackageName()));
        for (int i = 0; i < 56; i++) {
            for (int j = 0; j < Solar24Term.SolarTerm24[i].length; j++) {
                time.month = Solar24Term.SolarTerm24[i][j][0] - 1;
                time.monthDay = Solar24Term.SolarTerm24[i][j][1];
                time.year = Solar24Term.SolarTerm24[i][j][2];
                this.mHolidayData.add(new Builder().title(solarTermTitleArray[j]).startTime(time).isRepeat(false).build());
            }
        }
    }

    public String getHolidayType() {
        return HolidayType.SOLAR_24_TERM;
    }
}
