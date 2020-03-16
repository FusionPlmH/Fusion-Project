package com.samsung.android.calendar.secfeature.holidays.day.jpn;

import android.text.format.Time;

public class AutumnDay extends BaseDay {
    final int[][] TABLE = new int[][]{new int[]{0, 23, 23, 22, 23, 23, 23, 22, 23, 23}, new int[]{23, 22, 23, 23, 23, 22, 23, 23, 23, 22}, new int[]{23, 23, 23, 22, 23, 23, 23, 22, 23, 23}, new int[]{23, 22, 23, 23, 23, 22, 23, 23, 23, 22}, new int[]{23, 23, 23, 22, 23, 23, 23, 22, 23, 23}, new int[]{23, 22, 23, 23, 23, 22, 23, 23, 23, 22}, new int[]{23, 23, 23, 22, 23, 23, 23, 22, 23, 23}, new int[]{23, 22, 23, 23, 23, 22, 23, 23, 23, 22}, new int[]{23, 23, 23, 22, 23, 23, 23, 22, 23, 23}, new int[]{23, 22, 23, 23, 23, 22, 23, 23, 23, 22}, new int[]{23, 23, 23, 22, 23, 23, 23, 22, 23, 23}, new int[]{23, 22, 23, 23, 23, 22, 23, 23, 23, 22}, new int[]{23, 23, 23, 22, 23, 23, 23, 22, 23, 23}, new int[]{23, 22, 23, 23, 23, 22, 22, 22, 22, 22}};

    public AutumnDay(String title) {
        super(title);
    }

    public void initialize() {
        this.mStartTime = new Time();
        this.mStartTime.year = 1901;
        this.mStartTime.month = 8;
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
