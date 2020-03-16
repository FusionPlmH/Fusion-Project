package com.samsung.android.calendar.secfeature.holidays.day.jpn;

import android.text.format.Time;

public abstract class BaseDay {
    protected Time mStartTime;
    protected String mTitle;

    public abstract int[][] getMonthDayTable();

    public abstract void initialize();

    public BaseDay(String title) {
        this.mTitle = title;
        initialize();
    }

    public Time getStartTime() {
        return this.mStartTime;
    }

    public String getTitle() {
        return this.mTitle;
    }
}
