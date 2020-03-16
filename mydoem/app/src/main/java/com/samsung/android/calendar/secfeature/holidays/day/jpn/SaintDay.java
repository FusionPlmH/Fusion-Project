package com.samsung.android.calendar.secfeature.holidays.day.jpn;

import android.text.format.Time;

public class SaintDay extends BaseDay {
    final int[][] TABLE = new int[][]{new int[]{0, 13, 12, 11, 9, 8, 14, 13, 11, 10}, new int[]{9, 8, 13, 12, 11, 10, 8, 14, 13, 12}, new int[]{10, 9, 8, 14, 12, 11, 10, 9, 14, 13}, new int[]{12, 11, 9, 8, 14, 13, 11, 10, 9, 8}, new int[]{13, 12, 11, 10, 8, 14, 13, 12, 10, 9}, new int[]{8, 14, 12, 11, 10, 9, 14, 13, 12, 11}, new int[]{9, 8, 14, 13, 11, 10, 9, 8, 13, 12}, new int[]{11, 10, 8, 14, 13, 12, 10, 9, 8, 14}, new int[]{12, 11, 10, 9, 14, 13, 12, 11, 9, 8}, new int[]{14, 13, 11, 10, 9, 8, 13, 12, 11, 10}, new int[]{8, 14, 13, 12, 10, 9, 8, 14, 12, 11}, new int[]{10, 9, 14, 13, 12, 11, 9, 8, 14, 13}, new int[]{11, 10, 9, 8, 13, 12, 11, 10, 8, 14}, new int[]{13, 12, 10, 9, 8, 14, 14, 14, 14, 14}};

    public SaintDay(String title) {
        super(title);
    }

    public void initialize() {
        this.mStartTime = new Time();
        this.mStartTime.year = 1901;
        this.mStartTime.month = 0;
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
