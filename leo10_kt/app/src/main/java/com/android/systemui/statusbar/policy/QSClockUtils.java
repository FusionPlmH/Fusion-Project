package com.android.systemui.statusbar.policy;

public class QSClockUtils {
    public static String getBasicClockFormat(String str) {
        int i = 0;
        int i2 = i;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt == '\'') {
                i2 ^= 1;
            }
            if (i2 == 0 && charAt == 'a') {
                break;
            }
            i++;
        }
        i = -1;
        if (i < 0) {
            return str;
        }
        i2 = i;
        while (i2 > 0 && Character.isWhitespace(str.charAt(i2 - 1))) {
            i2--;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str.substring(0, i2));
        stringBuilder.append(61184);
        stringBuilder.append(str.substring(i2, i));
        stringBuilder.append("a");
        stringBuilder.append(61185);
        stringBuilder.append(str.substring(i + 1));
        return stringBuilder.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:73:0x018f  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0156 A:{SYNTHETIC, Splitter:B:68:0x0156} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0156 A:{SYNTHETIC, Splitter:B:68:0x0156} */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x018f  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x018f  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0156 A:{SYNTHETIC, Splitter:B:68:0x0156} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0156 A:{SYNTHETIC, Splitter:B:68:0x0156} */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x018f  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x018f  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0156 A:{SYNTHETIC, Splitter:B:68:0x0156} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0156 A:{SYNTHETIC, Splitter:B:68:0x0156} */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x018f  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x018f  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0156 A:{SYNTHETIC, Splitter:B:68:0x0156} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0156 A:{SYNTHETIC, Splitter:B:68:0x0156} */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x018f  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x018f  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0156 A:{SYNTHETIC, Splitter:B:68:0x0156} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0156 A:{SYNTHETIC, Splitter:B:68:0x0156} */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x018f  */
    public static java.lang.String getPersianCalendar(android.content.Context r17) {
        /*
        r0 = java.util.Calendar.getInstance();
        r1 = java.lang.System.currentTimeMillis();
        r0.setTimeInMillis(r1);
        r1 = java.util.Calendar.getInstance();
        r2 = java.util.Calendar.getInstance();
        r3 = java.util.Calendar.getInstance();
        r4 = java.util.Calendar.getInstance();
        r5 = 19;
        r6 = 2;
        r7 = 2029; // 0x7ed float:2.843E-42 double:1.0025E-320;
        r1.set(r7, r6, r5);
        r7 = 2030; // 0x7ee float:2.845E-42 double:1.003E-320;
        r8 = 20;
        r2.set(r7, r6, r8);
        r9 = 2033; // 0x7f1 float:2.849E-42 double:1.0044E-320;
        r3.set(r9, r6, r5);
        r5 = 2034; // 0x7f2 float:2.85E-42 double:1.005E-320;
        r4.set(r5, r6, r8);
        r1 = r0.after(r1);
        r9 = 5;
        r10 = 0;
        r11 = 1;
        if (r1 == 0) goto L_0x0043;
    L_0x003d:
        r1 = r0.before(r2);
        if (r1 != 0) goto L_0x004f;
    L_0x0043:
        r1 = r0.after(r3);
        if (r1 == 0) goto L_0x0054;
    L_0x0049:
        r1 = r0.before(r4);
        if (r1 == 0) goto L_0x0054;
    L_0x004f:
        r0.add(r9, r11);
        r1 = r11;
        goto L_0x0055;
    L_0x0054:
        r1 = r10;
    L_0x0055:
        r2 = java.util.Calendar.getInstance();
        r3 = r0.getTimeInMillis();
        r2.setTimeInMillis(r3);
        r0 = r2.get(r11);
        r0 = r0 + 1900;
        r3 = r2.get(r6);
        r3 = r3 + r11;
        r2 = r2.get(r9);
        r4 = 12;
        r4 = new int[r4];
        r4 = {0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334};
        r6 = 12;
        r6 = new int[r6];
        r6 = {0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335};
        r9 = r0 % 4;
        r12 = 79;
        r13 = 10;
        r14 = 186; // 0xba float:2.6E-43 double:9.2E-322;
        r15 = 31;
        r16 = 30;
        if (r9 == 0) goto L_0x00c7;
    L_0x008b:
        r6 = r3 + -1;
        r4 = r4[r6];
        r4 = r4 + r2;
        if (r4 <= r12) goto L_0x00b2;
    L_0x0092:
        r4 = r4 - r12;
        if (r4 > r14) goto L_0x009e;
    L_0x0095:
        r6 = r4 % 31;
        if (r6 == 0) goto L_0x009c;
    L_0x0099:
        r4 = r4 / r15;
    L_0x009a:
        r4 = r4 + r11;
        goto L_0x00a7;
    L_0x009c:
        r4 = r4 / r15;
        goto L_0x00af;
    L_0x009e:
        r4 = r4 - r14;
        r6 = r4 % 30;
        if (r6 == 0) goto L_0x00a9;
    L_0x00a3:
        r4 = r4 / 30;
    L_0x00a5:
        r4 = r4 + 7;
    L_0x00a7:
        r15 = r6;
        goto L_0x00af;
    L_0x00a9:
        r4 = r4 / 30;
    L_0x00ab:
        r4 = r4 + 6;
        r15 = r16;
    L_0x00af:
        r6 = r0 + -621;
        goto L_0x00fd;
    L_0x00b2:
        r6 = 1996; // 0x7cc float:2.797E-42 double:9.86E-321;
        if (r0 <= r6) goto L_0x00bb;
    L_0x00b6:
        if (r9 != r11) goto L_0x00bb;
    L_0x00b8:
        r6 = 11;
        goto L_0x00bc;
    L_0x00bb:
        r6 = r13;
    L_0x00bc:
        r4 = r4 + r6;
        r6 = r4 % 30;
        if (r6 == 0) goto L_0x00c4;
    L_0x00c1:
        r4 = r4 / 30;
        goto L_0x00f2;
    L_0x00c4:
        r4 = r4 / 30;
        goto L_0x00f7;
    L_0x00c7:
        r4 = r3 + -1;
        r4 = r6[r4];
        r4 = r4 + r2;
        r6 = 1996; // 0x7cc float:2.797E-42 double:9.86E-321;
        if (r0 < r6) goto L_0x00d1;
    L_0x00d0:
        goto L_0x00d3;
    L_0x00d1:
        r12 = 80;
    L_0x00d3:
        if (r4 <= r12) goto L_0x00eb;
    L_0x00d5:
        r4 = r4 - r12;
        if (r4 > r14) goto L_0x00e0;
    L_0x00d8:
        r6 = r4 % 31;
        if (r6 == 0) goto L_0x00de;
    L_0x00dc:
        r4 = r4 / r15;
        goto L_0x009a;
    L_0x00de:
        r4 = r4 / r15;
        goto L_0x00af;
    L_0x00e0:
        r4 = r4 - r14;
        r6 = r4 % 30;
        if (r6 == 0) goto L_0x00e8;
    L_0x00e5:
        r4 = r4 / 30;
        goto L_0x00a5;
    L_0x00e8:
        r4 = r4 / 30;
        goto L_0x00ab;
    L_0x00eb:
        r4 = r4 + r13;
        r6 = r4 % 30;
        if (r6 == 0) goto L_0x00f5;
    L_0x00f0:
        r4 = r4 / 30;
    L_0x00f2:
        r4 = r4 + r13;
        r15 = r6;
        goto L_0x00fb;
    L_0x00f5:
        r4 = r4 / 30;
    L_0x00f7:
        r4 = r4 + 9;
        r15 = r16;
    L_0x00fb:
        r6 = r0 + -622;
    L_0x00fd:
        if (r1 != 0) goto L_0x010a;
    L_0x00ff:
        if (r0 == r7) goto L_0x0103;
    L_0x0101:
        if (r0 != r5) goto L_0x010a;
    L_0x0103:
        r0 = 3;
        if (r3 != r0) goto L_0x010a;
    L_0x0106:
        if (r2 != r8) goto L_0x010a;
    L_0x0108:
        r15 = r15 + 1;
    L_0x010a:
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r1 = "getPersianCalendar : year = ";
        r0.append(r1);
        r0.append(r6);
        r1 = " month = ";
        r0.append(r1);
        r0.append(r4);
        r1 = " date = ";
        r0.append(r1);
        r0.append(r15);
        r0 = r0.toString();
        r1 = "QSClockBellTower";
        android.util.Log.d(r1, r0);
        r0 = java.util.Locale.getDefault();
        r2 = new java.lang.Object[r11];
        r3 = java.lang.Integer.valueOf(r15);
        r2[r10] = r3;
        r3 = "%d";
        r2 = java.lang.String.format(r0, r3, r2);
        r0 = java.util.Locale.getDefault();
        r0 = r0.getLanguage();
        r3 = java.util.Locale.ENGLISH;
        r3 = r3.getLanguage();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x018f;
    L_0x0156:
        r0 = r17.getResources();	 Catch:{ Exception -> 0x0163 }
        r3 = com.android.systemui.R.array.persian_month_name;	 Catch:{ Exception -> 0x0163 }
        r0 = r0.getStringArray(r3);	 Catch:{ Exception -> 0x0163 }
        r0 = r0[r4];	 Catch:{ Exception -> 0x0163 }
        goto L_0x017a;
    L_0x0163:
        r0 = move-exception;
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "exception: ";
        r3.append(r4);
        r3.append(r0);
        r0 = r3.toString();
        android.util.Log.e(r1, r0);
        r0 = "";
    L_0x017a:
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r1.append(r0);
        r0 = " ";
        r1.append(r0);
        r1.append(r2);
        r0 = r1.toString();
        goto L_0x01d7;
    L_0x018f:
        r0 = java.util.Locale.getDefault();
        r0 = r0.getLanguage();
        r3 = "fa";
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x01f2;
    L_0x019f:
        r0 = r17.getResources();	 Catch:{ Exception -> 0x01ac }
        r3 = com.android.systemui.R.array.persian_month_name_for_fa;	 Catch:{ Exception -> 0x01ac }
        r0 = r0.getStringArray(r3);	 Catch:{ Exception -> 0x01ac }
        r0 = r0[r4];	 Catch:{ Exception -> 0x01ac }
        goto L_0x01c3;
    L_0x01ac:
        r0 = move-exception;
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "exception: ";
        r3.append(r4);
        r3.append(r0);
        r0 = r3.toString();
        android.util.Log.e(r1, r0);
        r0 = "";
    L_0x01c3:
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r1.append(r2);
        r2 = " ";
        r1.append(r2);
        r1.append(r0);
        r0 = r1.toString();
    L_0x01d7:
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = " (";
        r1.append(r2);
        r0 = r0.toUpperCase();
        r1.append(r0);
        r0 = ")";
        r1.append(r0);
        r0 = r1.toString();
        return r0;
    L_0x01f2:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.policy.QSClockUtils.getPersianCalendar(android.content.Context):java.lang.String");
    }
}
