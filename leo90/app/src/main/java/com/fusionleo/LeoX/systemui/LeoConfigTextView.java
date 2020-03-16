package com.fusionleo.LeoX.systemui;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.icu.util.Calendar;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.support.graphics.drawable.ArgbEvaluator;
import android.text.format.Formatter;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.TextView;

import com.android.settingslib.Utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;




import static com.fusionleo.LeoX.systemui.LeoConfig.*;
import static com.fusionleo.LeoX.systemui.LeoConfig.rt100foleo;
import static com.fusionleo.LeoProvider.LeoManages.*;

@SuppressLint({"NewApi","RestrictedApi"})
public class LeoConfigTextView extends TextView {

    public static String TAG = LeoConfigTextView.class.getSimpleName();


    final  String author=Copyright;

    public Context mContext;
   public Calendar mCalendar;

    public LeoConfigTextView(Context context) {
        super(context);
        mContext=context;
    }

    public LeoConfigTextView(Context context, AttributeSet attrs)  {
        super(context, attrs);
        mContext=context;
    }
    public ActivityManager.MemoryInfo memoryInfo ;
    public LeoConfigTextView(Context context,  AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        mContext=context;
        mActivityManager = (ActivityManager)mContext.getSystemService(Context.ACTIVITY_SERVICE);
    }



    public String   getLeoChineseWeekStyle(boolean of, int Style) {
         String week="";
        if(of){
            if(isChineseLanguage()){
                mCalendar = Calendar.getInstance();
                int mLeoChineseWeek= mCalendar.get(Calendar.DAY_OF_WEEK);
                if(Style==0){
                    week=getLeoChineseWeek(mLeoChineseWeek,getStringLeoArray(mContext,rt100foleo("Q2hpbmVzZV93ZWVrX3N0eWxlX2RlZmF1bHQ=")));
                }else if (Style == 1){
                    week=getLeoChineseWeek(mLeoChineseWeek,getStringLeoArray(mContext,rt100foleo("Q2hpbmVzZV93ZWVrX3N0eWxlX2dlbmVyYWw=")));
                }else if (Style == 2){
                    week=getLeoChineseWeek(mLeoChineseWeek,getStringLeoArray(mContext,rt100foleo("Q2hpbmVzZV93ZWVrX3N0eWxlX3Byb3ZpbmNpYWxpc20=")));
                }else if (Style == 3){
                    week=getLeoChineseWeek(mLeoChineseWeek,getStringLeoArray(mContext,rt100foleo("Q2hpbmVzZV93ZWVrX3N0eWxlX3NpbXBsZW5lc3M=")));
                }else if (Style == 4){
                    week=getLeoChineseWeek(mLeoChineseWeek,getStringLeoArray(mContext,rt100foleo("Q2hpbmVzZV93ZWVrX3N0eWxlX2FuY2llbnQ=")));
                }else if (Style == 5){
                    week=getLeoChineseWeek(mLeoChineseWeek,getStringLeoArray(mContext,rt100foleo("Q2hpbmVzZV93ZWVrX3N0eWxlX2NoYWxkYWljdA==")));
                }
            }else{
                //如果使用的语言不是中文,简体,繁体将默认为系统日期格式
                week="EEE";
            }
        }
        return week;
    }

