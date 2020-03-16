package com.android.fusionleo.statusbar;

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
import android.support.annotation.Nullable;
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
import com.android.fusionleo.global.LeoGlobalUtils;
import com.android.internal.util.MemInfoReader;
import com.android.leo.R;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Locale;

import static com.android.fusionleo.global.LeoGlobalUtils.*;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoUri;
import static com.android.fusionleo.global.LeoGlobalUtils.setLeoRomFonts;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoDeviceInfo;
import static com.android.fusionleo.global.LeoGlobalValues.getProperty;
import static com.android.fusionleo.global.LeoGlobalValues.*;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.*;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.*;


public class LeoPulldownDeviceInfo extends TextView {
    private Context mContext;
    public LeoPulldownDeviceInfo(Context context) {
        super(context);
        mContext=context;
    }
    public LeoPulldownDeviceInfo(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        mContext=context;
    }
    public  boolean  mDisplay;
    private LeoObserver mLeoObserver;
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver  contentResolver= getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfo()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoSize()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoStyle()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoStyleTwo()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoStyleThree()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoStyleFour()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoStyleFive()), false,this);
            contentResolver.registerContentObserver(getLeoUri( getLeoDeviceInfoFont()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoFontTwo()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoFontThree()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoFontFour()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoFontFive()), false,this);
            contentResolver.registerContentObserver(getLeoUri( getLeoDeviceInfoColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoColorTwo()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoColorThree()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoColorFour()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoColorFive()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoColorAll()), false,this);
            contentResolver.registerContentObserver(getLeoUri( getLeoDeviceInfoALLColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoCustomColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoArray()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoDeviceInfoOrientation()), false,this);
            contentResolver.registerContentObserver(getLeoUri( getLeoDeviceInfoRandomColor()), false,this);
        }

        @Override
        public void onChange(boolean selfChange) {
            myDeviceInfo();
        }

    }
    private void  myDeviceInfo() {
        LeoStatusSettings(mContext);
        mDisplay= setLeoUesrDeviceInfo ;
        if (mDisplay){
            setVisibility(TextView.VISIBLE);

        }else {
            setVisibility(TextView.GONE);
        }
       // int style=setLeoUesrDeviceInfoMulti;
        setDeviceInfo();
        int Gravity=setLeoUesrDeviceInfoOrientation;
        if ( Gravity == 0) {
            setGravity(1);
        } else if (Gravity == 1) {
            setGravity(8388613);
        } else if ( Gravity == 2) {
            setGravity(8388611);
        }
      //  setTypeface(setLeoRomFonts(0,setLeoUesrDeviceInfoFont));
        setTextSize(setLeoUesrDeviceInfoSize);
     //   setTextColor(setLeoUesrDeviceInfoColor);
        if (mDisplay){
            if (mHandler == null && getDisplay() != null) {
                mHandler = new Handler();
                if (getDisplay().getState() == Display.STATE_ON) {
                    mHandler.postAtTime(mTemperatureTick,
                            SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
                }
                IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_OFF);
                filter.addAction(Intent.ACTION_SCREEN_ON);
                getContext().registerReceiver(mTemperatureReceiver, filter);
            }
        }
    }
    private void setDeviceInfo() {
        setText("");
        if (getLeoOS().equals(getOnema())) {
            if (getCode() .equals(getOCodeN())) {
                if (getKernel() .equals(new String(new char[]{'F', 'u', 's', 'i', 'o', 'n', 'L', 'e', 'o'}))) {
         int defaultcolor=mNotificationPanelCarrierLabelColor;
        int onecolor=defaultcolor;
        int oneFont=setLeoUesrDeviceInfoFont;
        int oneStyle=setLeoUesrDeviceInfoStyle;
        int twocolor=defaultcolor;
        int twoFont=setLeoUesrDeviceInfoFontTwo;
        int twoStyle=setLeoUesrDeviceInfoStyleTwo;
        int threecolor=defaultcolor;
        int threeFont=setLeoUesrDeviceInfoFontThree;
        int threeStyle=setLeoUesrDeviceInfoStyleThree;
        int fourcolor=defaultcolor;
        int fourFont=setLeoUesrDeviceInfoFontFour;
        int fourStyle=setLeoUesrDeviceInfoStyleFour;
        int fivecolor=defaultcolor;
        int fiveFont=setLeoUesrDeviceInfoFontFive;
        int fiveStyle=setLeoUesrDeviceInfoStyleFive;

        int colorstyle=setLeoUesrDeviceInfoRandomColor;
        int colorrandom=getLeoRandomColor(mContext);
        int color=setLeoUesrDeviceInfoCustomColor;
        if(color==1){
            int all=setLeoUesrDeviceInfoColorAll;
            if (all==0) {
                if(colorstyle==0){
                    onecolor=setLeoUesrDeviceInfoColor;
                    twocolor=setLeoUesrDeviceInfoColorTwo;
                    threecolor=setLeoUesrDeviceInfoColorThree;
                    fourcolor=setLeoUesrDeviceInfoColorFour;
                    fivecolor=setLeoUesrDeviceInfoColorFive;
                }else if(colorstyle==1){
                    onecolor=colorrandom;
                    twocolor=colorrandom;
                    threecolor=colorrandom;
                    fourcolor=colorrandom;
                    fivecolor=colorrandom;
                }

            } else if ( all == 1) {
                int allcolor=setLeoUesrDeviceInfoALLColor;
                onecolor=allcolor;
                twocolor=allcolor;
                threecolor=allcolor;
                fourcolor=allcolor;
                fivecolor=allcolor;
            }
        }else if (color==0) {
            onecolor=defaultcolor;
            twocolor=defaultcolor;
            threecolor=defaultcolor;
            fourcolor=defaultcolor;
            fivecolor=defaultcolor;
        }


        int style= setLeoUesrDeviceInfoArray;
        if(style==1) {
            SpannableString one= new SpannableString(String.valueOf(setInfo(oneStyle)));
            one.setSpan(new ForegroundColorSpan(onecolor), 0, one.length(), 33);
            one.setSpan(new LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0, oneFont)), 0, one.length(), 33);
            append(one);
        }else if(style==2){
            SpannableString one= new SpannableString(String.valueOf(setInfo(oneStyle)));
            one.setSpan(new ForegroundColorSpan(onecolor), 0, one.length(), 33);
            one.setSpan(new  LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0, oneFont)), 0, one.length(), 33);
            append(one);
            append(mNewline);
            SpannableString two= new SpannableString(String.valueOf(setInfo(twoStyle)));
            two.setSpan(new ForegroundColorSpan(twocolor), 0, two.length(), 33);
            two.setSpan(new  LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0, twoFont)), 0, two.length(), 33);
            append(two);
        }else if(style==3){
            SpannableString one= new SpannableString(String.valueOf(setInfo(oneStyle)));
            one.setSpan(new ForegroundColorSpan(onecolor), 0, one.length(), 33);
            one.setSpan(new  LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0, oneFont)), 0, one.length(), 33);
            append(one);
            append(mNewline);
            SpannableString two= new SpannableString(String.valueOf(setInfo(twoStyle)));
            two.setSpan(new ForegroundColorSpan(twocolor), 0, two.length(), 33);
            two.setSpan(new  LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0, twoFont)), 0, two.length(), 33);
            append(two);
            append(mNewline);
            SpannableString three= new SpannableString(String.valueOf(setInfo(threeStyle)));
            three.setSpan(new ForegroundColorSpan(threecolor), 0, three.length(), 33);
            three.setSpan(new  LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0, threeFont)), 0, three.length(), 33);
            append(three);
        }
        else if(style==4){
            SpannableString one= new SpannableString(String.valueOf(setInfo(oneStyle)));
            one.setSpan(new ForegroundColorSpan(onecolor), 0, one.length(), 33);
            one.setSpan(new  LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0, oneFont)), 0, one.length(), 33);
            append(one);
            append(mNewline);
            SpannableString two= new SpannableString(String.valueOf(setInfo(twoStyle)));
            two.setSpan(new ForegroundColorSpan(twocolor), 0, two.length(), 33);
            two.setSpan(new  LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0, twoFont)), 0, two.length(), 33);
            append(two);
            append(mNewline);
            SpannableString three= new SpannableString(String.valueOf(setInfo(threeStyle)));
            three.setSpan(new ForegroundColorSpan(threecolor), 0, three.length(), 33);
            three.setSpan(new  LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0, threeFont)), 0, three.length(), 33);
            append(three);
            append(mNewline);
            SpannableString four= new SpannableString(String.valueOf(setInfo(fourStyle)));
            four.setSpan(new ForegroundColorSpan(fourcolor), 0, four.length(), 33);
            four.setSpan(new  LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0, fourFont)), 0, four.length(), 33);
            append(four);
            append(mNewline);
        }else if(style==5){
            SpannableString one= new SpannableString(String.valueOf(setInfo(oneStyle)));
            one.setSpan(new ForegroundColorSpan(onecolor), 0, one.length(), 33);
            one.setSpan(new  LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0, oneFont)), 0, one.length(), 33);
            append(one);
            append(mNewline);
            SpannableString two= new SpannableString(String.valueOf(setInfo(twoStyle)));
            two.setSpan(new ForegroundColorSpan(twocolor), 0, two.length(), 33);
            two.setSpan(new  LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0, twoFont)), 0, two.length(), 33);
            append(two);
            append(mNewline);
            SpannableString three= new SpannableString(String.valueOf(setInfo(threeStyle)));
            three.setSpan(new ForegroundColorSpan(threecolor), 0, three.length(), 33);
            three.setSpan(new  LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0, threeFont)), 0, three.length(), 33);
            append(three);
            append(mNewline);
            SpannableString four= new SpannableString(String.valueOf(setInfo(fourStyle)));
            four.setSpan(new ForegroundColorSpan(fourcolor), 0, four.length(), 33);
            four.setSpan(new  LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0, fourFont)), 0, four.length(), 33);
            append(four);
            append(mNewline);
            SpannableString five= new SpannableString(String.valueOf(setInfo(fiveStyle)));
            five.setSpan(new ForegroundColorSpan(fivecolor), 0, five.length(), 33);
            five.setSpan(new  LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0, fiveFont)), 0, five.length(), 33);
            append(five);
        }
    } else{
        Log.v(new String(new char[]{'作', '者', ':', '不', '咸', '的', '盐', '巴'}), AUTHOR);
    }
} else{
        Log.w(new String(new char[]{'A', 'M', 'B', 'E', 'R'}), "QQ：303834502");
                LeoCopyrightToast(mContext);
        }
        }
    }

    private String Android = "Android:";


    private String  Temperature= " ℃";

    private String setInfo(int style) {
        Intent batteryIntent = mContext.registerReceiver(null, new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
        int level = batteryIntent.getIntExtra(BatteryManager.EXTRA_LEVEL, -1);
        String info="";
        switch (style) {
            case 0:
                info ="Samsung Galaxy"+"("+Build.MODEL+")";
                break;
            case 1:
                info =Android+Build.VERSION.RELEASE;
                break;
            case 2:
                info =Build.DISPLAY;
                break;
            case 3:
                ConnectivityManager mConnectivityManager = (ConnectivityManager)  mContext.getSystemService(Context.CONNECTIVITY_SERVICE);
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) mContext.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected() || activeNetworkInfo.getType() != 1) {
                    info =mContext.getResources().getString(getLeoResource("string/leo_device_info_wifi_no"));
                    break;
                }
                NetworkInfo wifiInfo = mConnectivityManager.getNetworkInfo(ConnectivityManager.TYPE_WIFI);
                String wifiName = wifiInfo.getExtraInfo();
                if (wifiName.startsWith("\"")) {
                    wifiName = wifiName.substring(1, wifiName.length());
                }
                if (wifiName.endsWith("\"")) {
                    wifiName = wifiName.substring(0, wifiName.length() - 1);
                }

                WifiInfo connectionInfo = ((WifiManager) mContext.getSystemService("wifi")).getConnectionInfo();
                int calculateSignalLevel = WifiManager.calculateSignalLevel(connectionInfo.getRssi(), 10) * 10;
                int ipAddress = connectionInfo.getIpAddress();
                info=  wifiName + ","+mContext.getResources().getString(getLeoResource("string/leo_device_info_wifi_signal"))+" " + String.valueOf(calculateSignalLevel) + "%" + ", IP " + String.format(Locale.ENGLISH, "%d.%d.%d.%d", new Object[]{Integer.valueOf(ipAddress & 255), Integer.valueOf((ipAddress >> 8) & 255), Integer.valueOf((ipAddress >> 16) & 255), Integer.valueOf((ipAddress >> 24) & 255)});

                break;
            case 4:
                AlarmManager alarmManager = (AlarmManager) mContext.getSystemService(Context.ALARM_SERVICE);
                AlarmManager.AlarmClockInfo alarmClockInfo = alarmManager.getNextAlarmClock();
                if (alarmClockInfo != null) {
                    long time = alarmClockInfo.getTriggerTime();
                    info = new SimpleDateFormat(mContext.getResources().getString(getLeoResource("string/leo_device_info_leodate")), Locale.getDefault()).format(time);
                } else {
                    info =mContext.getResources().getString(getLeoResource("string/leo_device_info_alarm_no"));
                }
                break;
            case 5:
                info=geMyTemperature();
                break;
            case 6:
                info = RamEN+getTotalRam()+getmeminfo()+" "+mContext.getResources().getString(getLeoResource("string/leo_device_info_storage"))+getSDTotalSize()+"/"+getSDAvailableSize();
                break;
            case 7:

                assert batteryIntent != null;
                switch (batteryIntent.getIntExtra("status", BatteryManager.BATTERY_STATUS_UNKNOWN))
                {
                    case BatteryManager.BATTERY_STATUS_CHARGING:
                        BatteryStatus =getLeoStatus(0);
                        break;
                    case BatteryManager.BATTERY_STATUS_DISCHARGING:
                        BatteryStatus =getLeoStatus(1);
                        break;
                    case BatteryManager.BATTERY_STATUS_NOT_CHARGING:
                        BatteryStatus = getLeoStatus(2);
                        break;
                    case BatteryManager.BATTERY_STATUS_FULL:
                        BatteryStatus =getLeoStatus(3);
                        break;
                    case BatteryManager.BATTERY_STATUS_UNKNOWN:
                        BatteryStatus = getLeoStatus(4);
                        break;
                }

                switch (batteryIntent.getIntExtra("health", BatteryManager.BATTERY_HEALTH_UNKNOWN))
                {
                    case BatteryManager.BATTERY_HEALTH_UNKNOWN:
                        BatteryHealth =getLeoHealth(0);
                        break;
                    case BatteryManager.BATTERY_HEALTH_GOOD:
                        BatteryHealth =getLeoHealth(1);
                        break;
                    case BatteryManager.BATTERY_HEALTH_DEAD:
                        BatteryHealth =getLeoHealth(2);
                        break;
                    case BatteryManager.BATTERY_HEALTH_OVER_VOLTAGE:
                        BatteryHealth = getLeoHealth(3);
                        break;
                    case BatteryManager.BATTERY_HEALTH_OVERHEAT:
                        BatteryHealth= getLeoHealth(4);
                        break;
                }

                info =mContext.getResources().getString(getLeoResource("string/leo_device_info_state"))+BatteryStatus+" "+BatteryHealth;
                break;
            case 8:
                info =  getCPU();
                break;
            case 9:
                if (getCustomDateSystemVersion() .equals("qcom")) {
                    info = getCPUInfo();
                    // return;
                } else{
                    info = Build.HARDWARE;
                }
                break;
            case 10:
                info = getCpuMhz();
                break;
            case 11:
                info =mContext.getResources().getString(getLeoResource("string/leo_device_info_quantity"))+ String.valueOf(level) + "%"+" "+getBatteryCapacity(mContext);
                break;
            case 12:
                info =getVoltage()+" "+getCurrent();
                break;
        }
                    return info;




    }

    public static final String VOLTAGE_NOW =
            "/sys/class/power_supply/battery/voltage_now";
    public static final String CHARGER_CURRENT_NOW =
            "/sys/class/power_supply/battery/current_now";
    public  String getVoltage() {
        String result = "null";
        try {
            int voltage = readFile(VOLTAGE_NOW, 0) / 1000;
            result =getLeoCurrent(1)+ voltage + "mV";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    public  String getCurrent() {
        String result = "null";
        try {
            result =getLeoCurrent(0)+readCurrentFile(new File(CHARGER_CURRENT_NOW))+" mA";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;

    }

    public  String getLeoStatus(int i) {
        String TrafficDownload="";
        if(i==0){
            TrafficDownload=mContext.getResources().getString(getLeoResource("string/leo_battery_status_charge"));
        }else if(i==1){
            TrafficDownload=mContext.getResources().getString(getLeoResource("string/leo_battery_status_discharge"));
        }else if(i==2){
            TrafficDownload=mContext.getResources().getString(getLeoResource("string/leo_battery_status_charge_no"));
        }else if(i==3){
            TrafficDownload=mContext.getResources().getString(getLeoResource("string/leo_battery_status_full"));
        }else if(i==4){
            TrafficDownload=mContext.getResources().getString(getLeoResource("string/leo_battery_status_unknown"));
        }
        return TrafficDownload;
    }
    public  String getLeoHealth(int i) {
        String TrafficDownload="";
        if(i==0){
            TrafficDownload=mContext.getResources().getString(getLeoResource("string/leo_battery_health_unknown"));
        }else if(i==1){
            TrafficDownload=mContext.getResources().getString(getLeoResource("string/leo_battery_health_good"));
        }else if(i==2){
            TrafficDownload=mContext.getResources().getString(getLeoResource("string/leo_battery_health_no"));
        }else if(i==3){
            TrafficDownload=mContext.getResources().getString(getLeoResource("string/leo_battery_health_risk"));
        }else if(i==4){
            TrafficDownload=mContext.getResources().getString(getLeoResource("string/leo_battery_health_veryrisk"));
        }
        return TrafficDownload;
    }
    public String getLeoCurrent(int i) {
        String TrafficDownload="";
        if(i==0){
            TrafficDownload=mContext.getResources().getString(getLeoResource("string/leo_device_info_current"));
        }else if(i==1){
            TrafficDownload=mContext.getResources().getString(getLeoResource("string/leo_device_info_voltage"));
        }
        return TrafficDownload;
    }
    private String getSDTotalSize() {
        File path = Environment.getExternalStorageDirectory();
        StatFs stat = new StatFs(path.getPath());
        long blockSize = stat.getBlockSize();
        long totalBlocks = stat.getBlockCount();
        return Formatter.formatFileSize(mContext, blockSize * totalBlocks);
    }
    private String getSDAvailableSize() {
        File path = Environment.getExternalStorageDirectory();
        StatFs stat = new StatFs(path.getPath());
        long blockSize = stat.getBlockSize();
        long availableBlocks = stat.getAvailableBlocks();
        return Formatter.formatFileSize(mContext, blockSize * availableBlocks);
    }

    private long[] lastIdle = new long[CORES];
    private long[] lastTotal = new long[CORES];

    public String getCPU() {
        Throwable th;
        int[] iArr = new int[CORES];
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile("/proc/stat", "r");
            try {
                int i;
                randomAccessFile2.seek(0);
                randomAccessFile2.readLine();
                for (i = 0; i < CORES; i++) {
                    String str = "";
                    try {
                        str = randomAccessFile2.readLine();
                    } catch (Exception e) {
                    } catch (Throwable th2) {
                        th = th2;
                        randomAccessFile = randomAccessFile2;
                    }
                    try {
                        String[] split = str.split("[ ]+");
                        if (split[0].contains("cpu")) {
                            int parseInt = Integer.parseInt(split[0].replace("cpu", ""));
                            if (ReadFile("/sys/devices/system/cpu/cpu" + String.valueOf(parseInt) + "/online").equals("1")) {
                                iArr[parseInt] = cpuUsage(parseInt, split);
                            } else {
                                iArr[parseInt] = -1;
                            }
                        }
                    } catch (Exception e2) {
                    } catch (Throwable th22) {
                        th = th22;
                        randomAccessFile = randomAccessFile2;
                    }
                }
                String str2 = "";
                for (i = 0; i < CORES; i++) {
                    str2 = new StringBuilder(String.valueOf(iArr[i] == -1 ? new StringBuilder(String.valueOf(str2)).append(mContext.getResources().getString(getLeoResource("string/leo_device_info_idle"))).toString() : new StringBuilder(String.valueOf(str2)).append(String.valueOf(iArr[i])).append("%").toString())).append(" ").toString();
                }
                if (randomAccessFile2 != null) {
                    try {
                        randomAccessFile2.close();
                    } catch (Exception e3) {
                    }
                }
                randomAccessFile = randomAccessFile2;
                return str2;
            } catch (Exception e4) {
                randomAccessFile = randomAccessFile2;
            } catch (Throwable th222) {
                th = th222;
                randomAccessFile = randomAccessFile2;
            }
        } catch (Exception e5) {
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (Exception e6) {
                }
            }
            return "CPU usage error!";
        } catch (Throwable th3) {
            th = th3;
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (Exception e7) {
                }
            }
            try {
                throw th;
            } catch (Throwable throwable) {
                throwable.printStackTrace();
            }
        }
        return null;
    }

    private int cpuUsage(int i, String[] strArr) {
        long parseLong = Long.parseLong(strArr[4], 10);
        long j = 0;
        Object obj = 1;
        for (String str : strArr) {
            if (obj != null) {
                obj = null;
            } else {
                j += Long.parseLong(str, 10);
            }
        }
        long j2 = parseLong - this.lastIdle[i];
        long j3 = j - this.lastTotal[i];
        this.lastTotal[i] = j;
        this.lastIdle[i] = parseLong;
        return (int) ((((float) (j3 - j2)) / ((float) j3)) * 100.0f);
    }


    public static String getCPUInfo() {
        try {
            FileReader fileReader = new FileReader("/proc/cpuinfo");
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            String info;
            while ((info = bufferedReader.readLine()) != null) {
                String[] array = info.split(":");
                if(array[0].trim().equals("Hardware")) {
                    return array[1];
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
    private String getFrequencyText(int i) {
        if (!ReadFile("/sys/devices/system/cpu/cpu" + String.valueOf(i) + "/online").equals("1")) {
            return this.mContext.getResources().getString(getLeoResource("string/leo_device_info_idle"));
        }
        String str = "";
        try {
            str = RemoveLast(ReadFile("/sys/devices/system/cpu/cpu" + String.valueOf(i) + "/cpufreq/scaling_cur_freq"));
        } catch (Exception e) {
        }
        return str.equals("") ? this.mContext.getResources().getString(getLeoResource("string/leo_device_info_idle")) : new StringBuilder(String.valueOf(str)).append(this.mgz).toString();
    }


    private static final int CORES = Runtime.getRuntime().availableProcessors();
    protected String RemoveLast(String str) {
        return str.length() > 3 ? str.substring(0, str.length() - 3) : str;
    }
    private String cpuFreq ="CPU%1$s: %2$s";
    private String mgz = "MHz";

    public String getCpuMhz() {
        String str = "";
        if (CORES == 8) {
            return new StringBuilder(String.valueOf(String.format(this.cpuFreq, new Object[]{"0-3", getFrequencyText(0)}))).append(" ").append(String.format(this.cpuFreq, new Object[]{"4-7", getFrequencyText(4)})).toString();
        }
        for (int i = 0; i < CORES; i++) {
            str = new StringBuilder(String.valueOf(str)).append(getFrequencyText(i)).append(" ").toString();
        }
        return str;
    }

    private String BatteryStatus;   //电池状态
    private String BatteryHealth;
    private String geMyTemperature() {
        String  info;
        info=mContext.getResources().getString(getLeoResource("string/leo_battery_info")) + getBatteryTemperature(TemperatureType.Battery) + " "+ "CPU: " + getTemperature();
        return info;
    }
    enum TemperatureType {
        Battery,
        CPU

    }
    private float getBatteryTemperature() {
        return ((float) getContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")).getIntExtra("temperature", 0)) / 10.0f;
    }

    private float getExynosTemperature() {

        return Float.valueOf(ReadFile("/sys/class/thermal/thermal_zone0/temp")).floatValue()/ 1000.0f;
    }
    private float getQualcommemperature() {

        return Float.valueOf(ReadFile("/sys/class/thermal/thermal_zone12/temp")).floatValue()/ 10.0f;
    }
    public static String getCustomDateSystemVersion() {
        return getProperty( "ro.hardware");
    }
    private String getQualcommTemperature(TemperatureType temperatureType) {
        float f = 0.0f;
        if (temperatureType == TemperatureType.CPU) {
            f = getQualcommemperature();
        }

        return Math.round(f) + Temperature;
    }
    private String getBatteryTemperature(TemperatureType temperatureType) {
        float f = 0.0f;
        if (temperatureType == TemperatureType.Battery) {
            f = getBatteryTemperature();
        }

        return Math.round(f) +Temperature;
    }
    private String getExynosTemperature(TemperatureType temperatureType) {
        float f = 0.0f;
        if (temperatureType ==TemperatureType.CPU) {
            f = getExynosTemperature();
        }
        return Math.round(f) +Temperature;
    }
    private String getTemperature() {
        String S;
        if (getCustomDateSystemVersion() .equals("qcom")) {
            S=getQualcommTemperature(TemperatureType.CPU);;
            // return;
        } else{
            S=getExynosTemperature(TemperatureType.CPU);
        }

        return S;
    }


    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        myDeviceInfo();
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();

    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();

        if (mHandler != null) {
            getContext().unregisterReceiver(mTemperatureReceiver);
            mHandler.removeCallbacks(mTemperatureTick);
            mHandler = null;
            myDeviceInfo();
        }
    }

    public static String getTotalRam(){//GB
        String path = "/proc/meminfo";
        String firstLine = null;
        int totalRam = 0 ;
        try{
            FileReader fileReader = new FileReader(path);
            BufferedReader br = new BufferedReader(fileReader,8192);
            firstLine = br.readLine().split("\\s+")[1];
            br.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        if(firstLine != null){
            totalRam = (int)Math.ceil((new Float(Float.valueOf(firstLine) / (1024 * 1024)).doubleValue()));
        }

        return totalRam + "GB";//返回1GB/2GB/3GB/4GB
    }


    private Handler mHandler;




    private final BroadcastReceiver mTemperatureReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (Intent.ACTION_SCREEN_OFF.equals(action)) {
                if (mHandler != null) {
                    mHandler.removeCallbacks(mTemperatureTick);
                }
            } else if (Intent.ACTION_SCREEN_ON.equals(action)) {
                if (mHandler != null) {
                    mHandler.postAtTime(mTemperatureTick,
                            SystemClock.uptimeMillis() / 5000 * 5000 + 5000);
                }
            }
        }
    };

    private final Runnable mTemperatureTick = new Runnable() {
        @Override
        public void run() {

            myDeviceInfo();

            mHandler.postAtTime(this, SystemClock.uptimeMillis() / 5000 * 5000 + 5000);
        }
    };


    public String getmeminfo() {


       MemInfoReader memInfoReader = new MemInfoReader();

    memInfoReader.readMemInfo();
        long cachedSizeLegacy = memInfoReader.getCachedSizeLegacy() + memInfoReader.getFreeSize();

        return " / "+Formatter.formatShortFileSize(getContext(), cachedSizeLegacy);

    }


    private static String  capacityunit= " mAh";
    public  String getBatteryCapacity(Context context) {
        Object mPowerProfile;
        double batteryCapacity = 0;
        final String POWER_PROFILE_CLASS = "com.android.internal.os.PowerProfile";

        try {
            mPowerProfile = Class.forName(POWER_PROFILE_CLASS)
                    .getConstructor(Context.class)
                    .newInstance(context);

            batteryCapacity = (double) Class
                    .forName(POWER_PROFILE_CLASS)
                    .getMethod("getBatteryCapacity")
                    .invoke(mPowerProfile);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return String.valueOf(mContext.getResources().getString(getLeoResource("string/leo_device_info_capacity"))+batteryCapacity + capacityunit);
    }

}
