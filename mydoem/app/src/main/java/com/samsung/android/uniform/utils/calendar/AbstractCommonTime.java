package com.samsung.android.uniform.utils.calendar;

import java.util.TimeZone;
import java.util.regex.Pattern;

abstract class AbstractCommonTime<T> {
    protected static final String RFC2445FORMAT_DATE = "yyyyMMdd";
    protected static final String RFC2445FORMAT_DATE_TIME = "yyyyMMdd'T'HHmmss";
    protected static final String RFC2445FORMAT_DATE_TIME_UTC = "yyyyMMdd'T'HHmmss'Z'";
    protected static final Pattern RFC2445FORMAT_RE_DATE_PATTERN = Pattern.compile("[12][0-9]{3}(0[1-9]|1[0-2])(0[1-9]|[12][]0-9]|3[01])");
    protected static final Pattern RFC2445FORMAT_RE_DATE_TIME_PATTERN = Pattern.compile("[12][0-9]{3}(0[1-9]|1[0-2])(0[1-9]|[12][]0-9]|3[01])T([01][0-9]|2[0-3])([0-5][0-9]){2}");
    protected static final Pattern RFC2445FORMAT_RE_DATE_TIME_UTC_PATTERN = Pattern.compile("[12][0-9]{3}(0[1-9]|1[0-2])(0[1-9]|[12][]0-9]|3[01])T([01][0-9]|2[0-3])([0-5][0-9]){2}Z");

    public abstract T addDay(int i);

    public abstract T addHour(int i);

    public abstract T addMinute(int i);

    public abstract T addMonth(int i);

    public abstract T addSecond(int i);

    public abstract T addYear(int i);

    public abstract boolean after(T t);

    public abstract boolean before(T t);

    public abstract void clear();

    public abstract int compareTo(T t);

    public abstract int getActualMaximum(int i);

    public abstract int getActualMinimum(int i);

    public abstract String getFormattedStringFromPattern(String str);

    public abstract long getGMTOffSet();

    public abstract int getHour();

    public abstract int getJulianDay();

    public abstract int getMinute();

    public abstract int getMonth();

    public abstract int getMonthDay();

    public abstract String getRFC2445FormattedString();

    public abstract int getSecond();

    public abstract long getTimeInMillis();

    public abstract String getTimeZoneID();

    public abstract int getWeekDay();

    public abstract int getWeekNumber();

    public abstract int getYear();

    public abstract int getYearDay();

    public abstract boolean isAllDay();

    public abstract boolean isInDST();

    public abstract void set(int i, int i2, int i3);

    public abstract void set(int i, int i2, int i3, int i4, int i5, int i6);

    public abstract void set(long j);

    public abstract void set(T t);

    public abstract void setAllDay(boolean z);

    public abstract boolean setFromRFC2445Format(String str);

    public abstract void setHour(int i);

    public abstract long setJulianDay(int i);

    public abstract void setMinute(int i);

    public abstract void setMonth(int i);

    public abstract void setMonthDay(int i);

    public abstract void setSecond(int i);

    public abstract void setTimeZoneID(String str);

    public abstract void setToNow();

    public abstract void setWeekDay(int i);

    public abstract void setYear(int i);

    public abstract void setYearDay(int i);

    public abstract void switchTimeZone(String str);

    AbstractCommonTime() {
    }

    public static String getCurrentTimezoneID() {
        return TimeZone.getDefault().getID();
    }

    public static int getJulianDayFromMillis(long millis, long gmtOff) {
        if (gmtOff == 32400 && millis == -1) {
            return 2440132;
        }
        if (millis < 0) {
            millis -= 86399999;
        }
        return ((int) ((millis + (gmtOff * 1000)) / 86400000)) + Time.EPOCH_JULIAN_DAY;
    }
}
