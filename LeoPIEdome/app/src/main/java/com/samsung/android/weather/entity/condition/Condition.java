package com.samsung.android.weather.entity.condition;



import java.util.List;

public class Condition extends AbsCondition<Index.Param> {

    public static class Builder extends com.samsung.android.weather.entity.condition.AbsCondition.Builder<Condition> {
        private Param C = new Param();

        public Condition build() {
            return new Condition(this.C);
        }

        public Builder setExternalCode(int i) {
            this.C.externalCode = i;
            return this;
        }

        public Builder setFeelsLikeTemp(float f) {
            this.C.feelsLikeTemp = f;
            return this;
        }

        public Builder setIndexList(List<Index> list) {
            this.C.indexList = list;
            return this;
        }

        public Builder setInternalCode(int i) {
            this.C.internalCode = i;
            return this;
        }

        public Builder setMaxTemp(float f) {
            this.C.maxTemp = f;
            return this;
        }

        public Builder setMinTemp(float f) {
            this.C.minTemp = f;
            return this;
        }

        public Builder setTemp(float f) {
            this.C.temp = f;
            return this;
        }

        public Builder setWeatherText(String str) {
            this.C.weatherText = str;
            return this;
        }

        public Builder setYesterdayMaxTemp(float f) {
            this.C.yesterdayMaxTemp = f;
            return this;
        }

        public Builder setYesterdayMinTemp(float f) {
            this.C.yesterdayMinTemp = f;
            return this;
        }
    }

    protected Condition(Param param) {
        super(param);
    }

    public Param getParam() {
        return this.C;
    }

    public String toString() {
        return "Condition{'" + (this.C != null ? this.C.toString() : "") + '\'' + '}';
    }
}
