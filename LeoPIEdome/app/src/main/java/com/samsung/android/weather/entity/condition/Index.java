package com.samsung.android.weather.entity.condition;

public class Index {
    Param I;

    public static class Builder {
        Param I = new Param();

        public Index build() {
            return new Index(this.I);
        }

        public Builder setCategory(int i) {
            this.I.category = i;
            return this;
        }

        public Builder setLevel(int i) {
            this.I.level = i;
            return this;
        }

        public Builder setLevelText(String str) {
            this.I.levelText = str;
            return this;
        }

        public Builder setPriority(int i) {
            this.I.priority = i;
            return this;
        }

        public Builder setType(int i) {
            this.I.type = i;
            return this;
        }

        public Builder setUnit(String str) {
            this.I.unit = str;
            return this;
        }

        public Builder setValue(float f) {
            this.I.value = f;
            return this;
        }

        public Builder setWebUrl(String str) {
            this.I.webUrl = str;
            return this;
        }
    }

    static class Param {
        int category;
        int level;
        String levelText;
        int priority;
        int type;
        String unit;
        float value;
        String webUrl;

        Param() {
        }

        public String toString() {
            return ", type'" + this.type + ", category='" + this.category + ", level='" + this.level + ", levelText='" + this.levelText + ", value='" + this.value + '\'';
        }
    }

    private Index(Param param) {
        this.I = param;
    }

    public int getCategory() {
        return this.I.category;
    }

    public int getLevel() {
        return this.I.level;
    }

    public int getPriority() {
        return this.I.priority;
    }

    public String getText() {
        return this.I.levelText;
    }

    public int getType() {
        return this.I.type;
    }

    public String getUnit() {
        return this.I.unit;
    }

    public float getValue() {
        return this.I.value;
    }

    public String getWebUrl() {
        return this.I.webUrl;
    }

    public void setCategory(int i) {
        this.I.category = i;
    }

    public void setLevel(int i) {
        this.I.level = i;
    }

    public void setPriority(int i) {
        this.I.priority = i;
    }

    public void setText(String str) {
        this.I.levelText = str;
    }

    public void setType(int i) {
        this.I.type = i;
    }

    public void setUnit(String str) {
        this.I.unit = str;
    }

    public void setValue(float f) {
        this.I.value = f;
    }

    public void setWebUrl(String str) {
        this.I.webUrl = str;
    }

    public String toString() {
        return "Index {" + (this.I != null ? this.I.toString() : "") + '\'' + '}';
    }
}
