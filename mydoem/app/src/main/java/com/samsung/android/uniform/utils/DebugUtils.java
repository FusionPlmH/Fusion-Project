package com.samsung.android.uniform.utils;

import android.util.Log;
import java.util.HashMap;

public class DebugUtils {
    private static HashMap<String, Long> mTimeStamp = new HashMap();

    public static void setTimeStamp(String key) {
        mTimeStamp.put(key, Long.valueOf(System.currentTimeMillis()));
    }

    public static void printTimeStamp(String key, String tag, String log, boolean reset) {
        long currTime = System.currentTimeMillis();
        Long prevTime = (Long) mTimeStamp.get(key);
        if (prevTime == null) {
            Log.d(tag, log + ", at " + currTime);
        } else {
            Log.d(tag, log + ", for " + (currTime - prevTime.longValue()) + " ms");
        }
        if (reset) {
            mTimeStamp.put(key, Long.valueOf(currTime));
        }
    }
}
