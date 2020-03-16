package com.samsung.android.weather.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.UnknownHostException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class SLog {
    private static final int BIG_BUF_MAXLENGTH = 3072;
    private static final int BUF_MAXLENGTH = 512;
    private static final int DEBUG = 3;
    public static final boolean DEB_PRINT = true;
    public static final String DEFAULT_TAG_PREFIX = "[WEATHER]";
    public static final boolean ENG_PRINT = (!Build.TYPE.equals("user"));
    private static final int ERROR = 6;
    private static final String HEX = "0123456789ABCDEF";
    private static final int INFO = 4;
    private static String LOG_TAG = "SLog";
    private static boolean PRINT_LOG = true;
    private static String TAG_PREFIX = DEFAULT_TAG_PREFIX;
    private static final int VERBOSE = 2;
    private static final int WARN = 5;
    private static final String aa = "692591387DDB1143B8DAF26D16A62808E98B339503BF8A2AD4E9B99451A75C94BABE80A32B61DDDBB0F8619094B5E95A";
    private static String cc = null;
    private static final Object dds = new Object();
    private static final Object ees = new Object();
    private static boolean enableAES = true;
    private static boolean enableThreadName = false;
    private static Cipher mDecCipher;
    private static Cipher mEncCipher;
    private static Callback mOnPrintCallback = null;
    private static String ps = "com.sec.everglades";

    public interface Callback {
        void onPrintln(int i, String str, String str2, boolean z);
    }

    static {
        try {
            mEncCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            mDecCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            getDd(aa);
        } catch (NoSuchAlgorithmException e) {
            e(LOG_TAG, "getInstance, NoSuchAlgorithmException");
        } catch (NoSuchPaddingException e2) {
            e(LOG_TAG, "getInstance, NoSuchPaddingException");
        }
    }

    private SLog() {
    }

    private static void appendHex(StringBuffer stringBuffer, byte b) {
        stringBuffer.append(HEX.charAt((b >> 4) & 15)).append(HEX.charAt(b & 15));
    }

    public static void d(String str, String str2) {
        if (PRINT_LOG) {
            println(3, str, str2, false);
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (PRINT_LOG) {
            println(3, str, str2 + 10 + getStackTraceString(th), false);
        }
    }

    public static void d_raw(String str, String str2) {
        if (PRINT_LOG) {
            println(3, str, str2, true);
        }
    }

    private static String dd(String str, String str2) {
        if (!enableAES || str == null || str.length() == 0) {
            return str;
        }
        if (str2 == null) {
            return null;
        }
        String str3;
        synchronized (dds) {
            str3 = str;

        }
        return str3;
    }

    public static void e(String str, String str2) {
        if (PRINT_LOG) {
            println(6, str, str2, false);
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (PRINT_LOG) {
            println(6, str, str2 + 10 + getStackTraceString(th), false);
        }
    }

    private static String ee(String str) {
        if (!enableAES || str == null || str.length() == 0) {
            return str;
        }
        if (cc == null) {
            return null;
        }
        String str2;
        synchronized (ees) {
            str2 = "";

        }
        return str2;
    }

    public static void eng(String str, String str2) {
        if (PRINT_LOG && !Build.TYPE.equals("user")) {
            println(3, str, str2, false);
        }
    }

    private static void getDd(String str) {
        if (enableAES && cc == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str);
            String stringBuffer2 = stringBuffer.reverse().toString();
            String str2 = ps;
            int length = str2.length();
            String str3 = null;
            try {
                str3 = dd(stringBuffer2, str2.substring(length - 16, length));
            } catch (Exception e) {
                e("AESUtil", e.toString());
            }
            cc = str3;
        }
    }

    private static String getKey() {
        return cc;
    }

    private static String getStackTraceString(Throwable th) {
        if (th == null) {
            return "";
        }
        for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
            if (th2 instanceof UnknownHostException) {
                return "";
            }
        }
        Writer stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    private static String getTag(Class<?> cls) {
        return TAG_PREFIX + cls.getSimpleName();
    }

    private static String getTag(String str) {
        return TAG_PREFIX + str;
    }

    public static void i(String str, String str2) {
        if (PRINT_LOG) {
            println(4, str, str2, false);
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (PRINT_LOG) {
            println(4, str, str2 + 10 + getStackTraceString(th), false);
        }
    }

    public static void init(Context context, String str, boolean z) {
        init(context, str, true, z, false, null);
    }

    public static void init(Context context, String str, boolean z, boolean z2, boolean z3, Callback callback) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            String str2 = "";
            if (z) {
                str2 = "@" + (context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionCode % 10);
            }
            String replace = context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionName.replace(".", "");
            String[] split = replace.split("-");
            if (split.length > 0) {
                replace = split[0];
            }
            if (z2) {
                setEnableAES(Build.TYPE.equals("user"));
            } else {
                setEnableAES(false);
            }
            if (packageInfo.packageName != null) {
                setTagPrefix("[" + str + "(" + replace + str2 + ")]");
                d("", "==============================================================================================");
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("[Package Name : " + packageInfo.packageName + "]");
                stringBuffer.append("[Version Name : " + packageInfo.versionName + "]");
                stringBuffer.append("[Version Network : " + packageInfo.versionCode + " ] ");
                d("", stringBuffer.toString());
                d("", "==============================================================================================");
            }
            enableThreadName = z3;
        } catch (NameNotFoundException e) {
            e("", "" + e.getLocalizedMessage());
        } catch (Exception e2) {
            e("", "" + e2.getLocalizedMessage());
        }
        mOnPrintCallback = callback;
    }

    private static int println(int i, String str, String str2, boolean z) {
        if (str2 == null) {
            str2 = "";
        }
        if (mOnPrintCallback != null) {
            mOnPrintCallback.onPrintln(i, str, str2, z);
        }
        int length = str2.length();
        StackTraceElement stackTraceElement = new Exception().getStackTrace()[2];
        String fileName = stackTraceElement.getFileName();
        int lastIndexOf = stackTraceElement.getFileName().lastIndexOf(".");
        if (lastIndexOf > -1) {
            fileName = stackTraceElement.getFileName().substring(0, lastIndexOf);
        }
        String str3 = fileName + ":" + stackTraceElement.getLineNumber();
        int i2 = BUF_MAXLENGTH;
        if (z) {
            i2 = BIG_BUF_MAXLENGTH;
        }
        String str4 = "";
        if (enableThreadName) {
            str4 = Thread.currentThread().getName() + ": ";
        }
        for (int i3 = 0; length > i3; i3 += i2) {
            String str5 = str3 + " " + str2.substring(i3, Math.min(length - i3, i2) + i3);
            Log.println(i, TAG_PREFIX + " " + str, "{[" + str4 + ee(str5) + "]}");
        }
        return length;
    }

    private static void setEnableAES(boolean z) {
        enableAES = z;
    }

    private static void setTagPrefix(String str) {
        TAG_PREFIX = str;
    }

    private static byte[] toByte(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = Integer.valueOf(str.substring(i * 2, (i * 2) + 2), 16).byteValue();
        }
        return bArr;
    }

    private static String toHex(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte appendHex : bArr) {
            appendHex(stringBuffer, appendHex);
        }
        return stringBuffer.toString();
    }

    public static void v(String str, String str2) {
        if (PRINT_LOG) {
            println(2, str, str2, false);
        }
    }

    public static void v(String str, String str2, Throwable th) {
        if (PRINT_LOG) {
            println(2, str, str2 + 10 + getStackTraceString(th), false);
        }
    }

    public static void w(String str, String str2) {
        if (PRINT_LOG) {
            println(5, str, str2, false);
        }
    }

    public static void w(String str, String str2, Throwable th) {
        if (PRINT_LOG) {
            println(5, str, str2 + 10 + getStackTraceString(th), false);
        }
    }

    public static void wtf(String str, String str2) {
        if (PRINT_LOG) {
            Log.wtf(str, str2, null);
        }
    }
}
