package com.samsung.android.weather.entity.condition;

import java.util.ArrayList;
import java.util.List;

abstract class AbsCondition<P> {
    public static final int DEFAULT_TEMP = 999;
    public static final float DEFAULT_TEMP_F = 999.0f;
    protected Param C;

    public static abstract class Builder<R> {
        public abstract R build();
    }

    static class Param extends Index.Param {
        protected int externalCode;
        protected float feelsLikeTemp = 999.0f;
        protected List<Index> indexList = new ArrayList();
        protected int internalCode;
        protected float maxTemp = 999.0f;
        protected float minTemp = 999.0f;
        protected float temp = 999.0f;
        protected String weatherText;
        protected float yesterdayMaxTemp = 999.0f;
        protected float yesterdayMinTemp = 999.0f;

        Param() {
        }

        public String toString() {
            return "code=" + this.externalCode + '/' + this.internalCode + '\'' + ", temp=" + this.temp + '\'' + ", feels=" + this.feelsLikeTemp + '\'' + ", MinMaxTemp=" + this.minTemp + '/' + this.maxTemp + '\'' + ", yTemp=" + this.yesterdayMinTemp + '/' + this.yesterdayMaxTemp + '\'';
        }
    }

    protected AbsCondition(Param param) {
        this.C = param;
    }

    public boolean addIndex(Index index) {
        if (index == null) {
            return false;
        }
        Index index2 = null;
        for (Index index3 : this.C.indexList) {
            if (index3.getCategory() == index.getCategory() && index3.getType() == index.getType()) {
                index2 = index3;
                break;
            }
        }
        if (index2 == null) {
            this.C.indexList.add(index);
        }
        return true;
    }

    public int getExternalCode() {
        return this.C.externalCode;
    }

    public float getFeelsLikeTemp() {
        return this.C.feelsLikeTemp;
    }

    public Index getIndex(int i) {
        if (this.C.indexList != null) {
            for (Index index : this.C.indexList) {
                if (index.getType() == i) {
                    return index;
                }
            }
        }
        return null;
    }

    public Index getIndex(int i, int i2) {
        if (this.C.indexList != null) {
            for (Index index : this.C.indexList) {
                if (index.getCategory() == i && index.getType() == i2) {
                    return index;
                }
            }
        }
        return null;
    }

    public List<Index> getIndexList() {
        return this.C.indexList;
    }

    public List<Index> getIndexList(int i) {
        List<Index> arrayList = new ArrayList();
        if (this.C.indexList != null) {
            for (Index index : this.C.indexList) {
                if (index.getCategory() == i) {
                    arrayList.add(index);
                }
            }
        }
        return arrayList;
    }

    public int getInternalCode() {
        return this.C.internalCode;
    }

    public float getMaxTemp() {
        return this.C.maxTemp;
    }

    public float getMinTemp() {
        return this.C.minTemp;
    }

    public abstract P getParam();

    public float getTemp() {
        return this.C.temp;
    }

    public String getWeatherText() {
        return this.C.weatherText;
    }

    public float getYesterdayMaxTemp() {
        return this.C.yesterdayMaxTemp;
    }

    public float getYesterdayMinTemp() {
        return this.C.yesterdayMinTemp;
    }

    public void setTemp(float f) {
        this.C.temp = f;
    }

    public String toString() {
        return "AbsCondition{'" + (this.C != null ? this.C.toString() : "") + '\'' + '}';
    }
}
