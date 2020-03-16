package com.leo.salt.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Log;



import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;
import com.samsung.android.feature.SemFloatingFeature;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;


import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;

import static com.leo.salt.utils.ExtraInfo.ReadFile;


public class BatteryUtil {
    public static String batteryTemperature(Context context, Boolean ForC) {
        Intent intent = context.registerReceiver(null, new IntentFilter(
                Intent.ACTION_BATTERY_CHANGED));
        float  temp = ((float) (intent != null ? intent.getIntExtra(
                BatteryManager.EXTRA_TEMPERATURE, 0) : 0)) / 10;
        // Round up to nearest number
        int c = (int) ((temp) + 0.5f);
        float n = temp + 0.5f;
        // Use boolean to determine celsius or fahrenheit
        return String.valueOf((n - c) % 2 == 0 ? (int) temp :
                ForC ? c * 9/5 + 32:c);
    }
    static float getBatteryTemperature() {
        return ((float) LeoAmberApplication.getContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")).getIntExtra("temperature", 0)) / 10.0f;
    }
    public static String getBatteryTemperature(TemperatureType temperatureType) {
        float f = empty;
        if (temperatureType == TemperatureType.Battery) {
            f = getBatteryTemperature();
        }

        return Math.round(f) + " ℃";
    }
  public  static  enum TemperatureType {
        Battery,
      GPU,
      GPUMHZ,
      CPU

    }
    public   static String CpuTemp(TemperatureType temperatureType) {
        float f = empty;
        if (temperatureType == TemperatureType.CPU) {
            f =getCPUTemperature();
        }

        return  Math.round(f)  +" ℃";
    }
    public   static String GPUTemp(TemperatureType temperatureType) {
        float f = empty;
        if (temperatureType == TemperatureType.GPU) {
            f = getqcomGPUTemp();
        }

        return Math.round(f)  + " ℃";
    }

   static float getCPUTemperature() {
        return Float.valueOf(ReadFile("/sys/class/thermal/thermal_zone0/temp")).floatValue() / 10.0f;
    }


    public   static String GPUTempMHZ(TemperatureType temperatureType) {
        float f = empty;
        float e =empty;
        if (temperatureType == TemperatureType.GPUMHZ) {
            f = getMaxGPUMhz();
        }
        if (temperatureType == TemperatureType.GPUMHZ) {
            e = getMinGPUMhz();
        }

        return "Min "+Math.round(e)  + "mhz " + " Max "+Math.round(f)  + "mhz";
    }

    static float getqcomGPUTemp() {
        float gpu=empty;
        try {
            if (getLeoBuild("ro.hardware.chipname").equals("MSM8998")) {
                gpu =Float.valueOf(ReadFile("/sys/kernel/gpu/gpu_tmu")).floatValue()/ 10.0f;
            } else if (getLeoBuild("ro.hardware.chipname").equals("SDM845")) {
                gpu = 0;
            }else {
                gpu =Float.valueOf(ReadFile("/sys/kernel/gpu/gpu_tmu")).floatValue()/ 1.0f;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return gpu;
    }
    static float empty=0.0f;
    static float getMaxGPUMhz() {
        float gpu=empty;
        try {
            if (getLeoBuild("ro.hardware").equals("qcom")) {
                gpu =Float.valueOf(ReadFile("/sys/class/kgsl/kgsl-3d0/max_clock_mhz")).floatValue();
            }else {
                gpu =Float.valueOf(ReadFile("/sys/kernel/gpu/gpu_max_clock")).floatValue()/ 1000.0f;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return gpu;
    }
    static float getMinGPUMhz() {
        float gpu=empty;

        try {
            if (getLeoBuild("ro.hardware").equals("qcom")) {
                gpu =Float.valueOf(ReadFile("/sys/class/kgsl/kgsl-3d0/min_clock_mhz")).floatValue();
            }else {
                gpu =Float.valueOf(ReadFile("/sys/kernel/gpu/gpu_min_clock")).floatValue()/ 1000.0f;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return gpu;
    }
    private static final String CHARGER_CURRENT_NOW =
            "/sys/class/power_supply/battery/current_now";
    private static final String VOLTAGE_NOW =
            "/sys/class/power_supply/battery/voltage_now";
    private static final String CYLE_COUNT =
            "/sys/class/power_supply/battery/battery_cycle";
    private static final String FG_FULLCAPNOM =
            "/sys/class/power_supply/battery/fg_fullcapnom";

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

    public static String getVoltage() {
        String result = LeoAmberApplication.getContext().getString(R.string.get_error) ;
        try {
            int voltage = readFile(VOLTAGE_NOW, 0) / 1000;
            result = voltage + "mV";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    public static String getCurrent() {


        String result =LeoAmberApplication.getContext().getString(R.string.get_error) ;
        try {
            result =readCurrentFile(new File(CHARGER_CURRENT_NOW))+" mA";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;

    }
    public static String getCycleindex () {
        String result =LeoAmberApplication.getContext().getString(R.string.get_error) ;
        try {
            result =readCurrentFile(new File(CYLE_COUNT))+" 次";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
   public static String getUsableindex (Context context) {
        ExtraInfo di = new ExtraInfo(context);
        String result =LeoAmberApplication.getContext().getString(R.string.get_error) ;
        try {
            if (di.getPropHardware().startsWith("qcom")) {
               Integer num = Integer.valueOf(readCurrentFile(new File(FG_FULLCAPNOM)));
               result = new Integer(num.intValue() * 2)+" mA";
              //  result=readCurrentFile(new File(FG_FULLCAPNOM));
            }else {
                result=readCurrentFile(new File(FG_FULLCAPNOM))+" mA";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }


    public static String getDesignCapacity() {



        return getBatteryCapacity(LeoAmberApplication.getContext());
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

    public static String getDeviceRated() {
        return SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_SETTINGS_CONFIG_ELECTRIC_RATED_VALUE");
    }
    public static String getDeviceFccId() {
        return SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_SETTINGS_CONFIG_FCC_ID");
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

        return batteryCapacity+" ";
    }




}
