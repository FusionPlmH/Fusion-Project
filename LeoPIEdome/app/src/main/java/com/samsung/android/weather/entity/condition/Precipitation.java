package com.samsung.android.weather.entity.condition;

public class Precipitation {
    Param P;

    public static class Builder {
        Param P = new Param();

        public Precipitation build() {
            return new Precipitation(this.P);
        }

        public Builder setHailAmount(double d) {
            this.P.hailAmount = d;
            return this;
        }

        public Builder setHailProbability(int i) {
            this.P.hailProbability = i;
            return this;
        }

        public Builder setPrecipitationAmount(double d) {
            this.P.precipitationAmount = d;
            return this;
        }

        public Builder setPrecipitationProbability(int i) {
            this.P.precipitationProbability = i;
            return this;
        }

        public Builder setRainAmount(double d) {
            this.P.rainAmount = d;
            return this;
        }

        public Builder setRainProbability(int i) {
            this.P.rainProbability = i;
            return this;
        }

        public Builder setSnowAmount(double d) {
            this.P.snowAmount = d;
            return this;
        }

        public Builder setSnowProbability(int i) {
            this.P.snowProbability = i;
            return this;
        }
    }

    static class Param {
        double hailAmount;
        int hailProbability;
        double precipitationAmount;
        int precipitationProbability;
        double rainAmount;
        int rainProbability;
        double snowAmount;
        int snowProbability;

        Param() {
        }

        public String toString() {
            return ", precipitationProbability=" + this.precipitationProbability + ' ' + ", precipitationAmount=" + this.precipitationAmount + '\'';
        }
    }

    public static class TYPE {
        public static final int HAIL = 3;
        public static final int RAIN = 1;
        public static final int REPRESENTATION = 0;
        public static final int SNOW = 2;
    }

    private Precipitation(Param param) {
        this.P = param;
    }

    public double getAmount() {
        switch (getProbabilityType()) {
            case TYPE.REPRESENTATION /*0*/:
                return this.P.precipitationAmount;
            case 1:
                return this.P.rainAmount;
            case 2:
                return this.P.snowAmount;
            case 3:
                return this.P.hailAmount;
            default:
                return this.P.precipitationAmount;
        }
    }

    public double getHailAmount() {
        return this.P.hailAmount;
    }

    public int getHailProbability() {
        return this.P.hailProbability;
    }

    public double getPrecipitationAmount() {
        return this.P.precipitationAmount;
    }

    public int getPrecipitationProbability() {
        return this.P.precipitationProbability;
    }

    public int getProbability() {
        switch (getProbabilityType()) {
            case TYPE.REPRESENTATION /*0*/:
                return this.P.precipitationProbability;
            case 1:
                return this.P.rainProbability;
            case 2:
                return this.P.snowProbability;
            case 3:
                return this.P.hailProbability;
            default:
                return this.P.precipitationProbability;
        }
    }

    public int getProbabilityType() {
        return (this.P.rainProbability == 0 || this.P.snowProbability == 0 || this.P.hailProbability == 0) ? (this.P.rainProbability == 0 || this.P.snowProbability == 0) ? (this.P.rainProbability == 0 || this.P.hailProbability == 0) ? (this.P.snowProbability == 0 || this.P.hailProbability == 0) ? this.P.rainProbability != 0 ? 1 : this.P.snowProbability != 0 ? 2 : this.P.hailProbability != 0 ? 3 : 0 : 0 : 0 : 0 : 0;
    }

    public double getRainAmount() {
        return this.P.rainAmount;
    }

    public int getRainProbability() {
        return this.P.rainProbability;
    }

    public double getSnowAmount() {
        return this.P.snowAmount;
    }

    public int getSnowProbability() {
        return this.P.snowProbability;
    }

    public String toString() {
        return "Precipitation{'" + (this.P != null ? this.P.toString() + ", getProbabilityType=" + getProbabilityType() + '\'' + ", getProbability=" + getProbability() + '\'' + ", getAmount=" + getAmount() + '\'' : "") + '\'' + '}';
    }
}
