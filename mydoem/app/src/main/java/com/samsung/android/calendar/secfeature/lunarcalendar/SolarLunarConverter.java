package com.samsung.android.calendar.secfeature.lunarcalendar;

import android.text.format.Time;

public class SolarLunarConverter {
    private static final int LUNAR_END_YEAR = 2100;
    private static final int LUNAR_START_YEAR = 1881;
    private static int sIndexOfYear = -1;
    private final int MAX_LUNAR_YEAR_OFFSET = 221;
    private final int TOTAL_DAYS_TO_18810130 = 686686;
    private int[] mAcmDaysInLeapYear = new int[]{0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335, 366};
    private int[] mAcmDaysInYear = new int[]{0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365};
    private int mDay;
    private boolean mIsLeapMonth;
    private int mMonth;
    private SolarLunarTables mSolarLunarTables;
    private int mYear;

    public SolarLunarConverter(SolarLunarTables tables) {
        this.mSolarLunarTables = tables;
    }

    public int getTotalDaysTo(int y) {
        int year = y - 1;
        return (((year * 365) + (year / 4)) - (year / 100)) + (year / 400);
    }

    public boolean isFirstLunarDay() {
        return this.mDay == 1;
    }

    public String getStringValue() {
        if (this.mSolarLunarTables instanceof SolarLunarTablesVI) {
            return Integer.toString(this.mDay).concat("/").concat(Integer.toString(this.mMonth + 1));
        }
        return Integer.toString(this.mMonth + 1).concat("/").concat(Integer.toString(this.mDay));
    }

    private boolean isLeapYear(int y) {
        return y % 4 <= 0 && (y % 100 >= 1 || y % 400 <= 0);
    }

    private int[] getAccumulatedDays(int year) {
        if (isLeapYear(year)) {
            return this.mAcmDaysInLeapYear;
        }
        return this.mAcmDaysInYear;
    }

    public void convertSolarToLunar(int y, int m, int d) {
        this.mIsLeapMonth = false;
        if (y < LUNAR_START_YEAR || y > LUNAR_END_YEAR || m < 0 || m > 11 || d < 1 || d > 31) {
            throw new IllegalArgumentException("The date " + y + "/" + m + "/" + d + " is out of range.");
        }
        int indexOfYear;
        this.mDay = (((getTotalDaysTo(y) + getAccumulatedDays(y)[m]) + d) - 686686) + 1;
        if (sIndexOfYear <= 0 || this.mSolarLunarTables.accumulatedLunarDays[sIndexOfYear - 1] >= this.mDay || this.mDay > this.mSolarLunarTables.accumulatedLunarDays[sIndexOfYear]) {
            indexOfYear = this.mDay <= this.mSolarLunarTables.accumulatedLunarDays[110] ? 1 : 111;
            while (indexOfYear < 221 && this.mDay > this.mSolarLunarTables.accumulatedLunarDays[indexOfYear]) {
                indexOfYear++;
            }
            sIndexOfYear = indexOfYear;
        } else {
            indexOfYear = sIndexOfYear;
        }
        indexOfYear--;
        this.mSolarLunarTables.getClass();
        int startIndexOfYear = indexOfYear * 14;
        this.mYear = indexOfYear + LUNAR_START_YEAR;
        this.mDay -= this.mSolarLunarTables.accumulatedLunarDays[indexOfYear];
        byte[] bArr = this.mSolarLunarTables.lunar;
        this.mSolarLunarTables.getClass();
        int leapMonth = bArr[startIndexOfYear + 13];
        int numOfMonth = leapMonth == 127 ? 12 : 13;
        this.mMonth = -1;
        int j = 0;
        while (j < numOfMonth) {
            int m1 = this.mSolarLunarTables.lunar[startIndexOfYear + j];
            if (leapMonth == j) {
                this.mIsLeapMonth = true;
            } else {
                this.mMonth++;
                this.mIsLeapMonth = false;
            }
            if (this.mDay > m1) {
                this.mDay -= m1;
                j++;
            } else {
                return;
            }
        }
    }

