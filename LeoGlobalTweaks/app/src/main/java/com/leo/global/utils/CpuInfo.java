package com.leo.global.utils;

import android.os.Handler;
import android.util.Log;

import com.leo.global.view.gridmenu.AboutMenuFragment;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static com.leo.global.tools.deviceinfo.ExtraInfo.ReadFile;
import static com.leo.global.utils.Build.getLeoBuild;

public class CpuInfo {
    private static final String TAG = CpuInfo.class.getSimpleName();
    public static int getNumCpuCores() {
        try {
            // Get directory containing CPU info
            File dir = new File("/sys/devices/system/cpu/");
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
    public static boolean isCpu64() {
        boolean result = false;
        if (isCpu641() || isCpu642()) {
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
    public static String getCpuAbi() {
        return android.os.Build.CPU_ABI;
    }
    public static boolean isCpu642() {
        boolean result = false;
        String mProcessor = null;
        try {
            mProcessor = getFieldFromCpuinfo("Processor");
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
    public static String getFieldFromCpuinfo(String field) throws IOException {
        BufferedReader br = new BufferedReader(new FileReader("/proc/cpuinfo"));
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

    public static String getCpuGovernor() {
        String result = null;
        try {
            String line;
            BufferedReader br = new BufferedReader(new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"));
            if ((line = br.readLine()) != null) {
                result = line;
            }
            br.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static String getCpuAvailableFrequenciesSimple() {
        String result = null;
        try {
            String line;
            BufferedReader br = new BufferedReader(new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"));
            if ((line = br.readLine()) != null) {
                result = line;
            }
            br.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static String getCpuAvailableGovernorsSimple() {
        String result = null;
        try {
            String line;
            BufferedReader br = new BufferedReader(new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"));
            if ((line = br.readLine()) != null) {
                result = line;
            }
            br.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }
    public static float getCpuTemp() {
        float gpu;
        if (getLeoBuild("ro.hardware").equals("qcom")) {
            gpu =Float.valueOf(ReadFile("/sys/class/thermal/thermal_zone12/temp")).floatValue()/ 10.0f;
        }else {
            gpu =Float.valueOf(ReadFile("/sys/class/thermal/thermal_zone0/temp")).floatValue()/ 1000.0f;

        }
        return gpu;
    }


}
