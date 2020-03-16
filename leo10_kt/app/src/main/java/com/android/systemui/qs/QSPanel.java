package com.android.systemui.qs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.AlarmManager.AlarmClockInfo;
import android.content.BroadcastReceiver;
import android.content.Context;

import android.content.res.Configuration;
import android.util.AttributeSet;

import android.widget.LinearLayout;

import com.android.systemui.statusbar.policy.QSClock;
import com.android.systemui.statusbar.policy.QSDate;

import qs.src.com.android.systemui.qs.QSDateClock;


public class QSPanel extends LinearLayout {


    public QSPanel(Context context) {
        super(context);
        refreshQSPanelClock();
    }
    protected QSDateClock mQSDateClock;


    public void refreshQSPanelClock(){
       QSClock qsClock = (QSClock) this.mQSDateClock.findViewWithTag("qs_header_clock_landscape");
        qsClock.updateClock();
        QSDate qsDate = (QSDate) this.mQSDateClock.findViewWithTag("qs_panel_date");
        qsDate.updateDate();
    }

}
