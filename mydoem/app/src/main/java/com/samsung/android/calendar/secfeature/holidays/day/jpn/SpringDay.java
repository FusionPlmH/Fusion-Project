package com.samsung.android.calendar.secfeature.holidays.day.jpn;

import android.text.format.Time;

public class SpringDay extends BaseDay {
    final int[][] TABLE = new int[][]{new int[]{0, 21, 21, 20, 20, 21, 21, 20, 20, 21}, new int[]{21, 20, 20, 21, 21, 20, 20, 21, 21, 20}, new int[]{20, 21, 21, 20, 20, 21, 21, 20, 20, 21}, new int[]{21, 20, 20, 21, 21, 20, 20, 21, 21, 20}, new int[]{20, 21, 21, 20, 20, 21, 21, 20, 20, 21}, new int[]{21, 20, 20, 21, 21, 20, 20, 21, 21, 20}, new int[]{20, 21, 21, 20, 20, 21, 21, 20, 20, 21}, new int[]{21, 20, 20, 21, 21, 20, 20, 21, 21, 20}, new int[]{20, 21, 21, 20, 20, 21, 21, 20, 20, 21}, new int[]{21, 20, 20, 21, 21, 20, 20, 21, 21, 20}, new int[]{20, 21, 21, 20, 20, 21, 21, 20, 20, 21}, new int[]{21, 20, 20, 21, 21, 20, 20, 21, 21, 20}, new int[]{20, 21, 21, 20, 20, 21, 21, 20, 20, 21}, new int[]{21, 20, 20, 21, 21, 20, 20, 20, 20, 20}};

    public SpringDay(String title) {
        super(title);
    }

    public void initialize() {
        this.mStartTime = new Time();
        this.mStartTime.year = 1901;
        this.mStartTime.month = 2;
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
