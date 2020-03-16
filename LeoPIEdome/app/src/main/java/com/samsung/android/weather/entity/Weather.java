package com.samsung.android.weather.entity;

import com.samsung.android.weather.entity.location.Location;
import com.samsung.android.weather.entity.observation.CurrentObservation;
import com.samsung.android.weather.entity.observation.DailyObservation;
import com.samsung.android.weather.entity.observation.HourlyObservation;

import java.util.ArrayList;
import java.util.List;

public class Weather {
    private Param W;

    public static class Builder {
        private Param W = new Param();

        public Weather build() {
            return new Weather(this.W);
        }

        public Builder setCurrentObservation(CurrentObservation currentObservation) {
            this.W.currentObservation = currentObservation;
            return this;
        }

        public Builder setDailyObservations(List<DailyObservation> list) {
            this.W.dailyObservations = list;
            return this;
        }

        public Builder setHasIdx(String str) {
            this.W.hasIdx = str;
            return this;
        }

        public Builder setHourlyObservations(List<HourlyObservation> list) {
            this.W.hourlyObservations = list;
            return this;
        }

        public Builder setLocation(Location location) {
            this.W.location = location;
            return this;
        }

        public Builder setProviderName(String str) {
            this.W.providerName = str;
            return this;
        }

    }

    static class Param {
        CurrentObservation currentObservation;
        List<DailyObservation> dailyObservations = new ArrayList();
        String hasIdx;
        List<HourlyObservation> hourlyObservations = new ArrayList();
        Location location;
        String providerName;


        Param() {
        }

        public String toString() {
            return this.location.toString() + '\'' + "#" + '\'' + this.currentObservation.toString() + '\'' + "#" + '\'' + this.hourlyObservations.toString() + '\'' + "#" + '\'' + this.dailyObservations.toString() + '\'';
        }
    }

    private Weather(Param param) {
        this.W = param;
    }

    public CurrentObservation getCurrentObservation() {
        return this.W.currentObservation;
    }

    public List<DailyObservation> getDailyObservations() {
        return this.W.dailyObservations;
    }

    public String getHasIdx() {
        return this.W.hasIdx;
    }

    public List<HourlyObservation> getHourlyObservations() {
        return this.W.hourlyObservations;
    }

    public Location getLocation() {
        return this.W.location;
    }

    public String getProviderName() {
        return this.W.providerName;
    }


    public boolean supposeLifeIndex() {
        return "1".equals(this.W.hasIdx);
    }

    public String toString() {
        return "Weather {" + (this.W != null ? this.W.toString() : "") + '\'' + '}';
    }
}
