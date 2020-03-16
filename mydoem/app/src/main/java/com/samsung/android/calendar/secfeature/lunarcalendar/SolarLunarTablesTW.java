package com.samsung.android.calendar.secfeature.lunarcalendar;

import android.text.format.Time;

public class SolarLunarTablesTW extends SolarLunarTables {
    SolarLunarTablesCHN mTablesCHN;

    public SolarLunarTablesTW() {
        this.mTablesCHN = new SolarLunarTablesCHN();
        this.lunar = this.mTablesCHN.lunarCHN;
        this.accumulatedLunarDays = this.mTablesCHN.accumulatedLunarDaysCHN;
    }

    public boolean isLunarHoliday(int lYear, int lMonth, int lDay, boolean isLeap) {
        if (isLeap) {
            return false;
        }
        if (lMonth == 0 && lDay == 1) {
            return true;
        }
        if (lMonth == 4 && lDay == 5) {
            return true;
        }
        if (lMonth == 7 && lDay == 15) {
            return true;
        }
        return false;
    }

    public boolean isOtherHoliday(Time time) {
        if (time.month == 0 && time.monthDay == 1) {
            return true;
        }
        if (time.month == 1 && time.monthDay == 28) {
            return true;
        }
        if ((time.month == 9 && time.monthDay == 10) || this.mTablesCHN.isTombSweeping(time)) {
            return true;
        }
        return false;
    }
}
