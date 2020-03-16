package com.android.settingslib.salt;

import android.animation.ArgbEvaluator;
import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.StatusBarManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemProperties;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.android.systemui.statusbar.policy.DarkIconDispatcher;
import com.android.systemui.statusbar.salt.SaltNotificationPanelController;
import com.samsung.android.feature.SemFloatingFeature;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static com.android.settingslib.salt.SaltConfigCenter.LeoString;
import static com.android.settingslib.salt.SaltConfigCenter.qcomCPU;
import static com.android.settingslib.salt.SaltValues.capacityunit;
import static com.android.settingslib.salt.utils.LeoManages.getLeoFramework;
import static com.android.settingslib.salt.utils.LeoManages.getLeoService;

public class SaltConfigFrame {
    public final static String TAG = SaltConfigFrame.class.getSimpleName();

    public static String[] getCustomArray(Context context, String rec) {
        String[] str;
        Context otherAppContext = null;
        try {
            otherAppContext =context.createPackageContext(LEOFRAMEWORK, 3);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        str= otherAppContext.getResources().getStringArray(otherAppContext.getResources().getIdentifier(String.valueOf(rec), "array",LEOFRAMEWORK));


        return str;
    }

    public static Drawable getCustomDrawable(Context context, String rec) {
        Drawable d;
        try {
            Context otherAppContext =context.createPackageContext(LEOFRAMEWORK, 3);
            d = otherAppContext.getResources().getDrawable(otherAppContext.getResources().getIdentifier(rec, "drawable",LEOFRAMEWORK));
            return d.getCurrent();
        } catch (Exception e) {
            d = context.getResources().getDrawable(android.R.color.transparent);
            e.printStackTrace();
            return d;
        }
    }


    public static String[] getStringLeoArray(Context context ,String rec) {
        String[] str;
        String STR=LEOFRAMEWORK;
        Context otherAppContext = null;
        try {
            otherAppContext =context.createPackageContext(STR, 3);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        str= otherAppContext.getResources().getStringArray(otherAppContext.getResources().getIdentifier(String.valueOf(rec), new String(rt100foleo("YXJyYXk=")),STR));
        return str;
    }
    public static Resources getResourcesForPackage(Context ctx, String pkg) {
        try {
            Resources res = ctx.getPackageManager()
                    .getResourcesForApplication(pkg);
            return res;
        } catch (Exception e) {
            return ctx.getResources();
        }
    }
    public static String  getStringIdentifier(Context context , String RECnME){
        String pkgName=null;
        String toastMsg;
        int ident;
        try {
            Resources packRes = getResourcesForPackage(context, LEOFRAMEWORK);
            ident = packRes.getIdentifier(RECnME,"string", LEOFRAMEWORK);
            toastMsg = packRes.getString(ident, pkgName);
        } catch (Exception e) {
            e.printStackTrace();
            toastMsg="";
        }

        return toastMsg;
    }
    public static int getIdentifier(Context context, String resName, String resType, String pkg) {
        try {
            Resources res = context.getPackageManager()
                    .getResourcesForApplication(pkg);
            int ident = res.getIdentifier(resName, resType, pkg);
            return ident;
        } catch (Exception e) {
            return -1;
        }
    }
    public static  String LEOFRAMEWORK= getLeoFramework();
    public static boolean isChineseLanguage() {
        return Resources.getSystem().getConfiguration().locale.getLanguage().startsWith(
                Locale.CHINESE.getLanguage());
    }
    public static String getLeoSystemProper(String str) {
        return SystemProperties.get(str);
    }

     static  String PACKAGE_SYSTEMUI = "com.android.systemui";
    public   static Context getPackageContext(Context context, String packageName) {
        Context pkgContext = null;
        if (context.getPackageName().equals(packageName)) {
            pkgContext = context;
        } else {
            try {
                pkgContext = context.createPackageContext(packageName,
                        Context.CONTEXT_IGNORE_SECURITY
                                | Context.CONTEXT_INCLUDE_CODE);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        return pkgContext;
    }

    public static String rt100foleo(String str) {
        return new String(Base64.decode(str.getBytes(), Base64.DEFAULT));
    }


    public static  class  SaltSettings {
        public static void setLeoTextSize(TextView textView, int size){
            textView.setTextSize(size);
        }
        public static void setLeoIconSize(ImageView imageView,float size){
            imageView.setScaleX(size);
            imageView.setScaleY(size);
        }
        public static void setLeoImagePadding(ImageView imageView, float Style, float Style1){
            imageView.setPaddingRelative((int)Style,0,(int)Style1,0);
        }

        public static void setLeoTextPadding(TextView textView,float Style,float Style1){
            textView.setPaddingRelative(
                    (int)  Style,
                    0,
                    (int) Style1,
                    0);
        }
        static Settings.System LeoSettings;
        public static String getLeoString(Context cxt,String key) {
            return LeoSettings.getString(cxt.getContentResolver(), key);
        }
        public static Uri getLeoUri(String key) {
            return  LeoSettings.getUriFor( key);
        }
        public static int getLeoInt(Context cxt, String key, int defaultValue) {
            return LeoSettings.getInt(cxt.getContentResolver(), key, defaultValue);
        }
        public static boolean getLeoBoolean(Context cxt, String key, int defaultValue) {
            return LeoSettings.getInt(cxt.getContentResolver(), key, defaultValue)==1;
        }

        public static String getLeoCustomString (String str2)
        {
            String str ="";
            if (!TextUtils.isEmpty(str2)) {
                str=(str2);
            } else {
                str=(TextUtils.isEmpty(str)? rt100foleo("TGVvUk9N") : str);
            }
            return str;
        }
    }

    public static void setLeoHaptics(Context context,int of, int style) {
        boolean hapticsDisabled = false;
        if (of==1) {
            hapticsDisabled = true;
        }
        if (hapticsDisabled) {
            Vibrator mVibrator = (Vibrator)context.getSystemService(Context.VIBRATOR_SERVICE);
            mVibrator.vibrate(style);
        }
    }
    public static void setLeoAction(Context context,String Code,int style ) {
        Intent intent = new Intent();
        intent.setAction(getLeoService());
        intent.putExtra(rt100foleo("bGVvX2FjdGlvbg=="), style);
        intent.putExtra(rt100foleo("bGVvX2FwcA=="),Code);
        context.sendBroadcast(intent);
    }
    public static class Prefs {
        private static final String SHARED_PREFS_NAME = "status_bar";

        public static final String LAST_BATTERY_LEVEL = "last_battery_level";

        public static SharedPreferences read(Context context) {
            return context.getSharedPreferences(Prefs.SHARED_PREFS_NAME, Context.MODE_PRIVATE);
        }

        public static SharedPreferences.Editor edit(Context context) {
            return context.getSharedPreferences(Prefs.SHARED_PREFS_NAME, Context.MODE_PRIVATE).edit();
        }

        public static void setLastBatteryLevel(Context context, int level) {
            edit(context).putInt(LAST_BATTERY_LEVEL, level).commit();
        }

        public static int getLastBatteryLevel(Context context) {
            return read(context).getInt(LAST_BATTERY_LEVEL, 50);
        }
    }
    public static String getAndroidSDKVersion() {
        switch (Build.VERSION.SDK_INT) {
            case 22:
                return "Lollipop";
            case 23:
                return "Marshmallow";
            case 24:
            case 25:
                return "Nougat";
            case 26:
            case 27:
                return "Oreo";
            case 28:
                return "Pie";
            case 29:
                return "Q";
        }
        return "Unknown";
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

        return totalRam + " GB";//返回1GB/2GB/3GB/4GB
    }
    public static String getSystemMemoryUsableSize(Context context){
        ActivityManager  mActivityManager = (ActivityManager)context.getSystemService(Context.ACTIVITY_SERVICE);
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo() ;
        //获得系统可用内存，保存在MemoryInfo对象上
        mActivityManager.getMemoryInfo(memoryInfo) ;
        long memSize = memoryInfo.availMem;

        //字符类型转换
        String availMemStr = formateFileSize(context,memSize);

        return availMemStr ;
    }
    static String formateFileSize(Context context,long size){
        return Formatter.formatFileSize(context, size);
    }
    public static String getTotalExternalMemorySize(Context context) {
        File file = Environment.getDataDirectory();
        StatFs statFs = new StatFs(file.getPath());
        long blockSizeLong = statFs.getBlockSizeLong();
        long blockCountLong = statFs.getBlockCountLong();
        long size = blockCountLong * blockSizeLong;
        return Formatter.formatFileSize(context, size);

    }


    public static String getAvailableExternalMemorySize(Context context) {
        File file = Environment.getDataDirectory();
        StatFs statFs = new StatFs(file.getPath());
        long availableBlocksLong = statFs.getAvailableBlocksLong();
        long blockSizeLong = statFs.getBlockSizeLong();
        return Formatter.formatFileSize(context, availableBlocksLong
                * blockSizeLong);

    }

    public static String nextalarm(Context context,Resources mResources,int Style){
        String STR="";
        String  string = Settings.System.getString(context.getContentResolver(), "next_alarm_formatted");
        if (string != null) {
            if (TextUtils.isEmpty(string)) {
                STR=context.getResources().getString(mResources.getIdentifier("servicebox_alarm_no_alarm", "string", context.getPackageName()));
            } else {
                String str;
                if(Style==1){
                    str=mResources.getString(mResources.getIdentifier("servicebox_alarm_next", "string",context.getPackageName()))+" "+string;
                }else {
                    str=string;
                }
                STR=str;
            }
        }
        return STR;
    }
    public static String CpuModl(Context context) {
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
    public static String  Superinfo(Context context,int style) {
        String[] SaltSymbolStyle =getStringLeoArray(context,rt100foleo("TGVvU3VwZXJEZXZpY2VJbmZv"));
        return SaltSymbolStyle[style];
    }
    public static String getCPUInfo(Context context) {
        try {
            String strrt= Superinfo(context,1);
            FileReader fileReader = new FileReader(strrt);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            String info;
            while ((info = bufferedReader.readLine()) != null) {
                String[] array = info.split(":");
                if (array[0].trim().equals("Hardware")) {
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
    static int cpuUsage(int i, String[] strArr) {
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
        long j2 = parseLong -lastIdle[i];
        long j3 = j -lastTotal[i];
        lastTotal[i] = j;
        lastIdle[i] = parseLong;
        return (int) ((((float) (j3 - j2)) / ((float) j3)) * 100.0f);
    }
    static final int CORES = Runtime.getRuntime().availableProcessors();
   static  long[] lastIdle = new long[CORES];
    static long[] lastTotal = new long[CORES];
    static String cpuFreq ="CPU%1$s: %2$s";
   static String mgz = "MHz";
    public static String getCpuMhz(Context context) {
        String str = "";
        if (CORES == 8) {
            return new StringBuilder(String.valueOf(String.format(cpuFreq, new Object[]{"0-3", getFrequencyText(0,context)}))).append(" ").append(String.format(cpuFreq, new Object[]{"4-7", getFrequencyText(4,context)})).toString();
        }
        for (int i = 0; i < CORES; i++) {
            str = new StringBuilder(String.valueOf(str)).append(getFrequencyText(i,context)).append(" ").toString();
        }
        return str;
    }
    private static String getFrequencyText(int i,Context context) {
        if (!ReadFile(Superinfo(context,12)+ String.valueOf(i) + "/online").equals("1")) {
            return LeoString("device_info_idle");
        }
        String str = "";
        try {
            str = RemoveLast(ReadFile(Superinfo(context,12)+ String.valueOf(i) + Superinfo(context,13)));
        } catch (Exception e) {
        }
        return str.equals("") ? LeoString("device_info_idle") : new StringBuilder(String.valueOf(str)).append(mgz).toString();
    }
    protected static  String RemoveLast(String str) {
        return str.length() > 3 ? str.substring(0, str.length() - 3) : str;
    }
    public static String getCPUusage(Context context) {
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

    public static String ReadFile(String str) {
        Throwable th;
        File file = new File(str);
        StringBuffer stringBuffer = new StringBuffer("");
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            while (true) {
                try {
                    int read = fileInputStream2.read();
                    if (read == -1) {
                        break;
                    }
                    stringBuffer.append((char) read);
                } catch (Exception e) {
                    fileInputStream = fileInputStream2;
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                }
            }
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                    fileInputStream = fileInputStream2;
                } catch (Exception e2) {
                    fileInputStream = fileInputStream2;
                }
            } else {
                fileInputStream = fileInputStream2;
            }
        } catch (Exception e3) {
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (Exception e4) {
                }
            }
            return stringBuffer.toString().trim();
        } catch (Throwable th3) {
            th = th3;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (Exception e5) {
                }
            }
            try {
                throw th;
            } catch (Throwable throwable) {
                throwable.printStackTrace();
            }
        }
        return stringBuffer.toString().trim();
    }
    public static int getNumCpuCores(Context context) {
        try {
            // Get directory containing CPU info
            File dir = new File(Superinfo(context,0));
            // Filter to only list the devices we care about
            File[] files = dir.listFiles(new FileFilter() {
                @Override
                public boolean accept(File file) {
                    // Check if filename is "cpu", followed by a single digit number
                    if (Pattern.matches("cpu[0-9]+", file.getName())) {
                        return true;
                    }
                    return false;
                }
            });
            // Return the number of cores (virtual CPU devices)
            return files.length;
        } catch (Exception e) {
            // Default to return 1 core
            Log.e(TAG, "Failed to count number of cores, defaulting to 1", e);
            return 1;
        }
    }
    public static boolean isCpu64(Context context) {
        boolean result = false;
        if (isCpu641() || isCpu642(context)) {
            result = true;
        }
        return result;
    }
    public static boolean isCpu641() {
        boolean result = false;

        if (android.os.Build.CPU_ABI.contains("arm64")) {
            result = true;
        }

        return result;
    }

    public static boolean isCpu642(Context context) {
        boolean result = false;
        String mProcessor = null;
        try {
            mProcessor = getFieldFromCpuinfo(context,"Processor");
        } catch (IOException e) {
            e.printStackTrace();
        }

        if (mProcessor != null) {
            // D/CpuUtils: isCPU64 mProcessor = AArch64 Processor rev 4 (aarch64)
            Log.d(TAG, "isCPU64 mProcessor = " + mProcessor);
            if (mProcessor.contains("aarch64")) {
                result = true;
            }
        }

        return result;
    }
    public static String getFieldFromCpuinfo(Context context,String field) throws IOException {
        BufferedReader br = new BufferedReader(new FileReader(Superinfo(context,1)));
        Pattern p = Pattern.compile(field + "\\s*:\\s*(.*)");

        try {
            String line;
            while ((line = br.readLine()) != null) {
                Matcher m = p.matcher(line);
                if (m.matches()) {
                    return m.group(1);
                }
            }
        } finally {
            br.close();
        }

        return null;
    }

    public static String getGPUModel(   Context context) {
        String result;
        if (qcomCPU()) {
            result = ReadFile(Superinfo(context,2));
        }else {
            result = ReadFile(Superinfo(context,3));
        }
        return result;

    }
    public   static String GPUTempMHZ(Context context) {
        return "Min "+Math.round(getMinGPUMhz(context))  + "mhz " + " Max "+Math.round(getMaxGPUMhz(context))  + "mhz";
    }
    static float getMaxGPUMhz(Context context) {
        float gpu;
        if (qcomCPU()) {
            gpu =Float.valueOf(ReadFile(Superinfo(context,4))).floatValue();
        }else {
            gpu =Float.valueOf(ReadFile(Superinfo(context,5))).floatValue()/ 1000.0f;

        }
        return gpu;
    }
    static float getMinGPUMhz(Context context) {
        float gpu;
        if (qcomCPU()) {
            gpu =Float.valueOf(ReadFile(Superinfo(context,6))).floatValue();
        }else {
            gpu =Float.valueOf(ReadFile(Superinfo(context,7))).floatValue()/ 1000.0f;

        }
        return gpu;
    }

    public static String getGPUbusy(Context context) {
        String gpu;
        if (qcomCPU()) {
            gpu =ReadFile(Superinfo(context,8));
        }else {
            gpu =ReadFile(Superinfo(context,9));

        }
        return gpu;
    }

    public static String getBatteryCapacity(Context context) {
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
    public static String getCurrent(Context context) {
        String result = "null";
        try {
            result =readCurrentFile(new File(Superinfo(context,10)))+capacityunit;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;

    }
    public static String readCurrentFile(File file) throws IOException {
        InputStream input = new FileInputStream(file);
        try {
            BufferedReader reader = new BufferedReader(new InputStreamReader(
                    input));
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }
            return sb.toString();
        } finally {
            input.close();
        }
    }
    static int readFile(String path, int defaultValue) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(
                    path));
            int i = Integer.parseInt(bufferedReader.readLine(), 10);
            bufferedReader.close();
            return i;
        } catch (Exception localException) {
        }
        return defaultValue;
    }
    public static String getLeoFloatingFature(String stle){
        return SemFloatingFeature.getInstance().getString(stle);
    }
    public static String getVoltage(Context context) {
        String result = "null";
        try {
            int voltage = readFile(Superinfo(context,11), 0) / 1000;
            result = voltage + "mV";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    public static Context mSaltContext;
    public static String mPackageName;

    public static int getIdentifier(String str, String str2) {
        return mSaltContext.getResources().getIdentifier(str, str2, mPackageName);
    }
    public static int  getLeoColor(String style){
        return mSaltContext.getColor(getLeoUIResource("color/"+style));
    }
    public static int getLeoUIResource(String resource) {
        return mSaltContext.getResources().getIdentifier(resource, null,mPackageName);
    }
    public static void collapsePanel(Context context,int off) {
        boolean hapticsDisabled = false;
        if (off==1) {
            hapticsDisabled = true;
        }
        if(hapticsDisabled){
            try {
                ((StatusBarManager)context.getSystemService("statusbar")).collapsePanels();
            } catch (Exception e) {
            }
        }

    }


}
