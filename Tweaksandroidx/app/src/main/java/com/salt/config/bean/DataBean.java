package com.salt.config.bean;

import android.graphics.drawable.Drawable;
public class DataBean {
    public Drawable icon;
    public String Title;
    public String Sumarry;

    public DataBean(Drawable drawable,String title, String sumarry){
        icon = drawable;
        Title = title;
        Sumarry= sumarry;
    }
    public DataBean(Drawable drawable,String title){
        icon = drawable;
        Title = title;
    }


    public String getSaltTitle() {
        return Title;
    }
    public String getSaltSumarry() {
        return Sumarry;
    }
    public Drawable getSaltDrawable() {
        return icon;
    }
}
