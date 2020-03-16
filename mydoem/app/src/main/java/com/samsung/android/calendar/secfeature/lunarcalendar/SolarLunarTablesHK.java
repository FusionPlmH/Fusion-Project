package com.samsung.android.calendar.secfeature.lunarcalendar;

import android.text.format.Time;

public class SolarLunarTablesHK extends SolarLunarTables {
    SolarLunarTablesCHN mTablesCHN;

    public SolarLunarTablesHK() {
        this.mTablesCHN = new SolarLunarTablesCHN();
        this.lunar = this.mTablesCHN.lunarCHN;
        this.accumulatedLunarDays = this.mTablesCHN.accumulatedLunarDaysCHN;
    }

    public boolean isLunarHoliday(int lYear, int lMonth, int lDay, boolean isLeap) {
        if (isLeap) {
            return false;
        }
        if (lMonth == 0 && (lDay == 1 || lDay == 2 || lDay == 3)) {
            return true;
        }
        if (lMonth == 3 && lDay == 8) {
            return true;
        }
        if (lMonth == 4 && lDay == 5) {
            return true;
        }
        if (lMonth == 7 && lDay == 15) {
            return true;
        }
        if (lMonth == 8 && lDay == 9) {
            return true;
        }
        return false;
    }

    public boolean isOtherHoliday(Time time) {
        if (time.month == 0 && time.monthDay == 1) {
            return true;
        }
        if (time.month == 4 && time.monthDay == 1) {
            return true;
        }
        if (time.month == 6 && time.monthDay == 1) {
            return true;
        }
        if (time.month == 9 && time.monthDay == 1) {
            return true;
        }
        if ((time.month == 11 && time.monthDay == 25) || this.mTablesCHN.isTombSweeping(time) || isEasterDays(time)) {
            return true;
        }
        return false;
    }

    private boolean isEasterDays(Time time) {
        Time stGoodFriday = new Time();
        Time stEasterMonday = new Time();
        stGoodFriday.year = time.year;
        int temp1 = stGoodFriday.year / 100;
        int temp2 = stGoodFriday.year - ((stGoodFriday.year / 19) * 19);
        int temp4 = ((temp1 - ((temp1 / 4) + ((temp1 - ((temp1 - 17) / 25)) / 3))) + (temp2 * 19)) + 15;
        int temp5 = temp4 - ((temp4 / 30) * 30);
        int temp7 = ((((stGoodFriday.year + (stGoodFriday.year / 4)) + temp5) + 2) - temp1) + (temp1 / 4);
        int temp9 = (temp5 - ((((temp5 / 28) * (1 - (temp5 / 28))) * (29 / (temp5 + 1))) * ((21 - temp2) / 11))) - (temp7 - ((temp7 / 7) * 7));
        stGoodFriday.month = ((temp9 + 40) / 44) + 3;
        stGoodFriday.monthDay = (temp9 + 26) - ((stGoodFriday.month / 4) * 31);
        stGoodFriday.month--;
        stEasterMonday.set(stGoodFriday);
        stEasterMonday.monthDay = stGoodFriday.monthDay + 3;
        if (stGoodFriday.monthDay <= 0) {
            stGoodFriday.month--;
            stGoodFriday.monthDay += 31;
        }
        stGoodFriday.normalize(true);
        stEasterMonday.normalize(true);
        if (time.month == stGoodFriday.month && time.monthDay == stGoodFriday.monthDay) {
            return true;
        }
        if (time.month == stEasterMonday.month && time.monthDay == stEasterMonday.monthDay) {
            return true;
        }
        return false;
    }
}
