package com.samsung.android.weather.entity.observation;

import com.samsung.android.weather.entity.condition.Condition;
import com.samsung.android.weather.entity.location.Time;

public class CurrentObservation extends AbsObservation<Condition, AbsObservation.Param> {

    public static class Builder extends com.samsung.android.weather.entity.observation.AbsObservation.Builder<CurrentObservation> {
        private Param param = new Param();

        public CurrentObservation build() {
            return new CurrentObservation(this.param);
        }

        public Builder setCondition(Condition condition) {
            this.param.condition = condition;
            return this;
        }

        public Builder setTime(Time time) {
            this.param.time = time;
            return this;
        }

        public Builder setWebUrl(String str) {
            this.param.webUrl = str;
            return this;
        }
    }

    private CurrentObservation(Param param) {
        super(param);
    }

    public Condition getCondition() {
        return (Condition) this.O.condition;
    }

    public Param getParam() {
        return this.O;
    }

    public String toString() {
        return "CurrentObservation {" + (this.O != null ? this.O.toString() : "") + '\'' + '}';
    }
}
