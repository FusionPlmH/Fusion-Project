package com.samsung.android.calendar.secfeature.holidays;

import android.text.format.Time;
import com.samsung.android.calendar.secfeature.BuildConfig;

public class HolidayData {
    private static final String DEFAULT_RRULE = "FREQ=YEARLY;UNTIL=20361231";
    private String mDescription;
    private Time mEndTime;
    private boolean mIsLunar;
    private boolean mIsRepeat;
    private String mRRule;
    private String mRedDateOffset;
    private Time mStartTime;
    private String mTitle;
    private int mYearForHoliday;

    public static class Builder {
        private String mDescription = BuildConfig.FLAVOR;
        private Time mEndTime;
        private boolean mIsLunar;
        private boolean mIsRepeat = true;
        private String mRRule = HolidayData.DEFAULT_RRULE;
        private String mRedDateOffset = "0";
        private Time mStartTime;
        private String mTitle;
        private int mYearForHoliday;

        public Builder yearForHoliday(int yearForHoliday) {
            this.mYearForHoliday = yearForHoliday;
            return this;
        }

        public Builder title(String title) {
            this.mTitle = title.trim();
            return this;
        }

        public Builder startDay(String startDay) {
            this.mStartTime = new Time();
            this.mStartTime.timezone = "UTC";
            this.mStartTime.parse3339(startDay.trim());
            return this;
        }

        public Builder endDay(String endDay) {
            this.mEndTime = new Time();
            this.mEndTime.timezone = "UTC";
            this.mEndTime.parse3339(endDay.trim());
            return this;
        }

        public Builder description(String description) {
            this.mDescription = description.trim();
            return this;
        }

        public Builder isLunar(boolean isLunar) {
            this.mIsLunar = isLunar;
            return this;
        }

        public Builder isRepeat(boolean isRepeat) {
            this.mIsRepeat = isRepeat;
            if (!isRepeat) {
                this.mRRule = BuildConfig.FLAVOR;
            }
            return this;
        }

        public Builder rRule(String rRule) {
            this.mRRule = rRule.trim();
            return this;
        }

        public Builder redOffset(String redOffset) {
            this.mRedDateOffset = redOffset.trim();
            return this;
        }

        public Builder startTime(Time startTime) {
            this.mStartTime = new Time();
            this.mStartTime.set(startTime);
            return this;
        }

        public HolidayData build() {
            return new HolidayData(this);
        }
    }

    private HolidayData(Builder builder) {
        this.mYearForHoliday = builder.mYearForHoliday;
        this.mTitle = builder.mTitle;
        this.mStartTime = builder.mStartTime;
        this.mEndTime = builder.mEndTime;
        this.mDescription = builder.mDescription;
        this.mIsLunar = builder.mIsLunar;
        this.mIsRepeat = builder.mIsRepeat;
        this.mRRule = builder.mRRule;
        this.mRedDateOffset = builder.mRedDateOffset;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public long getStartTimeInMillis() {
        return this.mStartTime.toMillis(true);
    }

    public String getDescription() {
        return this.mDescription;
    }

    public boolean isLunar() {
        return this.mIsLunar;
    }

    public boolean isRepeat() {
        return this.mIsRepeat;
    }

    public int getYearForHoliday() {
        return this.mYearForHoliday;
    }

    public Time getStartTime() {
        return this.mStartTime;
    }

    public Time getEndTime() {
        return this.mEndTime;
    }

    public String getRRule() {
        return this.mRRule;
    }

    public String getRedDateOffset() {
        return this.mRedDateOffset;
    }
}
