package com.salt.leokt10;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;

import com.android.settingslib.salt.SaltSystemUI;
import com.android.systemui.statusbar.salt.SaltAction;
import com.android.systemui.statusbar.salt.SaltAnalogClock;
import com.android.systemui.statusbar.salt.SaltBatteryBarController;
import com.android.systemui.statusbar.salt.SaltClock;
import com.android.systemui.statusbar.salt.SaltDeviceInfo;
import com.android.systemui.statusbar.salt.SaltKeyguardLunar;
import com.android.systemui.statusbar.salt.SaltKeyguardNextAlarm;
import com.android.systemui.statusbar.salt.SaltKeyguardWeather;
import com.android.systemui.statusbar.salt.SaltLogoView;
import com.android.systemui.statusbar.salt.SaltMainBattery;
import com.android.systemui.statusbar.salt.SaltNetworkTraffic;

import com.android.systemui.statusbar.salt.SaltStatusBarController;
import com.android.systemui.statusbar.salt.SaltTemp;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.provider.Settings;
import android.view.View;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        FloatingActionButton fab = findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                        .setAction("Action", null).show();
            }
        });

        ComponentName componetName = new ComponentName(
                "com.leo.salt",  //这个参数是另外一个app的包名
                "com.leo.service.WeatherService");   //这个是要启动的Service的全路径名



    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            cc();
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
    public void cc(){
        new SaltAction(this);
        new SaltAnalogClock(this);
        new SaltBatteryBarController(this,null);
        new SaltClock(this);
        new SaltDeviceInfo(this);
        new SaltKeyguardLunar(this);
        new SaltKeyguardNextAlarm(this);
        new SaltKeyguardWeather(this);
        new SaltLogoView(this);
        new SaltMainBattery(this);
        new SaltNetworkTraffic(this);
     //   new SaltNotificationPanelController(null);
        new SaltStatusBarController(this,null);
        new SaltTemp(this);

    }
}
