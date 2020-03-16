package com.samsung.android.calendar.secfeature.holidays.day.chn;

import android.text.format.Time;
import com.samsung.android.calendar.secfeature.holidays.day.jpn.BaseDay;

public class TombSweepingDay extends BaseDay {
    final int[][] TABLE = new int[][]{new int[]{5, 6, 6, 5, 5, 6, 6, 5, 5, 6}, new int[]{6, 5, 5, 5, 6, 5, 5, 5, 6, 5}, new int[]{5, 5, 6, 5, 5, 5, 6, 5, 5, 5}, new int[]{6, 5, 5, 5, 6, 5, 5, 5, 6, 5}, new int[]{5, 5, 6, 5, 5, 5, 5, 5, 5, 5}, new int[]{5, 5, 5, 5, 5, 5, 5, 5, 5, 5}, new int[]{5, 5, 5, 5, 5, 5, 5, 5, 5, 5}, new int[]{5, 5, 5, 5, 5, 4, 5, 5, 5, 4}, new int[]{5, 5, 5, 4, 5, 5, 5, 4, 5, 5}, new int[]{5, 4, 5, 5, 5, 4, 5, 5, 5, 4}, new int[]{5, 5, 5, 4, 5, 5, 5, 4, 4, 5}, new int[]{5, 4, 4, 5, 5, 4, 4, 5, 5, 4}, new int[]{4, 5, 5, 4, 4, 5, 5, 4, 4, 5}, new int[]{5, 4, 4, 5, 5, 4, 4, 5, 5, 4}};

    public TombSweepingDay(String title) {
        super(title);
    }

    public void initialize() {
        this.mStartTime = new Time();
        this.mStartTime.year = 1901;
        this.mStartTime.month = 3;
        this.mStartTime.monthDay = 5;
        this.mStartTime.allDay = true;
        this.mStartTime.hour = 0;
        this.mStartTime.minute = 0;
        this.mStartTime.second = 0;
        this.mStartTime.timezone = "UTC";
    }

    public int[][] getMonthDayTable() {
        return this.TABLE;
    }
}
