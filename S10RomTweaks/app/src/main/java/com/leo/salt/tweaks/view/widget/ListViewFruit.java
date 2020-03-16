package com.leo.salt.tweaks.view.widget;

import android.graphics.drawable.Drawable;


public class ListViewFruit {


        private String[] name;
        private String[] Summary;
        private Drawable[] imageId;

        public ListViewFruit(String name[],String summary[], Drawable imageId[]) {
            this.name = name;
            this.imageId = imageId;
            this.Summary = summary;
        }

        public String[] getName() {
            return name;
        }

        public void setName(String name[]) {
            this.name= name;
        }
    public String[] getSummary() {
        return Summary;
    }

    public void setSummary(String name[]) {
        this.Summary= name;
    }

        public Drawable[] getImageId() {
            return imageId;
        }

        public void setImageId(Drawable imageId[]) {
            this.imageId = imageId;
        }

}
