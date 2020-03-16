package com.samsung.android.calendar.secfeature.holidays.day.jpn;

import android.text.format.Time;

public class MarineDay extends BaseDay {
    final int[][] TABLE = new int[][]{new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 15, 21, 20, 19, 17}, new int[]{16, 15, 21, 19, 18, 17, 16, 21, 20, 19}, new int[]{18, 16, 15, 21, 20, 18, 17, 16, 15, 20}, new int[]{19, 18, 17, 15, 21, 20, 19, 17, 16, 15}, new int[]{21, 19, 18, 17, 16, 21, 21, 21, 21, 21}};

    public MarineDay(String title) {
        super(title);
    }

    public void initialize() {
        this.mStartTime = new Time();
        this.mStartTime.year = 1901;
        this.mStartTime.month = 6;
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
