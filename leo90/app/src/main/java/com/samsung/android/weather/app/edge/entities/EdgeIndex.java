package com.samsung.android.weather.app.edge.entities;

public class EdgeIndex {
    Param I;

    public static class Builder {
        Param P = new Param();

        public EdgeIndex build() {
            return new EdgeIndex(this.P);
        }

        public Builder setDesc(String str) {
            this.P.mDesc = str;
            return this;
        }

        public Builder setIcon(int i) {
            this.P.mIcon = i;
            return this;
        }

        public Builder setLevel(int i) {
            this.P.mLevel = i;
            return this;
        }

        public Builder setTitleId(int i) {
            this.P.mTitleId = i;
            return this;
        }

        public Builder setType(int i) {
            this.P.mType = i;
            return this;
        }

        public Builder setValue(int i) {
            this.P.mValue = i;
            return this;
        }
    }

    static class Param {
        String mDesc;
        int mIcon;
        int mLevel;
        int mTitleId;
        int mType;
        int mValue;

        Param() {
        }
    }

    private EdgeIndex(Param param) {
        this.I = param;
    }

    public String getDesc() {
        return this.I.mDesc;
    }

    public int getIcon() {
        return this.I.mIcon;
    }

    public int getLevel() {
        return this.I.mLevel;
    }

    public int getTitleId() {
        return this.I.mTitleId;
    }

    public int getType() {
        return this.I.mType;
    }

    public int getValue() {
        return this.I.mValue;
    }

    public void setDesc(String str) {
        this.I.mDesc = str;
    }

    public void setIcon(int i) {
        this.I.mIcon = i;
    }

    public void setTitleId(int i) {
        this.I.mTitleId = i;
    }

    public void setType(int i) {
        this.I.mType = i;
    }

    public String toString() {
        return "EdgeIndex {mType =" + this.I.mType + ", mIcon=" + this.I.mIcon + ", mValue=" + this.I.mValue + ", mLevel=" + this.I.mLevel + ", mDesc=" + this.I.mDesc + '}';
    }
}
