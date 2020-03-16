package com.samsung.android.weather.entity.observation;

import com.samsung.android.weather.entity.location.Time;

abstract class AbsObservation<C, P> {
    protected Param O;

    public AbsObservation(DailyObservation.Param param) {
    }


    public static abstract class Builder<R> {
        public abstract R build();
    }

    static class Param<C> {
        public C condition;
        public Time time;
        public String webUrl;

        Param() {
        }

        public String toString() {
            return this.condition.toString() + '\'' + this.time.toString() + '\'';
        }
    }

    protected AbsObservation(Param param) {
        this.O = param;
    }

    public abstract C getCondition();

    public abstract P getParam();

    public Time getTime() {
        return this.O.time;
    }

    public String getWebUrl() {
        return this.O.webUrl;
    }

    public String toString() {
        return "Observation {'" + (this.O != null ? this.O.toString() : "") + '\'' + '}';
    }
}