    public void convertLunarToSolar(int y, int m, int d, boolean isLeapMonth) {
        if (y < LUNAR_START_YEAR || y > LUNAR_END_YEAR || m < 0 || m > 11 || d < 1 || d > 30) {
            throw new IllegalArgumentException("The date " + y + "/" + m + "/" + d + " is out of range.");
        }
        int[] days = getAccumulatedDays(y);
        int indexOfYear = y - 1881;
        this.mSolarLunarTables.getClass();
        int startIndexOfYear = indexOfYear * 14;
        int countOfDays = this.mSolarLunarTables.getAccumulatedLunarDays(indexOfYear);
        SolarLunarTables solarLunarTables = this.mSolarLunarTables;
        this.mSolarLunarTables.getClass();
        int leapMonth = solarLunarTables.getLunar(startIndexOfYear + 13);
        int j;
        if ((leapMonth == 127 ? 12 : 13) == 12) {
            for (j = 0; j < m; j++) {
                countOfDays += this.mSolarLunarTables.getLunar(startIndexOfYear + j);
            }
        } else if (isLeapMonth && m + 1 == leapMonth) {
            for (j = 0; j < leapMonth; j++) {
                countOfDays += this.mSolarLunarTables.getLunar(startIndexOfYear + j);
            }
        } else {
            int nM;
            if (m + 1 > leapMonth) {
                nM = m + 1;
            } else {
                nM = m;
            }
            for (j = 0; j < nM; j++) {
                countOfDays += this.mSolarLunarTables.getLunar(startIndexOfYear + j);
            }
        }
        countOfDays = (countOfDays + d) - 1;
        this.mYear = LUNAR_START_YEAR;
        this.mMonth = 0;
        this.mDay = 30;
        if (countOfDays > 335) {
            this.mYear = 1882;
            this.mMonth = 0;
            this.mDay = 1;
            countOfDays -= 336;
            int daysOfYear = 365;
            while (countOfDays >= daysOfYear) {
                countOfDays -= daysOfYear;
                this.mYear++;
                if (isLeapYear(this.mYear)) {
                    daysOfYear = 366;
                } else {
                    daysOfYear = 365;
                }
            }
            while (countOfDays >= days[this.mMonth + 1]) {
                this.mMonth++;
            }
            this.mDay += countOfDays - days[this.mMonth];
        } else if (countOfDays > 1) {
            this.mMonth = 1;
            this.mDay = 1;
            countOfDays -= 2;
            while (countOfDays >= days[this.mMonth + 1]) {
                this.mMonth++;
            }
            this.mDay += countOfDays - days[this.mMonth];
        } else {
            this.mDay += countOfDays;
        }
    }

    public int getWeekday(int year, int month, int day) {
        if (month <= 1) {
            month += 12;
            year--;
        }
        return ((((((((month * 13) - 14) / 5) + day) + year) + (year / 4)) - (year / 100)) + (year / 400)) % 7;
    }

    public int getDayLengthOf(int year, int month, boolean isLeapMonth) {
        return this.mSolarLunarTables.getDayLengthOf(year, month, isLeapMonth);
    }

    public boolean isHoliday(Time solarTime) {
        convertSolarToLunar(solarTime.year, solarTime.month, solarTime.monthDay);
        return this.mSolarLunarTables.isOtherHoliday(solarTime) || this.mSolarLunarTables.isLunarHoliday(this.mYear, this.mMonth, this.mDay, this.mIsLeapMonth);
    }

    public boolean isHolidayFst(Time solarTime) {
        return this.mSolarLunarTables.isOtherHoliday(solarTime) || this.mSolarLunarTables.isLunarHoliday(this.mYear, this.mMonth, this.mDay, this.mIsLeapMonth);
    }

    public boolean isSubstHoliday(Time solarTime) {
        return this.mSolarLunarTables.isSubstHoliday(solarTime);
    }

    public int getYear() {
        return this.mYear;
    }

    public int getMonth() {
        return this.mMonth;
    }

    public int getDay() {
        return this.mDay;
    }

    public boolean isLeapMonth() {
        return this.mIsLeapMonth;
    }
}
