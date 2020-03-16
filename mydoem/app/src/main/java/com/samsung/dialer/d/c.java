package com.samsung.dialer.d;


public class c  {

public static java.lang.String a(android.content.Context r22, java.lang.String r23) {
        /*
        r2 = 2;
        r8 = new byte[r2];
        r2 = 4;
        r9 = new byte[r2];
        r5 = 0;
        r4 = 0;
        r3 = r22.getContentResolver();
        r6 = "number_region_activation_preference";
        r2 = com.samsung.dialer.f.h.f();
        if (r2 == 0) goto L_0x001e;
    L_0x0015:
        r2 = 0;
    L_0x0016:
        r2 = android.provider.Settings.System.getInt(r3, r6, r2);
        if (r2 != 0) goto L_0x0020;
    L_0x001c:
        r2 = 0;
    L_0x001d:
        return r2;
    L_0x001e:
        r2 = 1;
        goto L_0x0016;
    L_0x0020:
        r2 = com.samsung.dialer.f.h.f();
        if (r2 == 0) goto L_0x0031;
    L_0x0026:
        r2 = com.samsung.dialer.f.t.a();
        r0 = r23;
        r2 = r2.a(r0);
        goto L_0x001d;
    L_0x0031:
        r2 = r22.getResources();
        r2 = r2.getConfiguration();
        r2 = r2.locale;
        r3 = java.util.Locale.CHINA;
        r3 = r2.equals(r3);
        if (r3 != 0) goto L_0x0058;
    L_0x0043:
        r3 = java.util.Locale.TAIWAN;
        r3 = r2.equals(r3);
        if (r3 != 0) goto L_0x0058;
    L_0x004b:
        r2 = r2.toString();
        r3 = "zh_HK";
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x00e4;
    L_0x0058:
        r2 = 1;
    L_0x0059:
        if (r2 == 0) goto L_0x00e7;
    L_0x005b:
        r2 = 1;
    L_0x005c:
        r3 = r23.length();
        r6 = 0;
        r0 = r23;
        r6 = r0.charAt(r6);
        r7 = 48;
        if (r6 != r7) goto L_0x0112;
    L_0x006b:
        r6 = 1;
        r0 = r23;
        r6 = r0.charAt(r6);
        r7 = 51;
        if (r6 >= r7) goto L_0x0102;
    L_0x0076:
        r6 = 3;
        if (r3 < r6) goto L_0x00ff;
    L_0x0079:
        r3 = 0;
        r6 = 3;
        r0 = r23;
        r3 = r0.substring(r3, r6);
    L_0x0081:
        r6 = 0;
        r7 = r6;
        r6 = r3;
    L_0x0084:
        r3 = new java.io.File;	 Catch:{ OutOfMemoryError -> 0x02a6, Exception -> 0x02b5 }
        r10 = "/data/data/com.android.phone/HomeLocationDB.bin";
        r3.<init>(r10);	 Catch:{ OutOfMemoryError -> 0x02a6, Exception -> 0x02b5 }
        r3 = r3.exists();	 Catch:{ OutOfMemoryError -> 0x02a6, Exception -> 0x02b5 }
        if (r3 == 0) goto L_0x0125;
    L_0x0092:
        r3 = new java.io.RandomAccessFile;	 Catch:{ OutOfMemoryError -> 0x02a6, Exception -> 0x02b5 }
        r10 = "/data/data/com.android.phone/HomeLocationDB.bin";
        r11 = "r";
        r3.<init>(r10, r11);	 Catch:{ OutOfMemoryError -> 0x02a6, Exception -> 0x02b5 }
        r4 = r3;
    L_0x009e:
        r10 = a(r9);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r12 = a(r9);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r14 = a(r9);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r16 = a(r9);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r18 = r4.getFilePointer();	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r20 = 48;
        r18 = r18 + r20;
        r0 = r18;
        r4.seek(r0);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r18 = 96;
        r10 = r10 * r18;
        r3 = (int) r10;	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r3 = new byte[r3];	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r6 = java.lang.Integer.parseInt(r6);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        if (r7 != 0) goto L_0x01b9;
    L_0x00c8:
        r8 = 131; // 0x83 float:1.84E-43 double:6.47E-322;
        r8 = r8 * r12;
        r7 = (int) r8;	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r7 = new byte[r7];	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r8 = (int) r12;	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r6 = a(r7, r6, r8);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r8 = -1;
        if (r6 != r8) goto L_0x0133;
    L_0x00d6:
        r4.close();	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r2 = 0;
        if (r4 == 0) goto L_0x001d;
    L_0x00dc:
        r4.close();	 Catch:{ IOException -> 0x00e1 }
        goto L_0x001d;
    L_0x00e1:
        r3 = move-exception;
        goto L_0x001d;
    L_0x00e4:
        r2 = 0;
        goto L_0x0059;
    L_0x00e7:
        r2 = r22.getResources();
        r2 = r2.getConfiguration();
        r2 = r2.locale;
        r3 = java.util.Locale.KOREA;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x00fc;
    L_0x00f9:
        r2 = 2;
        goto L_0x005c;
    L_0x00fc:
        r2 = 3;
        goto L_0x005c;
    L_0x00ff:
        r2 = 0;
        goto L_0x001d;
    L_0x0102:
        r6 = 4;
        if (r3 < r6) goto L_0x010f;
    L_0x0105:
        r3 = 0;
        r6 = 4;
        r0 = r23;
        r3 = r0.substring(r3, r6);
        goto L_0x0081;
    L_0x010f:
        r2 = 0;
        goto L_0x001d;
    L_0x0112:
        r6 = 7;
        if (r3 < r6) goto L_0x0122;
    L_0x0115:
        r3 = 0;
        r6 = 7;
        r0 = r23;
        r3 = r0.substring(r3, r6);
        r6 = 1;
        r7 = r6;
        r6 = r3;
        goto L_0x0084;
    L_0x0122:
        r2 = 0;
        goto L_0x001d;
    L_0x0125:
        r3 = new java.io.RandomAccessFile;	 Catch:{ OutOfMemoryError -> 0x02a6, Exception -> 0x02b5 }
        r10 = "/system/etc/HomeLocationDB.bin";
        r11 = "r";
        r3.<init>(r10, r11);	 Catch:{ OutOfMemoryError -> 0x02a6, Exception -> 0x02b5 }
        r4 = r3;
        goto L_0x009e;
    L_0x0133:
        r8 = r6 * 131;
        r8 = r7[r8];	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        if (r8 >= 0) goto L_0x0147;
    L_0x0139:
        r4.close();	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r2 = 0;
        if (r4 == 0) goto L_0x001d;
    L_0x013f:
        r4.close();	 Catch:{ IOException -> 0x0144 }
        goto L_0x001d;
    L_0x0144:
        r3 = move-exception;
        goto L_0x001d;
    L_0x0147:
        r9 = 1;
        if (r2 != r9) goto L_0x017c;
    L_0x014a:
        if (r8 == 0) goto L_0x02e9;
    L_0x014c:
        r2 = r8 + -1;
        r2 = r2 * 96;
        r5 = 32;
        r3 = c(r3, r2, r5);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
    L_0x0156:
        r2 = r6 * 131;
        r2 = r2 + 1;
        r5 = 32;
        r2 = c(r7, r2, r5);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
    L_0x0160:
        if (r4 == 0) goto L_0x0165;
    L_0x0162:
        r4.close();	 Catch:{ IOException -> 0x02d1 }
    L_0x0165:
        if (r3 == 0) goto L_0x02ca;
    L_0x0167:
        if (r2 == 0) goto L_0x02ca;
    L_0x0169:
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r3 = r4.append(r3);
        r2 = r3.append(r2);
        r2 = r2.toString();
        goto L_0x001d;
    L_0x017c:
        r9 = 2;
        if (r2 != r9) goto L_0x019e;
    L_0x017f:
        if (r8 == 0) goto L_0x02e6;
    L_0x0181:
        r2 = r8 + -1;
        r2 = r2 * 96;
        r2 = r2 + 32;
        r2 = r2 + 32;
        r5 = 32;
        r3 = c(r3, r2, r5);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
    L_0x018f:
        r2 = r6 * 131;
        r2 = r2 + 1;
        r2 = r2 + 32;
        r2 = r2 + 64;
        r5 = 32;
        r2 = c(r7, r2, r5);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        goto L_0x0160;
    L_0x019e:
        if (r8 == 0) goto L_0x02e3;
    L_0x01a0:
        r2 = r8 + -1;
        r2 = r2 * 96;
        r2 = r2 + 32;
        r5 = 32;
        r3 = c(r3, r2, r5);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
    L_0x01ac:
        r2 = r6 * 131;
        r2 = r2 + 1;
        r2 = r2 + 32;
        r5 = 64;
        r2 = c(r7, r2, r5);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        goto L_0x0160;
    L_0x01b9:
        r10 = r4.getFilePointer();	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r18 = 131; // 0x83 float:1.84E-43 double:6.47E-322;
        r12 = r12 * r18;
        r10 = r10 + r12;
        r4.seek(r10);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r10 = 129; // 0x81 float:1.81E-43 double:6.37E-322;
        r10 = r10 * r14;
        r7 = (int) r10;	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r7 = new byte[r7];	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r10 = 2;
        r10 = r10 * r16;
        r9 = (int) r10;	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r9 = new byte[r9];	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r10 = 0;
        r11 = 3;
        r0 = r23;
        r10 = r0.substring(r10, r11);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r10 = java.lang.Integer.parseInt(r10);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r0 = r16;
        r11 = (int) r0;	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r9 = b(r9, r10, r11);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        if (r9 >= 0) goto L_0x01f5;
    L_0x01e7:
        r4.close();	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r2 = 0;
        if (r4 == 0) goto L_0x001d;
    L_0x01ed:
        r4.close();	 Catch:{ IOException -> 0x01f2 }
        goto L_0x001d;
    L_0x01f2:
        r3 = move-exception;
        goto L_0x001d;
    L_0x01f5:
        r10 = 20000; // 0x4e20 float:2.8026E-41 double:9.8813E-320;
        r10 = new byte[r10];	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r12 = r4.getFilePointer();	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r14 = (long) r9;	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r16 = 10000; // 0x2710 float:1.4013E-41 double:4.9407E-320;
        r14 = r14 * r16;
        r16 = 2;
        r14 = r14 * r16;
        r12 = r12 + r14;
        r4.seek(r12);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r6 = r6 % 10000;
        r9 = 0;
        r11 = r6 * 2;
        r11 = r10[r11];	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r8[r9] = r11;	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r9 = 1;
        r6 = r6 * 2;
        r6 = r6 + 1;
        r6 = r10[r6];	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r8[r9] = r6;	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r6 = b(r8);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        if (r6 > 0) goto L_0x0230;
    L_0x0222:
        r4.close();	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r2 = 0;
        if (r4 == 0) goto L_0x001d;
    L_0x0228:
        r4.close();	 Catch:{ IOException -> 0x022d }
        goto L_0x001d;
    L_0x022d:
        r3 = move-exception;
        goto L_0x001d;
    L_0x0230:
        r8 = r6 + -1;
        r8 = r8 * 129;
        r8 = r7[r8];	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        if (r8 >= 0) goto L_0x0246;
    L_0x0238:
        r4.close();	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        r2 = 0;
        if (r4 == 0) goto L_0x001d;
    L_0x023e:
        r4.close();	 Catch:{ IOException -> 0x0243 }
        goto L_0x001d;
    L_0x0243:
        r3 = move-exception;
        goto L_0x001d;
    L_0x0246:
        r9 = 1;
        if (r2 != r9) goto L_0x0263;
    L_0x0249:
        if (r8 == 0) goto L_0x02e0;
    L_0x024b:
        r2 = r8 + -1;
        r2 = r2 * 96;
        r5 = 32;
        r3 = c(r3, r2, r5);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
    L_0x0255:
        r2 = r6 + -1;
        r2 = r2 * 129;
        r2 = r2 + 1;
        r5 = 32;
        r2 = c(r7, r2, r5);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        goto L_0x0160;
    L_0x0263:
        r9 = 2;
        if (r2 != r9) goto L_0x0288;
    L_0x0266:
        if (r8 == 0) goto L_0x02de;
    L_0x0268:
        r2 = r8 + -1;
        r2 = r2 * 96;
        r2 = r2 + 32;
        r2 = r2 + 32;
        r5 = 32;
        r3 = c(r3, r2, r5);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
    L_0x0276:
        r2 = r6 + -1;
        r2 = r2 * 129;
        r2 = r2 + 1;
        r2 = r2 + 32;
        r2 = r2 + 64;
        r5 = 32;
        r2 = c(r7, r2, r5);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        goto L_0x0160;
    L_0x0288:
        if (r8 == 0) goto L_0x02dc;
    L_0x028a:
        r2 = r8 + -1;
        r2 = r2 * 96;
        r2 = r2 + 32;
        r5 = 32;
        r3 = c(r3, r2, r5);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
    L_0x0296:
        r2 = r6 + -1;
        r2 = r2 * 129;
        r2 = r2 + 1;
        r2 = r2 + 32;
        r5 = 64;
        r2 = c(r7, r2, r5);	 Catch:{ OutOfMemoryError -> 0x02d9, Exception -> 0x02b5 }
        goto L_0x0160;
    L_0x02a6:
        r2 = move-exception;
        r3 = r4;
    L_0x02a8:
        r2 = "";
        if (r3 == 0) goto L_0x001d;
    L_0x02ad:
        r3.close();	 Catch:{ IOException -> 0x02b2 }
        goto L_0x001d;
    L_0x02b2:
        r3 = move-exception;
        goto L_0x001d;
    L_0x02b5:
        r2 = move-exception;
        r2 = "";
        if (r4 == 0) goto L_0x001d;
    L_0x02bb:
        r4.close();	 Catch:{ IOException -> 0x02c0 }
        goto L_0x001d;
    L_0x02c0:
        r3 = move-exception;
        goto L_0x001d;
    L_0x02c3:
        r2 = move-exception;
    L_0x02c4:
        if (r4 == 0) goto L_0x02c9;
    L_0x02c6:
        r4.close();	 Catch:{ IOException -> 0x02d4 }
    L_0x02c9:
        throw r2;
    L_0x02ca:
        if (r2 != 0) goto L_0x001d;
    L_0x02cc:
        r2 = "";
        goto L_0x001d;
    L_0x02d1:
        r4 = move-exception;
        goto L_0x0165;
    L_0x02d4:
        r3 = move-exception;
        goto L_0x02c9;
    L_0x02d6:
        r2 = move-exception;
        r4 = r3;
        goto L_0x02c4;
    L_0x02d9:
        r2 = move-exception;
        r3 = r4;
        goto L_0x02a8;
    L_0x02dc:
        r3 = r5;
        goto L_0x0296;
    L_0x02de:
        r3 = r5;
        goto L_0x0276;
    L_0x02e0:
        r3 = r5;
        goto L_0x0255;
    L_0x02e3:
        r3 = r5;
        goto L_0x01ac;
    L_0x02e6:
        r3 = r5;
        goto L_0x018f;
    L_0x02e9:
        r3 = r5;
        goto L_0x0156;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.dialer.d.i.a(android.content.Context, java.lang.String):java.lang.String");
        }
}



