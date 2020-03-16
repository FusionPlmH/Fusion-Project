 package com.samsung.android.settings.deviceinfo;

 import android.content.Context;
 import android.os.SystemProperties;

 import java.util.StringTokenizer;

 public class SecDeviceInfoUtils {

 public static String getCMCCBuildNumberSummary(Context context, String str) {
        StringBuilder stringBuilder = new StringBuilder(str);
        try {
            StringTokenizer stringTokenizer = new StringTokenizer(SystemProperties.get("ro.build.date", context.getResources().getString(2131887830)), " ");
            String[] strArr = new String[stringTokenizer.countTokens()];
            int i = 0;
            while (stringTokenizer.hasMoreElements()) {
                strArr[i] = stringTokenizer.nextToken();
                i++;
            }
            if (i != 6) {
                return stringBuilder.toString();
            }
            if (strArr[1].compareToIgnoreCase("Jan") == 0) {
                strArr[1] = "01";
            } else if (strArr[1].compareToIgnoreCase("Feb") == 0) {
                strArr[1] = "02";
            } else if (strArr[1].compareToIgnoreCase("Mar") == 0) {
                strArr[1] = "03";
            } else if (strArr[1].compareToIgnoreCase("Apr") == 0) {
                strArr[1] = "04";
            } else if (strArr[1].compareToIgnoreCase("May") == 0) {
                strArr[1] = "05";
            } else if (strArr[1].compareToIgnoreCase("Jun") == 0) {
                strArr[1] = "06";
            } else if (strArr[1].compareToIgnoreCase("Jul") == 0) {
                strArr[1] = "07";
            } else if (strArr[1].compareToIgnoreCase("Aug") == 0) {
                strArr[1] = "08";
            } else if (strArr[1].compareToIgnoreCase("Sep") == 0) {
                strArr[1] = "09";
            } else if (strArr[1].compareToIgnoreCase("Oct") == 0) {
                strArr[1] = "10";
            } else if (strArr[1].compareToIgnoreCase("Nov") == 0) {
                strArr[1] = "11";
            } else {
                strArr[1] = "12";
            }
            if (strArr[2].length() == 1) {
                stringBuilder.append("\n");
                stringBuilder.append(strArr[5]);
                stringBuilder.append("-");
                stringBuilder.append(strArr[1]);
                stringBuilder.append("-");
                stringBuilder.append("0");
                stringBuilder.append(strArr[2]);
                return stringBuilder.toString();
            }
            stringBuilder.append("\n");
            stringBuilder.append(strArr[5]);
            stringBuilder.append("-");
            stringBuilder.append(strArr[1]);
            stringBuilder.append("-");
            stringBuilder.append(strArr[2]);
            return stringBuilder.toString();
        } catch (NullPointerException e) {
            return stringBuilder.toString();
        }
    }
	 }
