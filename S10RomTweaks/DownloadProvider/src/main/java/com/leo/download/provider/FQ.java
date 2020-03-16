package com.leo.download.provider;



import android.graphics.Color;
import android.os.Bundle;
import android.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;






public class FQ {
    private String name;
    private String OTA;
    private String  ChangeLog;
    private String  ROMName;
    private String  OtaPush;

    public FQ() {
        super();
    }
    public FQ(String name,String ota,String log,String Stop,String Push) {
        super();
        this.name = name;
        this. OTA= ota;
        this. ChangeLog= log;
        this. ROMName=Stop;
        this. OtaPush=Push;

    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getROMName() {
        return ROMName;
    }
    public void setROMName(String name) {
        this.ROMName = name;
    }


    public String getOTA() {
        return OTA;
    }
    public void setOTA(String ota) {
        this.OTA = ota;
    }

    public String getChangeLog() {
        return ChangeLog;
    }
    public void setChangeLog(String log) {
        this.ChangeLog = log;
    }


    public String getOtaPush() {
        return OtaPush;
    }
    public void setOtaPush(String Push) {
        this.OtaPush= Push;
    }



}
