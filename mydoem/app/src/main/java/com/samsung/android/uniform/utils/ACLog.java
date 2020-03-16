package com.samsung.android.uniform.utils;

import android.os.Binder;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class ACLog {
    private static final boolean DEBUG = "eng".equals(Build.TYPE);
    private static final int LOG_DATA_SIZE = 800;
    private static SimpleDateFormat sDateFormat = new SimpleDateFormat("[MM-dd HH:mm:ss.SSS]", Locale.getDefault());
    private static final Object sLock = new Object();
    private static HashMap<String, String> sLogData = new HashMap();
    private static ArrayList<String> sLogText = new ArrayList();
    private static boolean sLogTextArrayFull = false;
    private static int sLogTextIndex = 0;

    public enum LEVEL {
        NORMAL,
        IMPORTANT,
        HIGH_IMPORTANT
    }

    public static void v(String tag, String msg) {
        v(tag, msg, LEVEL.NORMAL);
    }

    public static void v(String tag, String msg, LEVEL level) {
        switch (level) {
            case NORMAL:
                if (DEBUG) {
                    Log.v(tag, msg);
                    return;
                }
                return;
            case IMPORTANT:
                Log.v(tag, msg);
                return;
            case HIGH_IMPORTANT:
                Log.v(tag, msg);
                addLogText(tag, msg);
                return;
            default:
                return;
        }
    }

    public static void d(String tag, String msg) {
        d(tag, msg, LEVEL.NORMAL);
    }

    public static void d(String tag, String msg, LEVEL level) {
        switch (level) {
            case NORMAL:
                if (DEBUG) {
                    Log.d(tag, msg);
                    return;
                }
                return;
            case IMPORTANT:
                Log.d(tag, msg);
                return;
            case HIGH_IMPORTANT:
                Log.d(tag, msg);
                addLogText(tag, msg);
                return;
            default:
                return;
        }
    }

    public static void w(String tag, String msg) {
        w(tag, msg, LEVEL.NORMAL);
    }

    public static void w(String tag, String msg, LEVEL level) {
        switch (level) {
            case NORMAL:
            case IMPORTANT:
                Log.w(tag, msg);
                return;
            case HIGH_IMPORTANT:
                Log.w(tag, msg);
                addLogText(tag, msg);
                return;
            default:
                return;
        }
    }

    public static void i(String tag, String msg) {
        i(tag, msg, LEVEL.NORMAL);
    }

    public static void i(String tag, String msg, LEVEL level) {
        switch (level) {
            case NORMAL:
                if (DEBUG) {
                    Log.i(tag, msg);
                    return;
                }
                return;
            case IMPORTANT:
                Log.i(tag, msg);
                return;
            case HIGH_IMPORTANT:
                Log.i(tag, msg);
                addLogText(tag, msg);
                return;
            default:
                return;
        }
    }

    public static void e(String tag, String msg) {
        e(tag, msg, LEVEL.NORMAL);
    }

    public static void e(String tag, String msg, LEVEL level) {
        switch (level) {
            case NORMAL:
            case IMPORTANT:
                Log.e(tag, msg);
                return;
            case HIGH_IMPORTANT:
                Log.e(tag, msg);
                addLogText(tag, msg);
                return;
            default:
                return;
        }
    }

    public static void wtf(String tag, String msg) {
        Log.wtf(tag, msg);
    }

    private static void addLogText(String tag, String msg) {
        String log = getCurDateTime() + " - " + tag + ": " + msg;
        synchronized (sLock) {
            if (sLogTextArrayFull || sLogText.size() > LOG_DATA_SIZE) {
                sLogTextArrayFull = true;
                ArrayList arrayList = sLogText;
                int i = sLogTextIndex;
                sLogTextIndex = i + 1;
                arrayList.set(i, log);
                if (sLogTextIndex >= LOG_DATA_SIZE) {
                    sLogTextIndex = 0;
                }
            } else {
                sLogText.add(log);
            }
        }
    }

    public static List<String> getDumpLogTextAndClear() {
        List<String> result;
        synchronized (sLock) {
            result = new ArrayList(sLogText);
            sLogTextArrayFull = false;
            sLogTextIndex = 0;
            sLogText.clear();
        }
        return result;
    }

    public static void addLogData(String key, String value) {
        if (!TextUtils.isEmpty(key)) {
            sLogData.put(key, value);
        }
    }

    private static String getCurDateTime() {
        return sDateFormat.format(Calendar.getInstance().getTime());
    }

    public static void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
        synchronized (sLock) {
            long identity = Binder.clearCallingIdentity();
            try {
                writer.println("++++++++++++++ Always On Display - Working log (aod__) ++++++++++++++");
                writer.println("AOD Data list:");
                writer.println();
                for (String key : sLogData.keySet()) {
                    writer.println(" [key: " + key + "], [value: " + ((String) sLogData.get(key)) + "]");
                }
                writer.println();
                writer.println("AOD Event log:");
                Iterator<String> ite = sLogText.iterator();
                int line = 1;
                while (true) {
                    int line2 = line;
                    if (!ite.hasNext()) {
                        break;
                    }
                    line = line2 + 1;
                    writer.println("[" + line2 + "] " + ((String) ite.next()));
                }
                writer.println("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }
    }
}
