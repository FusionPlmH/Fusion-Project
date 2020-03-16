package com.amber.leoservice.deviceinfo;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.icu.text.SimpleDateFormat;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.StatFs;
import android.os.SystemClock;

import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Display;

import android.widget.TextView;
import android.widget.Toast;
;

import com.amber.leoservice.R;




import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.util.Locale;




public class DeviceInfo {
    public static String setAlarmInfo(Context context) {
        String info;
        AlarmManager alarmManager = (AlarmManager)context.getSystemService(Context.ALARM_SERVICE);
        AlarmManager.AlarmClockInfo alarmClockInfo = alarmManager.getNextAlarmClock();
        if (alarmClockInfo != null) {
            long time = alarmClockInfo.getTriggerTime();

                info = new SimpleDateFormat(context.getResources().getString(R.string.leo_device_info_leodate), Locale.getDefault()).format(time);

        } else {
            info =context.getResources().getString(R.string.leo_device_info_alarm_no);
        }
        return info;
    }

    public static String setAlarmInfoDate(Context context) {
        String info;
        AlarmManager alarmManager = (AlarmManager)context.getSystemService(Context.ALARM_SERVICE);
        AlarmManager.AlarmClockInfo alarmClockInfo = alarmManager.getNextAlarmClock();
        if (alarmClockInfo != null) {
            long time = alarmClockInfo.getTriggerTime();

                info = new SimpleDateFormat(context.getResources().getString(R.string.leo_device_info_date), Locale.getDefault()).format(time);

        } else {
            info =context.getResources().getString(R.string.leo_device_info_alarm_no);
        }
        return info;
    }

}
