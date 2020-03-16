package com.samsung.android.weather.entity.observation;

import com.samsung.android.weather.entity.condition.Condition;

public class HourlyObservation extends AbsObservation<Condition, AbsObservation.Param> {

    public static class Builder extends com.samsung.android.weather.entity.observation.AbsObservation.Builder<HourlyObservation> {
        Param O;

        public Builder(Param param) {
            this.O = param;
        }

        public HourlyObservation build() {
            return new HourlyObservation(this.O);
        }
    }

    private HourlyObservation(Param param) {
        super(param);
    }

    public Condition getCondition() {
        return (Condition) this.O.condition;
    }

    public Param getParam() {
        return this.O;
    }

    public String toString() {
        return "HourlyObservation {" + (this.O != null ? this.O.toString() : "") + '\'' + '}';
    }
}
