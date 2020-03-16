package com.tweaks.salt.update;

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
    private String content;
    private String time;
    private String OTA;
    private String  ChangeLog;
    private String  OtaStopDate;
    private String  OtaPush;
    public FQ() {
        super();
    }
    public FQ(String name, String content, String time,String ota,String log,String Stop,String Push) {
        super();
        this.name = name;
        this.content = content;
        this.time = time;
        this. OTA= ota;
        this. ChangeLog= log;
        this. OtaStopDate=Stop;
        this. OtaPush=Push;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public String getTime() {
        return time;
    }
    public void setTime(String time) {
        this.time = time;
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

    public String getOtaStopDate() {
        return OtaStopDate;
    }
    public void setOtaStopDate(String Stop) {
        this.OtaStopDate = Stop;
    }

    public String getOtaPush() {
        return OtaPush;
    }
    public void setOtaPush(String Push) {
        this.OtaPush= Push;
    }

}
