package com.samsung.android.weather.entity.location;

public class Location {
    public static final String KEY_CURRENT_LOCATION = "cityId:current";
    Param L;

    public static class Builder {
        Param L = new Param();

        public Location build() {
            return new Location(this.L);
        }

        public Builder setCityName(String str) {
            this.L.cityName = str;
            return this;
        }

        public Builder setCountryName(String str) {
            this.L.countryName = str;
            return this;
        }

        public Builder setId(String str) {
            this.L.id = str;
            return this;
        }

        public Builder setKey(String str) {
            this.L.key = str;
            return this;
        }

        public Builder setLatitude(String str) {
            this.L.latitude = str;
            return this;
        }

        public Builder setLongitude(String str) {
            this.L.longitude = str;
            return this;
        }

        public Builder setOldKey(String str) {
            this.L.oldKey = str;
            return this;
        }

        public Builder setPriority(int i) {
            this.L.priority = i;
            return this;
        }

        public Builder setStateName(String str) {
            this.L.stateName = str;
            return this;
        }
    }

    static class Param {
        String cityName;
        String countryName;
        String id;
        String key;
        String latitude;
        String longitude;
        String oldKey;
        int priority;
        String stateName;

        Param() {
        }

        public String toString() {
            return "key/id=" + this.key + '/' + this.id + '\'' + ", city=" + this.cityName + ", state=" + this.stateName + ", country=" + this.countryName + '\'';
        }
    }

    private Location(Param param) {
        this.L = param;
    }

    public String getCityName() {
        return this.L.cityName;
    }

    public String getCountryName() {
        return this.L.countryName;
    }

    public String getId() {
        return this.L.id;
    }

    public String getKey() {
        return this.L.key;
    }

    public String getLatitude() {
        return this.L.latitude;
    }

    public String getLongitude() {
        return this.L.longitude;
    }

    public String getOldKey() {
        return this.L.oldKey;
    }

    public int getPriority() {
        return this.L.priority;
    }

    public String getStateName() {
        return this.L.stateName;
    }

    public boolean isCurrentLocation() {
        return KEY_CURRENT_LOCATION.equals(this.L.key);
    }

    public boolean isKeyChanged() {
        String oldKey = getOldKey();
        String key = getKey();
        return (oldKey == null || oldKey.length() == 0 || key == null || key.length() == 0 || oldKey.equals(key)) ? false : true;
    }

    public void setCityName(String str) {
        this.L.cityName = str;
    }

    public void setCountryName(String str) {
        this.L.countryName = str;
    }

    public void setCurrentLocation() {
        this.L.key = KEY_CURRENT_LOCATION;
    }

    public void setId(String str) {
        this.L.id = str;
    }

    public void setKey(String str) {
        this.L.key = str;
    }

    public void setLatitude(String str) {
        this.L.latitude = str;
    }

    public void setLongitude(String str) {
        this.L.longitude = str;
    }

    public void setOldKey(String str) {
        this.L.oldKey = str;
    }

    public void setPriority(int i) {
        this.L.priority = i;
    }

    public void setStateName(String str) {
        this.L.stateName = str;
    }

    public String toString() {
        return "Location {" + (this.L != null ? this.L.toString() + ", isCurrentLocation='" + isCurrentLocation() + '\'' : "") + '\'' + '}';
    }
}
