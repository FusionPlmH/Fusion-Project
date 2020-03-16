package com.leo.global.tools;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.leo.global.tweaks.R;
import com.leo.global.tweaks.base.BaseCollapsingToolbarActivity;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class PingActivity extends BaseCollapsingToolbarActivity implements View.OnClickListener {

    private static final int msgKey1 = 1;
    private static final String pingRes = "pingRes";

    private static String startPingStr;
    private static String stopLastPingStr;
    private static String stopPingStr;
    private static String exitPingStr;
    private static String failPingStr;
    private static String cannotReachStr;
    private static String finishPingStr;
    private static String timeOutStr;

    private AutoCompleteTextView ipaddr_etxt;
    private Button start_btn, cancel_btn;
    private TextView show_txt;
    private Toast tst;

    volatile boolean pingIsAlive;
    @Override
    protected int initLayout() {
        return R.layout.activity_ping;

    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }



    @Override
    protected int initCollapsingTextText() {
        return R.string.show_dsp_sumarry;
    }


    @Override
    public void onClick(View v) {

    }
}
