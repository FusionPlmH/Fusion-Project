package com.samsung.android.calendar.secfeature.lunarcalendar;

import android.text.format.Time;

public abstract class SolarLunarTables {
    public final int END_OF_LUNAR_YEAR = 2100;
    public final int INDEX_OF_LEAP_MONTH = 13;
    public final int START_OF_LUNAR_YEAR = 1881;
    public final int WIDTH_PER_YEAR = 14;
    protected int[] accumulatedLunarDays;
    protected byte[] lunar;

    SolarLunarTables() {
    }

    public int getDayLengthOf(int year, int month, boolean leap) {
        if (year < 1881 || year > 2100 || month < 0 || month > 11) {
            throw new IllegalArgumentException("The month " + year + "/" + month + " is out of range.");
        }
        int startIndexOfYear = (year - 1881) * 14;
        int leapMonth = getLunar(startIndexOfYear + 13);
        if (leap || month >= leapMonth) {
            return getLunar((startIndexOfYear + month) + 1);
        }
        return getLunar(startIndexOfYear + month);
    }

    public boolean isLeapMonth(int year, int month) {
        if (year >= 1881 && year <= 2100 && month >= 0 && month <= 12) {
            return getLunar(((year + -1881) * 14) + 13) + -1 == month;
        } else {
            throw new IllegalArgumentException("The month " + year + "/" + month + " is out of range.");
        }
    }

    public byte getLunar(int index) {
        return this.lunar[index];
    }

    public int getAccumulatedLunarDays(int index) {
        return this.accumulatedLunarDays[index];
    }

    public boolean isLunarHoliday(int lYear, int lMonth, int lDay, boolean isLeap) {
        return false;
    }

    public boolean isOtherHoliday(Time time) {
        return false;
    }

    public boolean isSubstHoliday(Time solarTime) {
        return false;
    }
}
