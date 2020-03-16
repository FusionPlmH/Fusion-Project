package com.samsung.android.uniform.utils.city;

import java.util.TimeZone;

public class City {
    public String country;
    public String name;
    public int nationalFlagCountryID;
    public int rawOffset;
    private TimeZone timeZone = null;
    public String timeZoneID;
    public int uniqueID;

    public City(String name, String country, String timeZoneID, int rawOffset, int uniqueID, int nationalFlagCountryID) {
        this.name = name;
        this.country = country;
        this.timeZoneID = timeZoneID;
        this.rawOffset = rawOffset;
        this.uniqueID = uniqueID;
        this.nationalFlagCountryID = nationalFlagCountryID;
        if (this.timeZone == null) {
            this.timeZone = TimeZone.getTimeZone(timeZoneID);
        }
        if (this.rawOffset == -1) {
            if (this.timeZone == null) {
                this.timeZone = TimeZone.getTimeZone(timeZoneID);
            }
            this.rawOffset = this.timeZone.getRawOffset();
        }
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getUniqueID() {
        return this.uniqueID;
    }

    public String getTimeZoneID() {
        return this.timeZoneID;
    }

    public int getRawOffsetMillis() {
        return this.rawOffset;
    }

    public int getLocalRawOffset() {
        if (this.rawOffset == -1) {
            if (this.timeZone == null) {
                this.timeZone = TimeZone.getTimeZone(this.timeZoneID);
            }
            this.rawOffset = this.timeZone.getRawOffset();
        }
        return this.rawOffset;
    }

    public TimeZone getTimeZone() {
        if (this.timeZone == null) {
            this.timeZone = TimeZone.getTimeZone(this.timeZoneID);
        }
        return this.timeZone;
    }

    public void setTimeZone(TimeZone timeZone) {
        this.timeZone = timeZone;
    }

    public String toString() {
        return "City{timeZone=" + this.timeZone + ", name='" + this.name + '\'' + ", country='" + this.country + '\'' + ", timeZoneID='" + this.timeZoneID + '\'' + ", rawOffset=" + this.rawOffset + ", uniqueID=" + this.uniqueID + ", nationalFlagCountryID=" + this.nationalFlagCountryID + '}';
    }
}