    public String   getLeoChineseWeek(int Style,  String[] LeoWeek) {
        switch (Style) {
            case 1:
                return LeoWeek[0];
            case 2:
                return LeoWeek[1];
            case 3:
                return LeoWeek[2];
            case 4:
                return LeoWeek[3];
            case 5:
                return LeoWeek[4];
            case 6:
                return LeoWeek[5];
            case 7:
                return LeoWeek[6];
            default:
                return "";
        }
    }


    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    //    LeoSysUiManages(mContext);


    }
    public boolean isMoving;

    public float startY;



    public int getColorForDarkIntensity(float DarkAmount, int Color, int tint) {
        return   ((Integer) ArgbEvaluator.getInstance().evaluate(DarkAmount, Integer.valueOf(Color), Integer.valueOf(tint))).intValue();

        //    return ((Integer) ArgbEvaluator.getInstance().evaluate(f, Integer.valueOf(i2), Integer.valueOf(mDarkModeFillColor))).intValue();
    }

    public String getLeoDateStyle(int data_location,boolean of,int week,int SymbolStyle,String Symbolstr,String dateFormat)  {
        String leoDate ;
        String DateFormat = "";

        Date now = new Date();
        String clockDateFormat =dateFormat;
        String Symbol="";

        if(of){
            Symbol=LeoSaltSymbol(SymbolStyle,Symbolstr," ");
        }
        String WEEKK=getLeoChineseWeekStyle(of,week);
        if (clockDateFormat == null || clockDateFormat.isEmpty()) {
            String str=LeoString("default_date_format");
            leoDate = DateFormat.format((data_location ==0) ? str+Symbol+WEEKK: WEEKK+ Symbol+str, now);
        } else {
            leoDate=DateFormat.format( (data_location==0) ? clockDateFormat+Symbol+WEEKK : WEEKK+Symbol+clockDateFormat , now);
        }

        return leoDate;
    }


    public  String  LeoSaltSymbol(int style, String str,String str2){

        return getLeoSymbolStyle(mContext,style,str,str2);
    }
    public  String  LeoSaltSymbolStyle(int style, String str){
        return LeoSaltSymbol(style,str," ");
    }



    public static String getLeoTimeDetailChinese(int style,String[] TimeDetail) {
        switch (style) {
            case 0:
                return TimeDetail[0];
            case 1:
                return TimeDetail[1];
            case 2:
                return TimeDetail[1];
            case 3:
                return TimeDetail[2];
            case 4:
                return TimeDetail[2];
            case 5:
                return TimeDetail[3];
            case 6:
                return TimeDetail[3];
            case 7:
                return TimeDetail[4];
            case 8:
                return TimeDetail[4];
            case 9:
                return TimeDetail[5];
            case 10:
                return TimeDetail[5];
            case 11:
                return TimeDetail[6];
            case 12:
                return TimeDetail[6];
            case 13:
                return TimeDetail[7];
            case 14:
                return TimeDetail[7];
            case 15:
                return TimeDetail[8];
            case 16:
                return TimeDetail[8];
            case 17:
                return TimeDetail[9];
            case 18:
                return TimeDetail[9];
            case 19:
                return TimeDetail[10];
            case 20:
                return TimeDetail[10];
            case 21:
                return TimeDetail[11];
            case 22:
                return TimeDetail[11];
            case 23:
                return TimeDetail[0];
            default:
                return "";
        }
    }

    public static String getLeoChineseTimeDetail(int style,String[] TimeDetail) {
        switch (style) {
            case 0:
                return TimeDetail[0];
            case 1:
                return TimeDetail[0];//凌晨
            case 2:
                return TimeDetail[1];
            case 3:
                return TimeDetail[1];//拂晓
            case 4:
                return TimeDetail[2];
            case 5:
                return TimeDetail[2];
            case 6:
                return TimeDetail[3];//清晨
            case 7:
                return TimeDetail[4];//早晨
            case 8:
                return TimeDetail[5];//上午
            case 9:
                return TimeDetail[5];
            case 10:
                return TimeDetail[5];
            case 11:
                return TimeDetail[6];//中午
            case 12:
                return TimeDetail[6];
            case 13:
                return TimeDetail[7];//午后
            case 14:
                return TimeDetail[7];
            case 15:
                return TimeDetail[8];//下午
            case 16:
                return TimeDetail[8];
            case 17:
                return TimeDetail[9];//黄昏
            case 18:
                return TimeDetail[10];//傍晚
            case 19:
                return TimeDetail[11];//
            case 20:
                return TimeDetail[11];//
            case 21:
                return TimeDetail[11];//
            case 22:
                return TimeDetail[12];//
            case 23:
                return TimeDetail[12];//
            default:
                return "";
        }
    }
    public static String getLeoChineseTimePiu(int style,String[] TimeDetail) {
        switch (style) {
            case 0:
                return TimeDetail[2];//2
            case 1:
                return TimeDetail[2];//3
            case 2:
                return TimeDetail[3];//3
            case 3:
                return TimeDetail[3];//3
            case 4:
                return TimeDetail[4];//4
            case 5:
                return TimeDetail[4];//4
            case 19:
                return TimeDetail[0];//1
            case 20:
                return TimeDetail[0];//1
            case 21:
                return TimeDetail[0];//1
            case 22:
                return TimeDetail[1];//2
            case 23:
                return TimeDetail[1];//2
            default:
                return "";
        }
    }

    public static String getLeoChineseTimeSeason(int style,String[] TimeDetail){
        switch (style) {
            case 0:
                return TimeDetail[3];
            case 1:
                return TimeDetail[3];
            case 2:
                return TimeDetail[0];
            case 3:
                return TimeDetail[0];
            case 4:
                return TimeDetail[0];
            case 5:
                return TimeDetail[1];
            case 6:
                return TimeDetail[1];
            case 7:
                return TimeDetail[1];
            case 8:
                return TimeDetail[2];
            case 9:
                return TimeDetail[2];
            case 10:
                return TimeDetail[2];
            case 11:
                return TimeDetail[3];
            default:
                return "";
        }
    }

    public String  getLeoTimeStyle(int lunarmonth, boolean of,int Style,String str) {
        String Time="";
       int mLeoChineseHours=Calendar.getInstance().getTime().getHours();
        mCalendar = Calendar.getInstance();
        int MONTH = mCalendar.get(Calendar.MONTH);
        if(isChineseLanguage() ){
            if(of){
                if(Style ==0){
                    Time= getLeoTimeDetailChinese(mLeoChineseHours,getStringLeoArray(mContext,rt100foleo("Q2hpbmVzZV8xMlRpbWU=")));
                    //时辰
                }else if (Style == 1){
                    Time=  getLeoChineseTimeDetail(mLeoChineseHours,getStringLeoArray(mContext,rt100foleo("Q2hpbmVzZV8xMlRpbWVpbnRlcnZhbA==")));
                    //时段
                } else if (Style == 2){
                    Time=  getLeoChineseTimePiu(mLeoChineseHours,getStringLeoArray(mContext,rt100foleo("Q2hpbmVzZV81VGltZQ==")));
                    //打更
                } else if (Style == 3){
                    Time=  getLeoChineseTimeSeason(MONTH,getStringLeoArray(mContext,rt100foleo("Q2hpbmVzZV80c2Vhc29u")));
                    //季节
                } else if (Style == 4){
                    //星座
                    Time= ConstellationString(mCalendar);
                }else if (Style == 5){
                    Time=new LeoLunar(mCalendar,mContext).toLeoLunarChineseLunar(false,false,lunarmonth, 0);
                }else if (Style == 6){
                    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy");// HH:mm:ss
                    Date date = new Date(System.currentTimeMillis());
                    int yearOfNumber =  mCalendar.get(java.util.Calendar.DAY_OF_YEAR);//获得当天是一年中的第几天
                    int week2 =  mCalendar.get( mCalendar.WEEK_OF_YEAR);
                    Time=simpleDateFormat2.format(date)+"年"+week2+"周"+yearOfNumber+"天";
                }else if (Style == 7){
                    Time=getLeoString( str);
                }
            }
        }
        return Time;
    }


    public static final int[] ConstellationEdgeDay = { 20, 19, 21, 21, 21, 22,
            23, 23, 23, 23, 22, 22 };

    public  String ConstellationString(Calendar time) {
        String[] str= getStringLeoArray(mContext,rt100foleo("Y29uc3RlbGxhdGlvbl8xMlRpbWU="));
        int month = time.get(Calendar.MONTH);
        int day = time.get(Calendar.DAY_OF_MONTH);
        if (day < ConstellationEdgeDay[month]) {
            month = month - 1;
        }
        if (month >= 0) {
            return str[month];
        }
        // default to return 魔羯
        return str[11];
    }

    public int mNonAdaptedColor;

    public void setLeoTextSize(int size){
        setTextSize(size);
    }
    public void setLeoTextFont(int Style,String fontname,int ss){
        setTypeface(setLeoFonts(mContext,Style,fontname, ss));
    }
    public void setLeoTextPadding(float Style,float Style1){
    setPaddingRelative(
            (int)  Style,
          0,
            (int) Style1,
           0);
    }

