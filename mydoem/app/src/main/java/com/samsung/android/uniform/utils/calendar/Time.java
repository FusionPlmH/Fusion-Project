package com.samsung.android.uniform.utils.calendar;

import android.annotation.SuppressLint;
import com.samsung.android.uniform.utils.LocaleUtils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class Time extends AbstractCommonTime<Time> {
    public static final int EPOCH_JULIAN_DAY = 2440588;
    public static final int FRIDAY = 5;
    public static final int HOUR = 3;
    public static final int MINUTE = 2;
    public static final int MONDAY = 1;
    public static final int MONTH = 5;
    public static final int MONTH_DAY = 4;
    public static final int SATURDAY = 6;
    public static final int SECOND = 1;
    public static final int SUNDAY = 0;
    private static final String TAG = "STime";
    public static final int THURSDAY = 4;
    public static final String TIMEZONE_UTC = "UTC";
    public static final int TUESDAY = 2;
    public static final int WEDNESDAY = 3;
    public static final int WEEK_DAY = 7;
    public static final int WEEK_NUM = 9;
    public static final int YEAR = 6;
    public static final int YEAR_DAY = 8;
    private boolean mAllDay;
    private Calendar mCalendar;
    private long mGMTOff;
    private int mHour;
    private final android.text.format.Time mInnerTimeImpl;
    private int mIsDst;
    private int mMinute;
    private int mMonth;
    private int mMonthDay;
    private int mSecond;
    private String mTimeZoneID;
    private int mWeekDay;
    private int mYear;
    private int mYearDay;

    public Time() {
        this(AbstractCommonTime.getCurrentTimezoneID());
    }

    public Time(String timezoneId) {
        this(newInnerTime(timezoneId));
    }

    public Time(Time other) {
        this(new android.text.format.Time(other.mInnerTimeImpl));
    }

    private Time(android.text.format.Time other) {
        this.mIsDst = -1;
        this.mInnerTimeImpl = other;
        copyFieldsFromInnerTimeImpl();
    }

    private static android.text.format.Time newInnerTime(String timezoneId) {
        return new android.text.format.Time(timezoneId);
    }

    public Time copy() {
        return new Time(this);
    }

    private void copyFieldsFromInnerTimeImpl() {
        copyTimeFieldsFrom(this.mInnerTimeImpl);
        this.mAllDay = this.mInnerTimeImpl.allDay;
        this.mTimeZoneID = this.mInnerTimeImpl.timezone;
        this.mYearDay = this.mInnerTimeImpl.yearDay;
        this.mWeekDay = this.mInnerTimeImpl.weekDay;
        this.mGMTOff = this.mInnerTimeImpl.gmtoff;
        this.mIsDst = this.mInnerTimeImpl.isDst;
    }

    private void copyTimeFieldsFrom(android.text.format.Time fromTime) {
        this.mYear = fromTime.year;
        this.mMonth = fromTime.month;
        this.mMonthDay = fromTime.monthDay;
        this.mHour = fromTime.hour;
        this.mMinute = fromTime.minute;
        this.mSecond = fromTime.second;
    }

    private void writeTimeFieldsTo(android.text.format.Time paramTime) {
        paramTime.year = this.mYear;
        paramTime.month = this.mMonth;
        paramTime.monthDay = this.mMonthDay;
        paramTime.hour = this.mHour;
        paramTime.minute = this.mMinute;
        paramTime.second = this.mSecond;
    }

    private void writeFieldsToInnerTimeImpl() {
        ensureAllDayField();
        writeTimeFieldsTo(this.mInnerTimeImpl);
        this.mInnerTimeImpl.allDay = this.mAllDay;
        this.mInnerTimeImpl.timezone = this.mTimeZoneID;
        this.mInnerTimeImpl.yearDay = this.mYearDay;
        this.mInnerTimeImpl.weekDay = this.mWeekDay;
        this.mInnerTimeImpl.gmtoff = this.mGMTOff;
        this.mInnerTimeImpl.isDst = this.mIsDst;
    }

    private void writeTimezoneToImpl() {
        this.mInnerTimeImpl.timezone = this.mTimeZoneID;
    }

    private void ensureAllDayField() {
        if (!this.mAllDay) {
            return;
        }
        if (this.mHour != 0 || this.mMinute != 0 || this.mSecond != 0) {
            this.mHour = 0;
            this.mMinute = 0;
            this.mSecond = 0;
        }
    }

    public Time addYear(int amount) {
        this.mYear += amount;
        getTimeInMillis();
        return this;
    }

    public Time addMonth(int amount) {
        this.mMonth += amount;
        getTimeInMillis();
        return this;
    }

    public Time addDay(int amount) {
        this.mMonthDay += amount;
        getTimeInMillis();
        return this;
    }

    public Time addHour(int amount) {
        this.mHour += amount;
        this.mAllDay = false;
        getTimeInMillis();
        return this;
    }

    public Time addMinute(int amount) {
        this.mMinute += amount;
        this.mAllDay = false;
        getTimeInMillis();
        return this;
    }

    public Time addSecond(int amount) {
        this.mSecond += amount;
        this.mAllDay = false;
        getTimeInMillis();
        return this;
    }

    public long getGMTOffSet() {
        return this.mGMTOff;
    }

    public int getYear() {
        return this.mYear;
    }

    public void setYear(int year) {
        this.mYear = year;
        writeFieldsToInnerTimeImpl();
    }

    public int getYearDay() {
        return this.mYearDay;
    }

    public void setYearDay(int yearDay) {
        this.mYearDay = yearDay;
        writeFieldsToInnerTimeImpl();
    }

    public int getWeekDay() {
        return this.mWeekDay;
    }

    public void setWeekDay(int weekDay) {
        this.mWeekDay = weekDay;
        writeFieldsToInnerTimeImpl();
    }

    public int getMonth() {
        return this.mMonth;
    }

    public void setMonth(int month) {
        this.mMonth = month;
        writeFieldsToInnerTimeImpl();
    }

    public int getMonthDay() {
        return this.mMonthDay;
    }

    public void setMonthDay(int monthDay) {
        this.mMonthDay = monthDay;
        writeFieldsToInnerTimeImpl();
    }

    public int getSecond() {
        return this.mSecond;
    }

    public void setSecond(int second) {
        this.mSecond = second;
        this.mAllDay = false;
        writeFieldsToInnerTimeImpl();
    }

    public int getMinute() {
        return this.mMinute;
    }

    public void setMinute(int minute) {
        this.mMinute = minute;
        this.mAllDay = false;
        writeFieldsToInnerTimeImpl();
    }

    public int getHour() {
        return this.mHour;
    }

    public void setHour(int hour) {
        this.mHour = hour;
        this.mAllDay = false;
        writeFieldsToInnerTimeImpl();
    }

    public boolean isInDST() {
        if (this.mIsDst == -1) {
            getTimeInMillis();
        }
        return this.mIsDst != 0;
    }

    public boolean isAllDay() {
        return this.mAllDay;
    }

    public void setAllDay(boolean allDay) {
        this.mAllDay = allDay;
        ensureAllDayField();
        writeFieldsToInnerTimeImpl();
    }

    public String getTimeZoneID() {
        return this.mTimeZoneID;
    }

    public void setTimeZoneID(String timeZoneID) {
        this.mTimeZoneID = timeZoneID;
        writeFieldsToInnerTimeImpl();
    }

    public void switchTimeZone(String timeZoneID) {
        writeFieldsToInnerTimeImpl();
        this.mInnerTimeImpl.switchTimezone(timeZoneID);
        copyFieldsFromInnerTimeImpl();
    }

    public int getJulianDay() {
        return AbstractCommonTime.getJulianDayFromMillis(getTimeInMillis(), getGMTOffSet());
    }

    public long setJulianDay(int julianDay) {
        long millis = ((long) (julianDay - EPOCH_JULIAN_DAY)) * 86400000;
        set(millis);
        this.mMonthDay += julianDay - AbstractCommonTime.getJulianDayFromMillis(millis, this.mGMTOff);
        if (millis >= 0) {
            this.mHour = 0;
            this.mMinute = 0;
            this.mSecond = 0;
        }
        return getTimeInMillis();
    }

    public int getWeekNumber() {
        writeFieldsToInnerTimeImpl();
        getTimeInMillis();
        copyFieldsFromInnerTimeImpl();
        return this.mInnerTimeImpl.getWeekNumber();
    }

    public boolean after(Time that) {
        return this.mInnerTimeImpl.after(that.mInnerTimeImpl);
    }

    public boolean before(Time that) {
        return this.mInnerTimeImpl.before(that.mInnerTimeImpl);
    }

    public int compareTo(Time that) {
        return android.text.format.Time.compare(this.mInnerTimeImpl, that.mInnerTimeImpl);
    }

    @SuppressLint({"SimpleDateFormat"})
    public String getFormattedStringFromPattern(String pattern) {
        return getFormattedStringFromPattern(new SimpleDateFormat(pattern));
    }

    public String getFormattedStringFromPattern(String pattern, Locale locale) {
        return getFormattedStringFromPattern(new SimpleDateFormat(pattern, locale));
    }

    private String getFormattedStringFromPattern(SimpleDateFormat simpleDateFormat) {
        Date date = new Date(getTimeInMillis());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(this.mTimeZoneID));
        return simpleDateFormat.format(date);
    }

    public String getRFC2445FormattedString() {
        StringBuilder builder = new StringBuilder(getFormattedStringFromPattern("yyyyMMdd'T'HHmmss", LocaleUtils.isArabic() ? Locale.US : Locale.getDefault()));
        if (TIMEZONE_UTC.equals(this.mTimeZoneID)) {
            builder.append('Z');
        }
        return builder.toString();
    }

    public void set(int monthDay, int month, int year) {
        writeFieldsToInnerTimeImpl();
        this.mInnerTimeImpl.set(monthDay, month, year);
        copyFieldsFromInnerTimeImpl();
    }

    public void set(int second, int minute, int hour, int monthDay, int month, int year) {
        writeFieldsToInnerTimeImpl();
        this.mInnerTimeImpl.set(second, minute, hour, monthDay, month, year);
        copyFieldsFromInnerTimeImpl();
    }

    public void set(long millis) {
        writeTimezoneToImpl();
        this.mInnerTimeImpl.set(millis);
        copyFieldsFromInnerTimeImpl();
    }

    public void set(Time that) {
        if (this != that) {
            this.mTimeZoneID = that.getTimeZoneID();
            writeTimezoneToImpl();
            this.mInnerTimeImpl.set(that.mInnerTimeImpl);
            copyFieldsFromInnerTimeImpl();
        }
    }

    public void setToNow() {
        this.mInnerTimeImpl.setToNow();
        copyFieldsFromInnerTimeImpl();
    }

    public boolean setFromRFC2445Format(String timeFormat) {
        try {
            String pattern = getPatternFromFormat(timeFormat);
            if (pattern == null) {
                return false;
            }
            if ("yyyyMMdd'T'HHmmss'Z'".equals(pattern)) {
                setTimeZoneID(TIMEZONE_UTC);
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern, Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone(this.mTimeZoneID));
            set(simpleDateFormat.parse(timeFormat).getTime());
            return true;
        } catch (ParseException e) {
            return false;
        }
    }

    private String getPatternFromFormat(String format) {
        if (format.matches(RFC2445FORMAT_RE_DATE_TIME_UTC_PATTERN.pattern())) {
            return "yyyyMMdd'T'HHmmss'Z'";
        }
        if (format.matches(RFC2445FORMAT_RE_DATE_TIME_PATTERN.pattern())) {
            return "yyyyMMdd'T'HHmmss";
        }
        if (format.matches(RFC2445FORMAT_RE_DATE_PATTERN.pattern())) {
            return "yyyyMMdd";
        }
        return null;
    }

    public int getActualMaximum(int field) {
        return this.mInnerTimeImpl.getActualMaximum(field);
    }

    public int getActualMinimum(int field) {
        switch (field) {
            case 1:
            case 2:
            case 3:
            case 5:
            case 7:
            case 8:
                return 0;
            case 4:
                return 1;
            case 6:
                return 1901;
            case WEEK_NUM /*9*/:
                throw new RuntimeException("WEEK_NUM not implemented");
            default:
                throw new RuntimeException("bad field=" + field);
        }
    }

    public void clear() {
        writeFieldsToInnerTimeImpl();
        this.mInnerTimeImpl.clear(TIMEZONE_UTC);
        copyFieldsFromInnerTimeImpl();
    }

    public long getTimeInMillis() {
        writeFieldsToInnerTimeImpl();
        long timeInMillis = this.mInnerTimeImpl.normalize(true);
        Calendar calendar = setCalendarFromFields();
        if (timeInMillis == -1) {
            timeInMillis = adjustFieldViaCalendar(calendar);
        } else {
            calendar.setTimeInMillis(timeInMillis);
        }
        copyFieldsFromInnerTimeImpl();
        return timeInMillis;
    }

    private Calendar setCalendarFromFields() {
        if (this.mCalendar == null) {
            this.mCalendar = Calendar.getInstance();
        }
        this.mCalendar.clear();
        this.mCalendar.setTimeZone(TimeZone.getTimeZone(this.mTimeZoneID));
        this.mCalendar.set(this.mYear, this.mMonth, this.mMonthDay, this.mHour, this.mMinute, this.mSecond);
        return this.mCalendar;
    }

    private long adjustFieldViaCalendar(Calendar calendar) {
        long millis = calendar.getTimeInMillis();
        this.mInnerTimeImpl.set(millis);
        return millis;
    }

    public android.text.format.Time getInnerTime() {
        return this.mInnerTimeImpl;
    }

    public String toString() {
        return String.format("Time:%04d-%02d-%02d %02d:%02d:%02d AllDay:%s inDst:%s TZ_ID:%s GMTOff:%d", new Object[]{Integer.valueOf(this.mYear), Integer.valueOf(this.mMonth + 1), Integer.valueOf(this.mMonthDay), Integer.valueOf(this.mHour), Integer.valueOf(this.mMinute), Integer.valueOf(this.mSecond), Boolean.valueOf(this.mAllDay), Integer.valueOf(this.mIsDst), this.mTimeZoneID, Long.valueOf(this.mGMTOff / 3600)});
    }
}
