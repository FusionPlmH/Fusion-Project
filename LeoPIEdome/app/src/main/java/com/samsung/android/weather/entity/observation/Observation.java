package com.samsung.android.weather.entity.observation;

import com.samsung.android.weather.entity.condition.Condition;
import com.samsung.android.weather.entity.location.Time;

public class Observation extends AbsObservation<Condition, AbsObservation.Param> {

    public static class Builder extends com.samsung.android.weather.entity.observation.AbsObservation.Builder<Observation> {
        protected Param O = new Param();

        public Observation build() {
            return new Observation(this.O);
        }

        public Builder setCondition(Condition condition) {
            this.O.condition = condition;
            return this;
        }

        public Builder setTime(Time time) {
            this.O.time = time;
            return this;
        }

        public Builder setWebUrl(String str) {
            this.O.webUrl = str;
            return this;
        }
    }

    private Observation(Param param) {
        super(param);
    }

    public Condition getCondition() {
        return (Condition) this.O.condition;
    }

    public Param getParam() {
        return this.O;
    }

    public String toString() {
        return "Observation {'" + (this.O != null ? this.O.toString() : "") + '\'' + '}';
    }
}
