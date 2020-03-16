package com.samsung.android.calendar.secfeature.holidays;

import android.content.Context;
import android.graphics.Color;
import android.support.annotation.ColorInt;
import android.text.format.Time;
import com.samsung.android.calendar.secfeature.holidays.HolidayData.Builder;
import com.samsung.android.calendar.secfeature.holidays.day.jpn.BaseDay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

public abstract class CalendarHoliday {
    public static final int FIRST_HOLIDAY_VERSION = 2017090701;
    protected Context mContext;
    protected List<HolidayData> mHolidayData = new ArrayList();

    @Retention(RetentionPolicy.SOURCE)
    public @interface HolidayType {
        public static final String LEGAL = "legalHoliday";
        public static final String SOLAR_24_TERM = "24SolarTerms";
        public static final String SUBSTITUTE = "legalSubstHoliday";
    }

    public abstract String getHolidayDisplayName();

    public abstract String getHolidayType();

    public abstract int getLatestVersion();

    public CalendarHoliday(Context context) {
        this.mContext = context;
    }

    protected void addHolidayData(BaseDay data) {
        int[][] dataTable = data.getMonthDayTable();
        String title = data.getTitle();
        Time startTime = data.getStartTime();
        boolean stopToPushEvents = false;
        int length = dataTable.length;
        int i = 0;
        while (i < length) {
            for (int innerDataTable : dataTable[i]) {
                if (startTime.normalize(true) == -1 || innerDataTable == 0) {
                    startTime.year++;
                } else if (startTime.year > 2036) {
                    stopToPushEvents = true;
                    break;
                } else {
                    startTime.monthDay = innerDataTable;
                    this.mHolidayData.add(new Builder().title(title).startTime(startTime).isRepeat(false).build());
                    startTime.year++;
                }
            }
            if (!stopToPushEvents) {
                i++;
            } else {
                return;
            }
        }
    }

    public boolean isHolidayDeleted() {
        return false;
    }

    public int getHolidayCount() {
        return this.mHolidayData.size();
    }

    @ColorInt
    public int getHolidayColor() {
        return Color.rgb(199, 28, 34);
    }

    public HolidayData getHolidayData(int index) {
        if (index < 0 || index >= getHolidayCount()) {
            return null;
        }
        return (HolidayData) this.mHolidayData.get(index);
    }

    public List<HolidayData> getHolidayData() {
        return new ArrayList(this.mHolidayData);
    }
}
