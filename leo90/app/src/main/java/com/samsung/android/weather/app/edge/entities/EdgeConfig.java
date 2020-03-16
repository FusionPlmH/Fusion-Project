package com.samsung.android.weather.app.edge.entities;

import android.content.Context;
import android.util.Log;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class EdgeConfig {
    Param E;

    public static class Builder {
        Param P = new Param();

        private List<EdgeIndex> makeIndices(Context context) {

            return null;
        }

        public EdgeConfig build() {
            return new EdgeConfig(this.P);
        }

        public Builder setCityName(String str) {
            this.P.mCityName = str;
            return this;
        }



        public Builder setCpType(String str) {
            this.P.mCpType = str;
            return this;
        }

        public Builder setCurrentLocation(boolean z) {
            this.P.mIsCurrentLocation = z;
            return this;
        }



        public Builder setIsEmpty(boolean z) {
            this.P.mIsEmpty = z;
            return this;
        }

        public Builder setIsShowLoading(boolean z) {
            this.P.mIsShowLoading = z;
            return this;
        }



        public Builder setLayoutDirection(int i) {
            this.P.mLayoutDirection = i;
            return this;
        }

        public Builder setLocationOn(boolean z) {
            this.P.mIsLocationOn = z;
            return this;
        }

        public Builder setLocationService(int i) {
            this.P.mLocationService = i;
            return this;
        }

        public Builder setLottieRsc(String str) {
            this.P.mLottieRsc = str;
            return this;
        }

        public Builder setNetworkConnected(boolean z) {
            this.P.mIsNetworkdConnected = z;
            return this;
        }

        public Builder setRestoreMode(boolean z) {
            this.P.mIsRestoreMode = z;
            return this;
        }

        public Builder setTemp(Context context, float f, int i) {

            return this;
        }

        public Builder setTempFeelsLike(Context context, float f, int i) {

            return this;
        }

        public Builder setTempMax(Context context, float f, int i) {

            return this;
        }

        public Builder setTempMin(Context context, float f, int i) {

            return this;
        }

        public Builder setTempScale(int i) {
            this.P.mTempScale = i;
            return this;
        }



        public Builder setUrl(String str) {
            this.P.mUrl = str;
            return this;
        }
    }

    static class Param {
        String mCityName;

        String mCpType;
        List<EdgeIndex> mIndices;
        boolean mIsCurrentLocation;
        boolean mIsEmpty;
        boolean mIsLocationOn;
        boolean mIsNetworkdConnected;
        boolean mIsRestoreMode;
        boolean mIsShowLoading;
        String mLastUpdatedTime;
        int mLayoutDirection;
        int mLocationService;
        String mLottieRsc;
        String mTemp;
        String mTempFeelsLike;
        String mTempMax;
        String mTempMin;
        int mTempScale;

        String mUrl;

        Param() {
        }
    }

    private EdgeConfig(Param param) {
        this.E = param;
    }

    public String getCityName() {
        return this.E.mCityName;
    }



    public String getCpType() {
        return this.E.mCpType;
    }

    public List<EdgeIndex> getIndices() {
        return this.E.mIndices;
    }

    public String getLastUpdatedTime() {
        return this.E.mLastUpdatedTime;
    }

    public int getLayoutDirection() {
        return this.E.mLayoutDirection;
    }

    public int getLocationService() {
        return this.E.mLocationService;
    }

    public String getLottieRsc() {
        return this.E.mLottieRsc;
    }

    public String getTemp() {
        return this.E.mTemp;
    }

    public String getTempFeelsLike() {
        return this.E.mTempFeelsLike;
    }

    public String getTempMax() {
        return this.E.mTempMax;
    }

    public String getTempMin() {
        return this.E.mTempMin;
    }

    public int getTempScale() {
        return this.E.mTempScale;
    }



    public String getUrl() {
        return this.E.mUrl;
    }

    public boolean isCurrentLocation() {
        return this.E.mIsCurrentLocation;
    }

    public boolean isEmpty() {
        return this.E.mIsEmpty;
    }

    public boolean isLocationOn() {
        return this.E.mIsLocationOn;
    }

    public boolean isNetworkConnected() {
        return this.E.mIsNetworkdConnected;
    }

    public boolean isRestoreMode() {
        return this.E.mIsRestoreMode;
    }

    public boolean isShowLoading() {
        return this.E.mIsShowLoading;
    }

    public void setIsEmpty(boolean z) {
        this.E.mIsEmpty = z;
    }

    public void setIsLocationOn(boolean z) {
        this.E.mIsLocationOn = z;
    }

    public void setIsShowLoading(boolean z) {
        this.E.mIsShowLoading = z;
    }

    public void setLottieRsc(String str) {
        this.E.mLottieRsc = str;
    }

    public String toString() {
        return this.E != null ? "EdgeConfig {, mIsEmpty = " + this.E.mIsEmpty + ", mTempScale =" + this.E.mTempScale + ", mLocationService=" + this.E.mLocationService + ", mIsShowLoading=" + this.E.mIsShowLoading + ", mCityName=" + this.E.mCityName + ", mIndices=" + this.E.mIndices + ", mLastUpdatedTime=" + this.E.mLastUpdatedTime + ", mCondition=" +", mLottieRsc=" + this.E.mLottieRsc + '}' : "EdgeConfig is null.";
    }
}