public String  LeoString(String str){
    return getStringIdentifier(mContext,str);
}

    public  String NetworkIconStyle(int  style) {
        switch ( style) {
            case 1:
                return "stat_sys_network_traffic_b";
            case 2:
                return "stat_sys_network_traffic_c";
            case 3:
                return "stat_sys_network_traffic_d";
            case 4:
                return "stat_sys_network_traffic_e";
            case 5:
                return "stat_sys_network_traffic_f";
            case 6:
                return "stat_sys_network_traffic_g";
            case 7:
                return "stat_sys_network_traffic_h";
            default:
                return "stat_sys_network_traffic_a";
        }
    }
    public static  int UpDownIcom;
    public static  int UpIcom;
    public static  int DownIcom;
    public  void getLeoNetworkIconStyle(int style) {
        UpDownIcom= getLeoIcon(NetworkIconStyle(style)+ "_updown");
        UpIcom =getLeoIcon(NetworkIconStyle(style) + "_up");
        DownIcom=getLeoIcon(NetworkIconStyle(style) + "_down");
    }
    public Resources LeoRes;

    {
        try {
            LeoRes = getContext().getPackageManager().getResourcesForApplication(ConfigManager);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
    }

    public int getLeoIcon(String str) {
        return LeoRes.getIdentifier(str, "drawable", ConfigManager);
    }
    private String ACTION_BATTERY= Intent.ACTION_BATTERY_CHANGED;
    public float getBatteryTemp() {
        return ((float) getContext().registerReceiver(null, new IntentFilter(ACTION_BATTERY)).getIntExtra("temperature", 0)) / 10.0f;
    }


    public static String getCpuTemp() {
        String result = null;
        String line ;
        String temp;
        String CPU;
        try {
            if (qcomCPU()) {
                CPU=rt100foleo("L3N5cy9jbGFzcy90aGVybWFsL3RoZXJtYWxfem9uZTEvdGVtcA==");
            }else {
                CPU=rt100foleo("L3N5cy9jbGFzcy90aGVybWFsL3RoZXJtYWxfem9uZTAvdGVtcA==");
            }
            BufferedReader br = new BufferedReader(new FileReader(CPU));
            line = br.readLine();
            if (line != null) {
                long temperature = Long.parseLong(line);
                if (temperature < 0) {
                    temp = "";
                } else {
                    temp = (float) (temperature / 1000.0)+"";
                }
                result = temp;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }

    public  String getTotalRam(){//GB
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

        return totalRam + " GB";//返回1GB/2GB/3GB/4GB
    }
    private String formateFileSize(long size){
        return Formatter.formatFileSize(mContext, size);
    }
    public  String getTotalExternalMemorySize() {
            File file = Environment.getDataDirectory();
            StatFs statFs = new StatFs(file.getPath());
            long blockSizeLong = statFs.getBlockSizeLong();
            long blockCountLong = statFs.getBlockCountLong();
            long size = blockCountLong * blockSizeLong;
            return Formatter.formatFileSize(mContext, size);

    }


    public  String getAvailableExternalMemorySize() {
        File file = Environment.getDataDirectory();
        StatFs statFs = new StatFs(file.getPath());
        long availableBlocksLong = statFs.getAvailableBlocksLong();
        long blockSizeLong = statFs.getBlockSizeLong();
        return Formatter.formatFileSize(mContext, availableBlocksLong
                * blockSizeLong);

    }


    private ActivityManager mActivityManager;
    public String getSystemMemoryUsableSize(){

        //获得MemoryInfo对象
        memoryInfo = new ActivityManager.MemoryInfo() ;
        //获得系统可用内存，保存在MemoryInfo对象上
        mActivityManager.getMemoryInfo(memoryInfo) ;
        long memSize = memoryInfo.availMem;

        //字符类型转换
        String availMemStr = formateFileSize(memSize);

        return availMemStr ;
    }


    public  String CpuModl(Context context) {
        String stat;

        if (qcomCPU()) {
            stat= getCPUInfo(context);
        } else  {
            String inf2o= getLeoSystemProper("ro.hardware");
            String first = inf2o.substring(0, 1);
            String after = inf2o.substring(1); //substring(1),获取索引位置1后面所有剩余的字符串
            first = first.toUpperCase();
            after = after.toLowerCase();
            stat=  first + after;
        }

        return stat;
    }

    public String getCPUusage(Context context) {
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
                            if (ReadFile(Superinfo(context,12)+ String.valueOf(parseInt) + "/online").equals("1")) {
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
                    str2 = new StringBuilder(String.valueOf(iArr[i] == -1 ? new StringBuilder(String.valueOf(str2)).append(LeoString("device_info_idle")).toString() : new StringBuilder(String.valueOf(str2)).append(String.valueOf(iArr[i])).append("%").toString())).append(" ").toString();
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
    private static final int CORES = Runtime.getRuntime().availableProcessors();
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
    private long[] lastIdle = new long[CORES];
    private long[] lastTotal = new long[CORES];
    private String cpuFreq ="CPU%1$s: %2$s";
    private String mgz = "MHz";
    public String getCpuMhz(Context context) {
        String str = "";
        if (CORES == 8) {
            return new StringBuilder(String.valueOf(String.format(this.cpuFreq, new Object[]{"0-3", getFrequencyText(0,context)}))).append(" ").append(String.format(this.cpuFreq, new Object[]{"4-7", getFrequencyText(4,context)})).toString();
        }
        for (int i = 0; i < CORES; i++) {
            str = new StringBuilder(String.valueOf(str)).append(getFrequencyText(i,context)).append(" ").toString();
        }
        return str;
    }
    private String getFrequencyText(int i,Context context) {
        if (!ReadFile(Superinfo(context,12)+ String.valueOf(i) + "/online").equals("1")) {
            return LeoString("device_info_idle");
        }
        String str = "";
        try {
            str = RemoveLast(ReadFile(Superinfo(context,12)+ String.valueOf(i) + Superinfo(context,13)));
        } catch (Exception e) {
        }
        return str.equals("") ? LeoString("device_info_idle") : new StringBuilder(String.valueOf(str)).append(this.mgz).toString();
    }
    protected String RemoveLast(String str) {
        return str.length() > 3 ? str.substring(0, str.length() - 3) : str;
    }
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

        return String.valueOf(batteryCapacity );
    }

}