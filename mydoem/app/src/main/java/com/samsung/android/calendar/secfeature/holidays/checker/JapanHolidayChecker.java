package com.samsung.android.calendar.secfeature.holidays.checker;

import android.text.format.Time;
import com.samsung.android.calendar.secfeature.SECCalendarFeatures;

public class JapanHolidayChecker {
    private static JapanHolidayChecker sInstance = null;

    private JapanHolidayChecker() {
    }

    public static synchronized JapanHolidayChecker getInstance() {
        JapanHolidayChecker japanHolidayChecker;
        synchronized (JapanHolidayChecker.class) {
            if (sInstance == null) {
                sInstance = new JapanHolidayChecker();
            }
            japanHolidayChecker = sInstance;
        }
        return japanHolidayChecker;
    }

    public boolean isHoliday(Time time) {
        if (time.month == 0 && time.monthDay == 1) {
            return true;
        }
        if (time.month == 1 && time.monthDay == 11) {
            return true;
        }
        if (time.month == 3 && time.monthDay == 29) {
            return true;
        }
        if (time.month == 4 && time.monthDay == 3) {
            return true;
        }
        if (time.month == 4 && time.monthDay == 4) {
            return true;
        }
        if (time.month == 4 && time.monthDay == 5) {
            return true;
        }
        if (time.month == 7 && time.monthDay == 11 && time.year > 2015) {
            return true;
        }
        if (time.month == 10 && time.monthDay == 3) {
            return true;
        }
        if (time.month == 10 && time.monthDay == 23) {
            return true;
        }
        if (time.month == 11 && time.monthDay == 23) {
            return true;
        }
        if (time.month == 2 && getSpringDay(time.year) == time.monthDay) {
            return true;
        }
        if (time.month == 8 && getAutumnDay(time.year) == time.monthDay) {
            return true;
        }
        if (time.month == 0 && time.monthDay == getSiteiWeekDay(time.year, 0, 2, 1)) {
            return true;
        }
        if (time.month == 9 && time.monthDay == getSiteiWeekDay(time.year, 9, 2, 1)) {
            return true;
        }
        if (time.year >= 1996 && time.month == 6 && time.monthDay == getSiteiWeekDay(time.year, 6, 3, 1)) {
            return true;
        }
        if (time.month == 8 && time.monthDay == getSiteiWeekDay(time.year, 8, 3, 1)) {
            return true;
        }
        if ((time.year == 2009 || time.year == 2015 || time.year == 2026) && time.month == 8 && time.monthDay == 22) {
            return true;
        }
        if (time.month == 8 && getAutumnDay(time.year) == time.monthDay + 1 && time.monthDay - 1 == getSiteiWeekDay(time.year, 8, 3, 1)) {
            return true;
        }
        return false;
    }

    public boolean isSubstHoliday(Time time) {
        if (time.month == 0 && time.monthDay == 2 && time.weekDay == 1) {
            return true;
        }
        if (time.month == 1 && time.monthDay == 12 && time.weekDay == 1) {
            return true;
        }
        if (time.month == 3 && time.monthDay == 30 && time.weekDay == 1) {
            return true;
        }
        if (time.month == 4 && time.monthDay == 6 && (time.weekDay == 1 || time.weekDay == 2 || time.weekDay == 3)) {
            return true;
        }
        if (time.month == 10 && time.monthDay == 4 && time.weekDay == 1) {
            return true;
        }
        if (time.month == 10 && time.monthDay == 24 && time.weekDay == 1) {
            return true;
        }
        if (time.month == 11 && time.monthDay == 24 && time.weekDay == 1) {
            return true;
        }
        if (time.month == 2 && getSpringDay(time.year) + 1 == time.monthDay && time.weekDay == 1) {
            return true;
        }
        if (time.month == 8 && getAutumnDay(time.year) + 1 == time.monthDay && time.weekDay == 1) {
            return true;
        }
        if (time.month == 7 && time.monthDay == 12 && time.weekDay == 1 && time.year >= 2016) {
            return true;
        }
        return false;
    }

    private int getSiteiWeekDay(int year, int month, int num, int yobi) {
        Time time = new Time();
        time.set(1, month, year);
        time.normalize(true);
        int firstDayYobi = time.weekDay;
        int addWeekDays = 0;
        if (yobi < firstDayYobi) {
            addWeekDays = 7;
        }
        return (((num - 1) * 7) + ((yobi + addWeekDays) - firstDayYobi)) + 1;
    }

    private int getSpringDay(int year) {
        String strYear = String.valueOf(year);
        int num1 = Integer.parseInt(strYear.substring(2, 3));
        int num2 = Integer.parseInt(strYear.substring(3, 4));
        if (num1 % 2 == 0) {
            switch (num2) {
                case 0:
                case SECCalendarFeatures.LOC_KOREA /*1*/:
                case SECCalendarFeatures.LOC_HKTW /*4*/:
                case SECCalendarFeatures.LOC_VI /*5*/:
                case 8:
                case 9:
                    return 20;
                case 2:
                case SECCalendarFeatures.LOC_JAPAN /*3*/:
                case 6:
                case 7:
                    return 21;
                default:
                    return 20;
            }
        }
        switch (num2) {
            case 0:
            case SECCalendarFeatures.LOC_KOREA /*1*/:
            case SECCalendarFeatures.LOC_HKTW /*4*/:
            case SECCalendarFeatures.LOC_VI /*5*/:
            case 8:
            case 9:
                return 21;
            case 2:
            case SECCalendarFeatures.LOC_JAPAN /*3*/:
            case 6:
            case 7:
                return 20;
            default:
                return 21;
        }
    }

    private int getAutumnDay(int year) {
        if ((year % 4 != 0 || year % 100 == 0) && year % 400 != 0) {
            return 23;
        }
        return 22;
    }
}
