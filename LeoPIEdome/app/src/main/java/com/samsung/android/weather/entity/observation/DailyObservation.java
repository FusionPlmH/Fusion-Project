package com.samsung.android.weather.entity.observation;

import com.samsung.android.weather.entity.condition.Condition;

public class DailyObservation extends AbsObservation<Condition,AbsObservation.Param> {
    Param D;

    public static class DailyBuilder extends Builder<DailyObservation> {
        Param D = new Param();
        Param aParam;

        public DailyBuilder(Param param) {
            this.aParam = param;
        }

        public DailyObservation build() {
            return new DailyObservation(this.aParam, this.D);
        }

        public DailyBuilder setNightCondition(Condition condition) {
            this.D.nightCondition = condition;
            return this;
        }
    }

    static class Param extends AbsObservation.Param {
        Condition nightCondition;

        Param() {
        }

        public String toString() {
            return ", nightCondition='" + this.nightCondition + '\'';
        }
    }

    private DailyObservation(Param param, Param param2) {
        super(param);
        this.D = param2;
    }

    public Condition getCondition() {
        return (Condition) this.O.condition;
    }

    public Condition getCondition(boolean z) {
        return z ? (Condition) this.O.condition : this.D.nightCondition;
    }

    public Param getParam() {
        return null;
    }

    public String toString() {
        return "DailyObservation {" + this.O.toString() + '\'' + this.D.toString() + '\'' + '}';
    }
}
