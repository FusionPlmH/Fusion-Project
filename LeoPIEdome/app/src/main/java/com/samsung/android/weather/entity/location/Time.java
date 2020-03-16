package com.samsung.android.weather.entity.location;

public class Time {
    public static final int DAY = 1;
    public static final int NIGHT = 2;
    public static final long ONE_DAY = 86400000;
    public static final int UNSPECIFIED = 3;
    Param T;

    public static class Builder {
        Param T = new Param();

        public Time build() {
            return new Time(this.T);
        }

        public Builder setDST(boolean z) {
            this.T.isDST = z;
            return this;
        }

        public Builder setDayOrNight(int i) {
            this.T.isDayOrNight = i;
            return this;
        }

        public Builder setEpochTime(long j) {
            this.T.epochTime = j;
            return this;
        }

        public Builder setSunRiseTime(long j) {
            this.T.sunRiseTime = j;
            return this;
        }

        public Builder setSunSetTime(long j) {
            this.T.sunSetTime = j;
            return this;
        }

        public Builder setTimeZone(String str) {
            this.T.timeZone = str;
            return this;
        }

        public Builder setUpdateTime(long j) {
            this.T.updateTime = j;
            return this;
        }
    }

    static class Param {
        long epochTime;
        boolean isDST;
        int isDayOrNight = 3;
        long sunRiseTime;
        long sunSetTime;
        String timeZone;
        long updateTime;

        Param() {
        }

        public String toString() {
            return "eTime=" + this.epochTime + ", zone=" + this.timeZone + ", dst=" + this.isDST + ", updateTime=" + this.updateTime + ", day/night=" + this.isDayOrNight + '\'';
        }
    }

    private Time(Param param) {
        this.T = param;
    }

    public static int checkDayOrNight(long j, long j2, long j3) {
        if (0 == j || 0 == j2 || 0 == j3) {
            return 3;
        }
        long j4 = j % ONE_DAY;
        long j5 = j2 % ONE_DAY;
        long j6 = j3 % ONE_DAY;
        return j5 < j6 ? (j5 >= j4 || j4 > j6) ? 2 : 1 : (j6 >= j4 || j4 > j5) ? 1 : 2;
    }

    public int getDayOrNight() {
        return this.T.isDayOrNight;
    }

    public long getEpochTime() {
        return this.T.epochTime;
    }

    public long getSunRiseTime() {
        return this.T.sunRiseTime;
    }

    public long getSunSetTime() {
        return this.T.sunSetTime;
    }

    public String getTimeZone() {
        return this.T.timeZone;
    }

    public long getUpdateTime() {
        return this.T.updateTime;
    }

    public boolean isDST() {
        return this.T.isDST;
    }

    public int isDayOrNight(long j) {
        if (3 != this.T.isDayOrNight) {
            return this.T.isDayOrNight;
        }
        return checkDayOrNight(j, this.T.sunRiseTime, this.T.sunSetTime);
    }

    public String toString() {
        return "Time{" + (this.T != null ? this.T.toString() : "") + '\'' + '}';
    }
}
