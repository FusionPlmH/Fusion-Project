package com.samsung.android.feature;

import android.os.SystemProperties;
import android.util.Log;
import java.io.File;
import java.util.Hashtable;

public class SemCscFeature {
    private static final String FEATURE_XML = "/system/csc/feature.xml";
    private static final String MPS_FEATURE_XML = "/system/csc/others.xml";
    private static final String TAG = "SemCscFeature";
    private static SemCscFeature sInstance = null;
    private final int SALT_LENGTH = 256;
    private final String XML_HEADER = "<?xml";
    private Hashtable<String, String> mFeatureList = new Hashtable();
    private Hashtable<String, String> mFeatureList_2 = new Hashtable();
    private final byte[] salts = new byte[]{(byte) 65, (byte) -59, (byte) 33, (byte) -34, (byte) 107, (byte) 28, (byte) -107, (byte) 55, (byte) 78, (byte) 17, (byte) -81, (byte) 6, (byte) -80, (byte) -121, (byte) -35, (byte) -23, (byte) 72, (byte) 122, (byte) -63, (byte) -43, (byte) 68, (byte) 119, (byte) -78, (byte) -111, (byte) -60, (byte) 31, (byte) 60, (byte) 57, (byte) 92, (byte) -88, (byte) -100, (byte) -69, (byte) -106, (byte) 91, (byte) 69, (byte) 93, (byte) 110, (byte) 23, (byte) 93, (byte) 53, (byte) -44, (byte) -51, (byte) 64, (byte) -80, (byte) 46, (byte) 2, (byte) -4, (byte) 12, (byte) -45, (byte) 80, (byte) -44, (byte) -35, (byte) -111, (byte) -28, (byte) -66, (byte) -116, (byte) 39, (byte) 2, (byte) -27, (byte) -45, (byte) -52, (byte) 125, (byte) 39, (byte) 66, (byte) -90, (byte) 63, (byte) -105, (byte) -67, (byte) 84, (byte) -57, (byte) -4, (byte) -4, (byte) 101, (byte) -90, (byte) 81, (byte) 10, (byte) -33, (byte) 1, (byte) 67, (byte) -57, (byte) -71, (byte) 18, (byte) -74, (byte) 102, (byte) 96, (byte) -89, (byte) 64, (byte) -17, (byte) 54, (byte) -94, (byte) -84, (byte) -66, (byte) 14, (byte) 119, (byte) 121, (byte) 2, (byte) -78, (byte) -79, (byte) 89, (byte) 63, (byte) 93, (byte) 109, (byte) -78, (byte) -51, (byte) 66, (byte) -36, (byte) 32, (byte) 86, (byte) 3, (byte) -58, (byte) -15, (byte) 92, (byte) 58, (byte) 2, (byte) -89, (byte) -80, (byte) -13, (byte) -1, (byte) 122, (byte) -4, (byte) 48, (byte) 63, (byte) -44, (byte) 59, (byte) 100, (byte) -42, (byte) -45, (byte) 59, (byte) -7, (byte) -17, (byte) -54, (byte) 34, (byte) -54, (byte) 71, (byte) -64, (byte) -26, (byte) -87, (byte) -80, (byte) -17, (byte) -44, (byte) -38, (byte) -112, (byte) 70, (byte) 10, (byte) -106, (byte) 95, (byte) -24, (byte) -4, (byte) -118, (byte) 45, (byte) -85, (byte) -13, (byte) 85, (byte) 25, (byte) -102, (byte) -119, (byte) 13, (byte) -37, (byte) 116, (byte) 46, (byte) -69, (byte) 59, (byte) 42, (byte) -90, (byte) -38, (byte) -105, (byte) 101, (byte) -119, (byte) -36, (byte) 97, (byte) -3, (byte) -62, (byte) -91, (byte) -97, (byte) -125, (byte) 17, (byte) 14, (byte) 106, (byte) -72, (byte) -119, (byte) 99, (byte) 111, (byte) 20, (byte) 18, (byte) -27, (byte) 113, (byte) 64, (byte) -24, (byte) 74, (byte) -60, (byte) -100, (byte) 26, (byte) 56, (byte) -44, (byte) -70, (byte) 12, (byte) -51, (byte) -100, (byte) -32, (byte) -11, (byte) 26, (byte) 48, (byte) -117, (byte) 98, (byte) -93, (byte) 51, (byte) -25, (byte) -79, (byte) -31, (byte) 97, (byte) 87, (byte) -105, (byte) -64, (byte) 7, (byte) -13, (byte) -101, (byte) 33, (byte) -122, (byte) 5, (byte) -104, (byte) 89, (byte) -44, (byte) -117, (byte) 63, (byte) -80, (byte) -6, (byte) -71, (byte) -110, (byte) -29, (byte) -105, (byte) 116, (byte) 107, (byte) -93, (byte) 91, (byte) -41, (byte) -13, (byte) 20, (byte) -115, (byte) -78, (byte) 43, (byte) 79, (byte) -122, (byte) 6, (byte) 102, (byte) -32, (byte) 52, (byte) -118, (byte) -51, (byte) 72, (byte) -104, (byte) 41, (byte) -38, (byte) 124, (byte) 72, (byte) -126, (byte) -35};
    private final byte[] shifts = new byte[]{(byte) 1, (byte) 1, (byte) 0, (byte) 2, (byte) 2, (byte) 4, (byte) 5, (byte) 0, (byte) 4, (byte) 7, (byte) 1, (byte) 6, (byte) 5, (byte) 3, (byte) 3, (byte) 1, (byte) 2, (byte) 5, (byte) 0, (byte) 6, (byte) 2, (byte) 2, (byte) 4, (byte) 2, (byte) 2, (byte) 3, (byte) 0, (byte) 2, (byte) 1, (byte) 2, (byte) 4, (byte) 3, (byte) 4, (byte) 0, (byte) 0, (byte) 0, (byte) 3, (byte) 5, (byte) 3, (byte) 1, (byte) 6, (byte) 5, (byte) 6, (byte) 1, (byte) 1, (byte) 1, (byte) 0, (byte) 0, (byte) 3, (byte) 2, (byte) 7, (byte) 7, (byte) 5, (byte) 6, (byte) 7, (byte) 3, (byte) 5, (byte) 1, (byte) 0, (byte) 7, (byte) 6, (byte) 3, (byte) 6, (byte) 5, (byte) 4, (byte) 5, (byte) 3, (byte) 5, (byte) 1, (byte) 3, (byte) 3, (byte) 1, (byte) 5, (byte) 4, (byte) 1, (byte) 0, (byte) 0, (byte) 2, (byte) 6, (byte) 6, (byte) 6, (byte) 6, (byte) 4, (byte) 0, (byte) 1, (byte) 1, (byte) 0, (byte) 5, (byte) 5, (byte) 4, (byte) 2, (byte) 4, (byte) 6, (byte) 1, (byte) 7, (byte) 1, (byte) 2, (byte) 1, (byte) 1, (byte) 6, (byte) 5, (byte) 4, (byte) 7, (byte) 6, (byte) 5, (byte) 1, (byte) 6, (byte) 7, (byte) 0, (byte) 2, (byte) 6, (byte) 3, (byte) 1, (byte) 7, (byte) 1, (byte) 1, (byte) 7, (byte) 4, (byte) 0, (byte) 4, (byte) 2, (byte) 5, (byte) 3, (byte) 1, (byte) 1, (byte) 5, (byte) 6, (byte) 0, (byte) 3, (byte) 5, (byte) 3, (byte) 6, (byte) 5, (byte) 7, (byte) 2, (byte) 5, (byte) 6, (byte) 6, (byte) 2, (byte) 2, (byte) 3, (byte) 6, (byte) 0, (byte) 4, (byte) 3, (byte) 2, (byte) 0, (byte) 2, (byte) 2, (byte) 3, (byte) 5, (byte) 3, (byte) 3, (byte) 2, (byte) 5, (byte) 5, (byte) 5, (byte) 1, (byte) 3, (byte) 1, (byte) 1, (byte) 1, (byte) 4, (byte) 5, (byte) 1, (byte) 6, (byte) 2, (byte) 4, (byte) 7, (byte) 1, (byte) 4, (byte) 6, (byte) 0, (byte) 6, (byte) 4, (byte) 3, (byte) 2, (byte) 6, (byte) 1, (byte) 6, (byte) 3, (byte) 2, (byte) 1, (byte) 6, (byte) 7, (byte) 3, (byte) 2, (byte) 1, (byte) 1, (byte) 5, (byte) 6, (byte) 7, (byte) 2, (byte) 2, (byte) 2, (byte) 7, (byte) 4, (byte) 6, (byte) 7, (byte) 5, (byte) 3, (byte) 1, (byte) 4, (byte) 2, (byte) 7, (byte) 1, (byte) 6, (byte) 2, (byte) 4, (byte) 1, (byte) 5, (byte) 6, (byte) 5, (byte) 4, (byte) 5, (byte) 0, (byte) 1, (byte) 1, (byte) 6, (byte) 3, (byte) 7, (byte) 2, (byte) 0, (byte) 2, (byte) 5, (byte) 0, (byte) 1, (byte) 3, (byte) 3, (byte) 2, (byte) 6, (byte) 7, (byte) 7, (byte) 2, (byte) 5, (byte) 6, (byte) 0, (byte) 4, (byte) 1, (byte) 2, (byte) 5, (byte) 3, (byte) 7, (byte) 6, (byte) 5, (byte) 2, (byte) 5, (byte) 2, (byte) 0, (byte) 1, (byte) 3, (byte) 1, (byte) 4, (byte) 3, (byte) 4, (byte) 2};

    private SemCscFeature() {
        boolean z = false;
        try {
            File file = new File("/system/omc/SW_Configuration.xml");
            File file2 = new File("/odm/omc/SW_Configuration.xml");
            if (file.exists() || file2.exists()) {
                z = true;
            }
            String str = SystemProperties.get("persist.sys.omc_path", "");
            String str2 = SystemProperties.get("persist.sys.omcnw_path", "");
            String str3 = SystemProperties.get("persist.sys.omcnw_path2", "");
            if (loadFeatureFile(z, str)) {
                loadNetworkFeatureFile(z, str2);
                if (str3 != null) {
                    loadFeatureFile2nd(z, str);
                    loadNetworkFeatureFile2nd(z, str3);
                }
            }
        } catch (Exception e) {
            Log.w(TAG, e.toString());
        }
    }

    private byte[] _decode(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = (byte) (((bArr[i] & 255) << this.shifts[i % 256]) | ((bArr[i] & 255) >>> (8 - this.shifts[i % 256])));
            bArr2[i] = (byte) (bArr2[i] ^ this.salts[i % 256]);
        }
        return bArr2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x004f A:{SYNTHETIC, Splitter: B:31:0x004f} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0055 A:{Catch:{ IOException -> 0x0080 }} */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x003b A:{SYNTHETIC, Splitter: B:19:0x003b} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0041 A:{Catch:{ IOException -> 0x007b }} */
    private byte[] _decompressGzip(byte[] r14) {
        /*
        r13 = this;
        r12 = 0;
        r0 = 0;
        r6 = 0;
        r11 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r3 = new byte[r11];	 Catch:{ Exception -> 0x008a }
        r1 = new java.io.BufferedInputStream;	 Catch:{ Exception -> 0x008a }
        r11 = new java.io.ByteArrayInputStream;	 Catch:{ Exception -> 0x008a }
        r11.<init>(r14);	 Catch:{ Exception -> 0x008a }
        r1.<init>(r11);	 Catch:{ Exception -> 0x008a }
        r7 = new java.util.zip.GZIPInputStream;	 Catch:{ Exception -> 0x008c, all -> 0x0087 }
        r7.<init>(r1);	 Catch:{ Exception -> 0x008c, all -> 0x0087 }
        r10 = new java.io.ByteArrayOutputStream;	 Catch:{ Exception -> 0x0033, all -> 0x004a }
        r10.<init>();	 Catch:{ Exception -> 0x0033, all -> 0x004a }
    L_0x001b:
        r11 = r7.available();	 Catch:{ Exception -> 0x0033, all -> 0x004a }
        if (r11 <= 0) goto L_0x005a;
    L_0x0021:
        r2 = new java.io.BufferedOutputStream;	 Catch:{ Exception -> 0x0033, all -> 0x004a }
        r2.<init>(r10);	 Catch:{ Exception -> 0x0033, all -> 0x004a }
        r8 = 0;
    L_0x0027:
        r8 = r7.read(r3);	 Catch:{ Exception -> 0x0033, all -> 0x004a }
        r11 = -1;
        if (r8 == r11) goto L_0x0046;
    L_0x002e:
        r11 = 0;
        r2.write(r3, r11, r8);	 Catch:{ Exception -> 0x0033, all -> 0x004a }
        goto L_0x0027;
    L_0x0033:
        r5 = move-exception;
        r6 = r7;
        r0 = r1;
    L_0x0036:
        r5.printStackTrace();	 Catch:{ all -> 0x0085 }
        if (r6 == 0) goto L_0x003f;
    L_0x003b:
        r6.close();	 Catch:{ IOException -> 0x007b }
        r6 = 0;
    L_0x003f:
        if (r0 == 0) goto L_0x0045;
    L_0x0041:
        r0.close();	 Catch:{ IOException -> 0x007b }
        r0 = 0;
    L_0x0045:
        return r12;
    L_0x0046:
        r2.close();	 Catch:{ Exception -> 0x0033, all -> 0x004a }
        goto L_0x001b;
    L_0x004a:
        r11 = move-exception;
        r6 = r7;
        r0 = r1;
    L_0x004d:
        if (r6 == 0) goto L_0x0053;
    L_0x004f:
        r6.close();	 Catch:{ IOException -> 0x0080 }
        r6 = 0;
    L_0x0053:
        if (r0 == 0) goto L_0x0059;
    L_0x0055:
        r0.close();	 Catch:{ IOException -> 0x0080 }
        r0 = 0;
    L_0x0059:
        throw r11;
    L_0x005a:
        r9 = r10.toByteArray();	 Catch:{ Exception -> 0x0033, all -> 0x004a }
        r10.close();	 Catch:{ Exception -> 0x0033, all -> 0x004a }
        r7.close();	 Catch:{ Exception -> 0x0033, all -> 0x004a }
        r1.close();	 Catch:{ Exception -> 0x0033, all -> 0x004a }
        if (r7 == 0) goto L_0x0091;
    L_0x0069:
        r7.close();	 Catch:{ IOException -> 0x0074 }
        r6 = 0;
    L_0x006d:
        if (r1 == 0) goto L_0x0079;
    L_0x006f:
        r1.close();	 Catch:{ IOException -> 0x008f }
        r0 = 0;
    L_0x0073:
        return r9;
    L_0x0074:
        r4 = move-exception;
        r6 = r7;
    L_0x0076:
        r4.printStackTrace();
    L_0x0079:
        r0 = r1;
        goto L_0x0073;
    L_0x007b:
        r4 = move-exception;
        r4.printStackTrace();
        goto L_0x0045;
    L_0x0080:
        r4 = move-exception;
        r4.printStackTrace();
        goto L_0x0059;
    L_0x0085:
        r11 = move-exception;
        goto L_0x004d;
    L_0x0087:
        r11 = move-exception;
        r0 = r1;
        goto L_0x004d;
    L_0x008a:
        r5 = move-exception;
        goto L_0x0036;
    L_0x008c:
        r5 = move-exception;
        r0 = r1;
        goto L_0x0036;
    L_0x008f:
        r4 = move-exception;
        goto L_0x0076;
    L_0x0091:
        r6 = r7;
        goto L_0x006d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.feature.SemCscFeature._decompressGzip(byte[]):byte[]");
    }

    private byte[] decode(byte[] bArr) {
        return _decompressGzip(_decode(bArr));
    }

    public static SemCscFeature getInstance() {
        if (sInstance == null) {
            sInstance = new SemCscFeature();
        }
        return sInstance;
    }

    private boolean isUseOdm() {
        return new File("/odm/omc/SW_Configuration.xml").exists();
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x005d A:{SYNTHETIC, Splitter: B:39:0x005d} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0050 A:{SYNTHETIC, Splitter: B:31:0x0050} */
    private boolean isXmlEncoded(java.io.File r9) {
        /*
        r8 = this;
        r7 = 0;
        r3 = 0;
        r4 = new java.io.BufferedReader;	 Catch:{ Exception -> 0x0044 }
        r5 = new java.io.FileReader;	 Catch:{ Exception -> 0x0044 }
        r5.<init>(r9);	 Catch:{ Exception -> 0x0044 }
        r4.<init>(r5);	 Catch:{ Exception -> 0x0044 }
        r2 = r4.readLine();	 Catch:{ Exception -> 0x006a, all -> 0x0067 }
        if (r4 == 0) goto L_0x0015;
    L_0x0012:
        r4.close();	 Catch:{ Exception -> 0x006a, all -> 0x0067 }
    L_0x0015:
        if (r2 == 0) goto L_0x0020;
    L_0x0017:
        r5 = "<?xml";
        r5 = r2.contains(r5);	 Catch:{ Exception -> 0x006a, all -> 0x0067 }
        if (r5 == 0) goto L_0x002d;
    L_0x0020:
        if (r4 == 0) goto L_0x006f;
    L_0x0022:
        r4.close();	 Catch:{ IOException -> 0x0027 }
        r3 = 0;
    L_0x0026:
        return r7;
    L_0x0027:
        r0 = move-exception;
        r0.printStackTrace();
        r3 = r4;
        goto L_0x0026;
    L_0x002d:
        r5 = "SemCscFeature";
        r6 = "Encoded";
        android.util.Log.d(r5, r6);	 Catch:{ Exception -> 0x006a, all -> 0x0067 }
        r5 = 1;
        if (r4 == 0) goto L_0x006d;
    L_0x0039:
        r4.close();	 Catch:{ IOException -> 0x003e }
        r3 = 0;
    L_0x003d:
        return r5;
    L_0x003e:
        r0 = move-exception;
        r0.printStackTrace();
        r3 = r4;
        goto L_0x003d;
    L_0x0044:
        r1 = move-exception;
    L_0x0045:
        r5 = "SemCscFeature";
        r6 = "Exception : isXmlEncoded";
        android.util.Log.e(r5, r6);	 Catch:{ all -> 0x005a }
        if (r3 == 0) goto L_0x0054;
    L_0x0050:
        r3.close();	 Catch:{ IOException -> 0x0055 }
        r3 = 0;
    L_0x0054:
        return r7;
    L_0x0055:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x0054;
    L_0x005a:
        r5 = move-exception;
    L_0x005b:
        if (r3 == 0) goto L_0x0061;
    L_0x005d:
        r3.close();	 Catch:{ IOException -> 0x0062 }
        r3 = 0;
    L_0x0061:
        throw r5;
    L_0x0062:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x0061;
    L_0x0067:
        r5 = move-exception;
        r3 = r4;
        goto L_0x005b;
    L_0x006a:
        r1 = move-exception;
        r3 = r4;
        goto L_0x0045;
    L_0x006d:
        r3 = r4;
        goto L_0x003d;
    L_0x006f:
        r3 = r4;
        goto L_0x0026;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.feature.SemCscFeature.isXmlEncoded(java.io.File):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:43:0x0112 A:{ExcHandler: org.xmlpull.v1.XmlPullParserException (e org.xmlpull.v1.XmlPullParserException), PHI: r14 , Splitter: B:30:0x00ef} */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0158 A:{ExcHandler: java.io.FileNotFoundException (e java.io.FileNotFoundException), PHI: r14 , Splitter: B:22:0x00bc} */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x01cd A:{ExcHandler: all (th java.lang.Throwable), PHI: r14 , Splitter: B:22:0x00bc} */
    /* JADX WARNING: Removed duplicated region for block: B:103:0x01d1 A:{SYNTHETIC, Splitter: B:103:0x01d1} */
    /* JADX WARNING: Removed duplicated region for block: B:106:0x01d7 A:{Catch:{ IOException -> 0x0203 }} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0112 A:{ExcHandler: org.xmlpull.v1.XmlPullParserException (e org.xmlpull.v1.XmlPullParserException), PHI: r14 , Splitter: B:30:0x00ef} */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0158 A:{ExcHandler: java.io.FileNotFoundException (e java.io.FileNotFoundException), PHI: r14 , Splitter: B:22:0x00bc} */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x01cd A:{ExcHandler: all (th java.lang.Throwable), PHI: r14 , Splitter: B:22:0x00bc} */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0120 A:{SYNTHETIC, Splitter: B:48:0x0120} */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0126 A:{Catch:{ IOException -> 0x01f6 }} */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x0166 A:{SYNTHETIC, Splitter: B:74:0x0166} */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x016c A:{Catch:{ IOException -> 0x0170 }} */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x01a8 A:{SYNTHETIC, Splitter: B:90:0x01a8} */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x01ae A:{Catch:{ IOException -> 0x01b3 }} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:43:0x0112, code:
            r6 = e;
     */
    /* JADX WARNING: Missing block: B:44:0x0113, code:
            r12 = r13;
     */
    /* JADX WARNING: Missing block: B:65:0x014c, code:
            r5 = move-exception;
     */
    /* JADX WARNING: Missing block: B:67:?, code:
            android.util.Log.w(TAG, r5.toString());
     */
    /* JADX WARNING: Missing block: B:69:0x0158, code:
            r4 = e;
     */
    /* JADX WARNING: Missing block: B:70:0x0159, code:
            r12 = r13;
     */
    /* JADX WARNING: Missing block: B:96:0x01c0, code:
            r5 = move-exception;
     */
    /* JADX WARNING: Missing block: B:98:?, code:
            android.util.Log.w(TAG, r5.toString());
     */
    /* JADX WARNING: Missing block: B:100:0x01cd, code:
            r21 = th;
     */
    /* JADX WARNING: Missing block: B:101:0x01ce, code:
            r12 = r13;
     */
    private boolean loadFeatureFile(boolean r27, java.lang.String r28) {
        /*
        r26 = this;
        r16 = 0;
        r12 = 0;
        r14 = 0;
        r7 = -1;
        r2 = 0;
        r3 = 0;
        r10 = 0;
        r18 = 0;
        r0 = r26;
        r0 = r0.mFeatureList;	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = r0;
        r21.clear();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        if (r27 == 0) goto L_0x00a1;
    L_0x0015:
        r10 = r28;
    L_0x0017:
        r11 = new java.io.File;	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21.<init>();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r0 = r21;
        r21 = r0.append(r10);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r22 = "/cscfeature.xml";
        r21 = r21.append(r22);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = r21.toString();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r0 = r21;
        r11.<init>(r0);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = r11.exists();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        if (r21 == 0) goto L_0x0044;
    L_0x003a:
        r22 = r11.length();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r24 = 0;
        r21 = (r22 > r24 ? 1 : (r22 == r24 ? 0 : -1));
        if (r21 > 0) goto L_0x00a6;
    L_0x0044:
        r11 = new java.io.File;	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21.<init>();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r0 = r21;
        r21 = r0.append(r10);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r22 = "/feature.xml";
        r21 = r21.append(r22);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = r21.toString();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r0 = r21;
        r11.<init>(r0);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = r11.exists();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        if (r21 == 0) goto L_0x0071;
    L_0x0067:
        r22 = r11.length();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r24 = 0;
        r21 = (r22 > r24 ? 1 : (r22 == r24 ? 0 : -1));
        if (r21 > 0) goto L_0x00a8;
    L_0x0071:
        r11 = new java.io.File;	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21.<init>();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r0 = r21;
        r21 = r0.append(r10);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r22 = "/others.xml";
        r21 = r21.append(r22);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = r21.toString();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r0 = r21;
        r11.<init>(r0);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = r11.exists();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        if (r21 == 0) goto L_0x009e;
    L_0x0094:
        r22 = r11.length();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r24 = 0;
        r21 = (r22 > r24 ? 1 : (r22 == r24 ? 0 : -1));
        if (r21 > 0) goto L_0x00a8;
    L_0x009e:
        r21 = 0;
        return r21;
    L_0x00a1:
        r10 = "/system/csc";
        goto L_0x0017;
    L_0x00a6:
        r18 = 1;
    L_0x00a8:
        r9 = org.xmlpull.v1.XmlPullParserFactory.newInstance();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = 1;
        r0 = r21;
        r9.setNamespaceAware(r0);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r16 = r9.newPullParser();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r13 = new java.io.FileInputStream;	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r13.<init>(r11);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r0 = r26;
        r21 = r0.isXmlEncoded(r11);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        if (r21 == 0) goto L_0x0108;
    L_0x00c4:
        r19 = r13.available();	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        r0 = r19;
        r0 = new byte[r0];	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        r20 = r0;
        r0 = r20;
        r13.read(r0);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        r13.close();	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        r0 = r26;
        r1 = r20;
        r17 = r0.decode(r1);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        r15 = new java.io.ByteArrayInputStream;	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        r0 = r17;
        r15.<init>(r0);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        r21 = 0;
        r0 = r16;
        r1 = r21;
        r0.setInput(r15, r1);	 Catch:{ XmlPullParserException -> 0x0218, FileNotFoundException -> 0x0220, IOException -> 0x0228, all -> 0x0211 }
        r14 = r15;
    L_0x00ef:
        r7 = r16.getEventType();	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
    L_0x00f3:
        r21 = 1;
        r0 = r21;
        if (r7 == r0) goto L_0x01dc;
    L_0x00f9:
        r21 = 2;
        r0 = r21;
        if (r7 != r0) goto L_0x012b;
    L_0x00ff:
        r2 = r16.getName();	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
    L_0x0103:
        r7 = r16.next();	 Catch:{ IOException -> 0x01c0, XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, all -> 0x01cd }
        goto L_0x00f3;
    L_0x0108:
        r21 = 0;
        r0 = r16;
        r1 = r21;
        r0.setInput(r13, r1);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        goto L_0x00ef;
    L_0x0112:
        r6 = move-exception;
        r12 = r13;
    L_0x0114:
        r21 = "SemCscFeature";
        r22 = r6.toString();	 Catch:{ all -> 0x020f }
        android.util.Log.w(r21, r22);	 Catch:{ all -> 0x020f }
        if (r12 == 0) goto L_0x0124;
    L_0x0120:
        r12.close();	 Catch:{ IOException -> 0x01f6 }
        r12 = 0;
    L_0x0124:
        if (r14 == 0) goto L_0x012a;
    L_0x0126:
        r14.close();	 Catch:{ IOException -> 0x01f6 }
    L_0x0129:
        r14 = 0;
    L_0x012a:
        return r18;
    L_0x012b:
        r21 = 4;
        r0 = r21;
        if (r7 != r0) goto L_0x0103;
    L_0x0131:
        r3 = r16.getText();	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        if (r2 == 0) goto L_0x0103;
    L_0x0137:
        if (r3 == 0) goto L_0x0103;
    L_0x0139:
        r0 = r26;
        r0 = r0.mFeatureList;	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        r21 = r0;
        r0 = r21;
        r21 = r0.containsKey(r2);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        if (r21 == 0) goto L_0x017c;
    L_0x0147:
        r7 = r16.next();	 Catch:{ IOException -> 0x014c, XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, all -> 0x01cd }
        goto L_0x00f3;
    L_0x014c:
        r5 = move-exception;
        r21 = "SemCscFeature";
        r22 = r5.toString();	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        android.util.Log.w(r21, r22);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        goto L_0x00f3;
    L_0x0158:
        r4 = move-exception;
        r12 = r13;
    L_0x015a:
        r21 = "SemCscFeature";
        r22 = r4.toString();	 Catch:{ all -> 0x020f }
        android.util.Log.w(r21, r22);	 Catch:{ all -> 0x020f }
        if (r12 == 0) goto L_0x016a;
    L_0x0166:
        r12.close();	 Catch:{ IOException -> 0x0170 }
        r12 = 0;
    L_0x016a:
        if (r14 == 0) goto L_0x012a;
    L_0x016c:
        r14.close();	 Catch:{ IOException -> 0x0170 }
        goto L_0x0129;
    L_0x0170:
        r5 = move-exception;
        r21 = "SemCscFeature";
        r22 = r5.toString();
        android.util.Log.w(r21, r22);
        goto L_0x012a;
    L_0x017c:
        r3 = r3.trim();	 Catch:{ Exception -> 0x018d }
        r0 = r26;
        r0 = r0.mFeatureList;	 Catch:{ Exception -> 0x018d }
        r21 = r0;
        r0 = r21;
        r0.put(r2, r3);	 Catch:{ Exception -> 0x018d }
        goto L_0x0103;
    L_0x018d:
        r8 = move-exception;
        r21 = "SemCscFeature";
        r22 = r8.toString();	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        android.util.Log.w(r21, r22);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        goto L_0x0103;
    L_0x019a:
        r5 = move-exception;
        r12 = r13;
    L_0x019c:
        r21 = "SemCscFeature";
        r22 = r5.toString();	 Catch:{ all -> 0x020f }
        android.util.Log.w(r21, r22);	 Catch:{ all -> 0x020f }
        if (r12 == 0) goto L_0x01ac;
    L_0x01a8:
        r12.close();	 Catch:{ IOException -> 0x01b3 }
        r12 = 0;
    L_0x01ac:
        if (r14 == 0) goto L_0x012a;
    L_0x01ae:
        r14.close();	 Catch:{ IOException -> 0x01b3 }
        goto L_0x0129;
    L_0x01b3:
        r5 = move-exception;
        r21 = "SemCscFeature";
        r22 = r5.toString();
        android.util.Log.w(r21, r22);
        goto L_0x012a;
    L_0x01c0:
        r5 = move-exception;
        r21 = "SemCscFeature";
        r22 = r5.toString();	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        android.util.Log.w(r21, r22);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        goto L_0x00f3;
    L_0x01cd:
        r21 = move-exception;
        r12 = r13;
    L_0x01cf:
        if (r12 == 0) goto L_0x01d5;
    L_0x01d1:
        r12.close();	 Catch:{ IOException -> 0x0203 }
        r12 = 0;
    L_0x01d5:
        if (r14 == 0) goto L_0x01db;
    L_0x01d7:
        r14.close();	 Catch:{ IOException -> 0x0203 }
        r14 = 0;
    L_0x01db:
        throw r21;
    L_0x01dc:
        if (r13 == 0) goto L_0x0230;
    L_0x01de:
        r13.close();	 Catch:{ IOException -> 0x022d }
        r12 = 0;
    L_0x01e2:
        if (r14 == 0) goto L_0x012a;
    L_0x01e4:
        r14.close();	 Catch:{ IOException -> 0x01e9 }
        goto L_0x0129;
    L_0x01e9:
        r5 = move-exception;
    L_0x01ea:
        r21 = "SemCscFeature";
        r22 = r5.toString();
        android.util.Log.w(r21, r22);
        goto L_0x012a;
    L_0x01f6:
        r5 = move-exception;
        r21 = "SemCscFeature";
        r22 = r5.toString();
        android.util.Log.w(r21, r22);
        goto L_0x012a;
    L_0x0203:
        r5 = move-exception;
        r22 = "SemCscFeature";
        r23 = r5.toString();
        android.util.Log.w(r22, r23);
        goto L_0x01db;
    L_0x020f:
        r21 = move-exception;
        goto L_0x01cf;
    L_0x0211:
        r21 = move-exception;
        r14 = r15;
        r12 = r13;
        goto L_0x01cf;
    L_0x0215:
        r6 = move-exception;
        goto L_0x0114;
    L_0x0218:
        r6 = move-exception;
        r14 = r15;
        r12 = r13;
        goto L_0x0114;
    L_0x021d:
        r4 = move-exception;
        goto L_0x015a;
    L_0x0220:
        r4 = move-exception;
        r14 = r15;
        r12 = r13;
        goto L_0x015a;
    L_0x0225:
        r5 = move-exception;
        goto L_0x019c;
    L_0x0228:
        r5 = move-exception;
        r14 = r15;
        r12 = r13;
        goto L_0x019c;
    L_0x022d:
        r5 = move-exception;
        r12 = r13;
        goto L_0x01ea;
    L_0x0230:
        r12 = r13;
        goto L_0x01e2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.feature.SemCscFeature.loadFeatureFile(boolean, java.lang.String):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:43:0x0112 A:{ExcHandler: org.xmlpull.v1.XmlPullParserException (e org.xmlpull.v1.XmlPullParserException), PHI: r14 , Splitter: B:30:0x00ef} */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0158 A:{ExcHandler: java.io.FileNotFoundException (e java.io.FileNotFoundException), PHI: r14 , Splitter: B:22:0x00bc} */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x01cd A:{ExcHandler: all (th java.lang.Throwable), PHI: r14 , Splitter: B:22:0x00bc} */
    /* JADX WARNING: Removed duplicated region for block: B:103:0x01d1 A:{SYNTHETIC, Splitter: B:103:0x01d1} */
    /* JADX WARNING: Removed duplicated region for block: B:106:0x01d7 A:{Catch:{ IOException -> 0x0203 }} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0112 A:{ExcHandler: org.xmlpull.v1.XmlPullParserException (e org.xmlpull.v1.XmlPullParserException), PHI: r14 , Splitter: B:30:0x00ef} */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0158 A:{ExcHandler: java.io.FileNotFoundException (e java.io.FileNotFoundException), PHI: r14 , Splitter: B:22:0x00bc} */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x01cd A:{ExcHandler: all (th java.lang.Throwable), PHI: r14 , Splitter: B:22:0x00bc} */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0120 A:{SYNTHETIC, Splitter: B:48:0x0120} */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0126 A:{Catch:{ IOException -> 0x01f6 }} */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x0166 A:{SYNTHETIC, Splitter: B:74:0x0166} */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x016c A:{Catch:{ IOException -> 0x0170 }} */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x01a8 A:{SYNTHETIC, Splitter: B:90:0x01a8} */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x01ae A:{Catch:{ IOException -> 0x01b3 }} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:43:0x0112, code:
            r6 = e;
     */
    /* JADX WARNING: Missing block: B:44:0x0113, code:
            r12 = r13;
     */
    /* JADX WARNING: Missing block: B:65:0x014c, code:
            r5 = move-exception;
     */
    /* JADX WARNING: Missing block: B:67:?, code:
            android.util.Log.w(TAG, r5.toString());
     */
    /* JADX WARNING: Missing block: B:69:0x0158, code:
            r4 = e;
     */
    /* JADX WARNING: Missing block: B:70:0x0159, code:
            r12 = r13;
     */
    /* JADX WARNING: Missing block: B:96:0x01c0, code:
            r5 = move-exception;
     */
    /* JADX WARNING: Missing block: B:98:?, code:
            android.util.Log.w(TAG, r5.toString());
     */
    /* JADX WARNING: Missing block: B:100:0x01cd, code:
            r21 = th;
     */
    /* JADX WARNING: Missing block: B:101:0x01ce, code:
            r12 = r13;
     */
    private boolean loadFeatureFile2nd(boolean r27, java.lang.String r28) {
        /*
        r26 = this;
        r16 = 0;
        r12 = 0;
        r14 = 0;
        r7 = -1;
        r2 = 0;
        r3 = 0;
        r10 = 0;
        r18 = 0;
        r0 = r26;
        r0 = r0.mFeatureList_2;	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = r0;
        r21.clear();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        if (r27 == 0) goto L_0x00a1;
    L_0x0015:
        r10 = r28;
    L_0x0017:
        r11 = new java.io.File;	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21.<init>();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r0 = r21;
        r21 = r0.append(r10);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r22 = "/cscfeature.xml";
        r21 = r21.append(r22);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = r21.toString();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r0 = r21;
        r11.<init>(r0);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = r11.exists();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        if (r21 == 0) goto L_0x0044;
    L_0x003a:
        r22 = r11.length();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r24 = 0;
        r21 = (r22 > r24 ? 1 : (r22 == r24 ? 0 : -1));
        if (r21 > 0) goto L_0x00a6;
    L_0x0044:
        r11 = new java.io.File;	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21.<init>();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r0 = r21;
        r21 = r0.append(r10);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r22 = "/feature.xml";
        r21 = r21.append(r22);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = r21.toString();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r0 = r21;
        r11.<init>(r0);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = r11.exists();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        if (r21 == 0) goto L_0x0071;
    L_0x0067:
        r22 = r11.length();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r24 = 0;
        r21 = (r22 > r24 ? 1 : (r22 == r24 ? 0 : -1));
        if (r21 > 0) goto L_0x00a8;
    L_0x0071:
        r11 = new java.io.File;	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21.<init>();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r0 = r21;
        r21 = r0.append(r10);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r22 = "/others.xml";
        r21 = r21.append(r22);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = r21.toString();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r0 = r21;
        r11.<init>(r0);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = r11.exists();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        if (r21 == 0) goto L_0x009e;
    L_0x0094:
        r22 = r11.length();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r24 = 0;
        r21 = (r22 > r24 ? 1 : (r22 == r24 ? 0 : -1));
        if (r21 > 0) goto L_0x00a8;
    L_0x009e:
        r21 = 0;
        return r21;
    L_0x00a1:
        r10 = "/system/csc";
        goto L_0x0017;
    L_0x00a6:
        r18 = 1;
    L_0x00a8:
        r9 = org.xmlpull.v1.XmlPullParserFactory.newInstance();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r21 = 1;
        r0 = r21;
        r9.setNamespaceAware(r0);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r16 = r9.newPullParser();	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r13 = new java.io.FileInputStream;	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r13.<init>(r11);	 Catch:{ XmlPullParserException -> 0x0215, FileNotFoundException -> 0x021d, IOException -> 0x0225 }
        r0 = r26;
        r21 = r0.isXmlEncoded(r11);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        if (r21 == 0) goto L_0x0108;
    L_0x00c4:
        r19 = r13.available();	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        r0 = r19;
        r0 = new byte[r0];	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        r20 = r0;
        r0 = r20;
        r13.read(r0);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        r13.close();	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        r0 = r26;
        r1 = r20;
        r17 = r0.decode(r1);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        r15 = new java.io.ByteArrayInputStream;	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        r0 = r17;
        r15.<init>(r0);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        r21 = 0;
        r0 = r16;
        r1 = r21;
        r0.setInput(r15, r1);	 Catch:{ XmlPullParserException -> 0x0218, FileNotFoundException -> 0x0220, IOException -> 0x0228, all -> 0x0211 }
        r14 = r15;
    L_0x00ef:
        r7 = r16.getEventType();	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
    L_0x00f3:
        r21 = 1;
        r0 = r21;
        if (r7 == r0) goto L_0x01dc;
    L_0x00f9:
        r21 = 2;
        r0 = r21;
        if (r7 != r0) goto L_0x012b;
    L_0x00ff:
        r2 = r16.getName();	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
    L_0x0103:
        r7 = r16.next();	 Catch:{ IOException -> 0x01c0, XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, all -> 0x01cd }
        goto L_0x00f3;
    L_0x0108:
        r21 = 0;
        r0 = r16;
        r1 = r21;
        r0.setInput(r13, r1);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        goto L_0x00ef;
    L_0x0112:
        r6 = move-exception;
        r12 = r13;
    L_0x0114:
        r21 = "SemCscFeature";
        r22 = r6.toString();	 Catch:{ all -> 0x020f }
        android.util.Log.w(r21, r22);	 Catch:{ all -> 0x020f }
        if (r12 == 0) goto L_0x0124;
    L_0x0120:
        r12.close();	 Catch:{ IOException -> 0x01f6 }
        r12 = 0;
    L_0x0124:
        if (r14 == 0) goto L_0x012a;
    L_0x0126:
        r14.close();	 Catch:{ IOException -> 0x01f6 }
    L_0x0129:
        r14 = 0;
    L_0x012a:
        return r18;
    L_0x012b:
        r21 = 4;
        r0 = r21;
        if (r7 != r0) goto L_0x0103;
    L_0x0131:
        r3 = r16.getText();	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        if (r2 == 0) goto L_0x0103;
    L_0x0137:
        if (r3 == 0) goto L_0x0103;
    L_0x0139:
        r0 = r26;
        r0 = r0.mFeatureList_2;	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        r21 = r0;
        r0 = r21;
        r21 = r0.containsKey(r2);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        if (r21 == 0) goto L_0x017c;
    L_0x0147:
        r7 = r16.next();	 Catch:{ IOException -> 0x014c, XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, all -> 0x01cd }
        goto L_0x00f3;
    L_0x014c:
        r5 = move-exception;
        r21 = "SemCscFeature";
        r22 = r5.toString();	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        android.util.Log.w(r21, r22);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        goto L_0x00f3;
    L_0x0158:
        r4 = move-exception;
        r12 = r13;
    L_0x015a:
        r21 = "SemCscFeature";
        r22 = r4.toString();	 Catch:{ all -> 0x020f }
        android.util.Log.w(r21, r22);	 Catch:{ all -> 0x020f }
        if (r12 == 0) goto L_0x016a;
    L_0x0166:
        r12.close();	 Catch:{ IOException -> 0x0170 }
        r12 = 0;
    L_0x016a:
        if (r14 == 0) goto L_0x012a;
    L_0x016c:
        r14.close();	 Catch:{ IOException -> 0x0170 }
        goto L_0x0129;
    L_0x0170:
        r5 = move-exception;
        r21 = "SemCscFeature";
        r22 = r5.toString();
        android.util.Log.w(r21, r22);
        goto L_0x012a;
    L_0x017c:
        r3 = r3.trim();	 Catch:{ Exception -> 0x018d }
        r0 = r26;
        r0 = r0.mFeatureList_2;	 Catch:{ Exception -> 0x018d }
        r21 = r0;
        r0 = r21;
        r0.put(r2, r3);	 Catch:{ Exception -> 0x018d }
        goto L_0x0103;
    L_0x018d:
        r8 = move-exception;
        r21 = "SemCscFeature";
        r22 = r8.toString();	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        android.util.Log.w(r21, r22);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        goto L_0x0103;
    L_0x019a:
        r5 = move-exception;
        r12 = r13;
    L_0x019c:
        r21 = "SemCscFeature";
        r22 = r5.toString();	 Catch:{ all -> 0x020f }
        android.util.Log.w(r21, r22);	 Catch:{ all -> 0x020f }
        if (r12 == 0) goto L_0x01ac;
    L_0x01a8:
        r12.close();	 Catch:{ IOException -> 0x01b3 }
        r12 = 0;
    L_0x01ac:
        if (r14 == 0) goto L_0x012a;
    L_0x01ae:
        r14.close();	 Catch:{ IOException -> 0x01b3 }
        goto L_0x0129;
    L_0x01b3:
        r5 = move-exception;
        r21 = "SemCscFeature";
        r22 = r5.toString();
        android.util.Log.w(r21, r22);
        goto L_0x012a;
    L_0x01c0:
        r5 = move-exception;
        r21 = "SemCscFeature";
        r22 = r5.toString();	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        android.util.Log.w(r21, r22);	 Catch:{ XmlPullParserException -> 0x0112, FileNotFoundException -> 0x0158, IOException -> 0x019a, all -> 0x01cd }
        goto L_0x00f3;
    L_0x01cd:
        r21 = move-exception;
        r12 = r13;
    L_0x01cf:
        if (r12 == 0) goto L_0x01d5;
    L_0x01d1:
        r12.close();	 Catch:{ IOException -> 0x0203 }
        r12 = 0;
    L_0x01d5:
        if (r14 == 0) goto L_0x01db;
    L_0x01d7:
        r14.close();	 Catch:{ IOException -> 0x0203 }
        r14 = 0;
    L_0x01db:
        throw r21;
    L_0x01dc:
        if (r13 == 0) goto L_0x0230;
    L_0x01de:
        r13.close();	 Catch:{ IOException -> 0x022d }
        r12 = 0;
    L_0x01e2:
        if (r14 == 0) goto L_0x012a;
    L_0x01e4:
        r14.close();	 Catch:{ IOException -> 0x01e9 }
        goto L_0x0129;
    L_0x01e9:
        r5 = move-exception;
    L_0x01ea:
        r21 = "SemCscFeature";
        r22 = r5.toString();
        android.util.Log.w(r21, r22);
        goto L_0x012a;
    L_0x01f6:
        r5 = move-exception;
        r21 = "SemCscFeature";
        r22 = r5.toString();
        android.util.Log.w(r21, r22);
        goto L_0x012a;
    L_0x0203:
        r5 = move-exception;
        r22 = "SemCscFeature";
        r23 = r5.toString();
        android.util.Log.w(r22, r23);
        goto L_0x01db;
    L_0x020f:
        r21 = move-exception;
        goto L_0x01cf;
    L_0x0211:
        r21 = move-exception;
        r14 = r15;
        r12 = r13;
        goto L_0x01cf;
    L_0x0215:
        r6 = move-exception;
        goto L_0x0114;
    L_0x0218:
        r6 = move-exception;
        r14 = r15;
        r12 = r13;
        goto L_0x0114;
    L_0x021d:
        r4 = move-exception;
        goto L_0x015a;
    L_0x0220:
        r4 = move-exception;
        r14 = r15;
        r12 = r13;
        goto L_0x015a;
    L_0x0225:
        r5 = move-exception;
        goto L_0x019c;
    L_0x0228:
        r5 = move-exception;
        r14 = r15;
        r12 = r13;
        goto L_0x019c;
    L_0x022d:
        r5 = move-exception;
        r12 = r13;
        goto L_0x01ea;
    L_0x0230:
        r12 = r13;
        goto L_0x01e2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.feature.SemCscFeature.loadFeatureFile2nd(boolean, java.lang.String):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:97:0x01ab A:{SYNTHETIC, Splitter: B:97:0x01ab} */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x01b1 A:{Catch:{ IOException -> 0x01de }} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00c5 A:{ExcHandler: org.xmlpull.v1.XmlPullParserException (e org.xmlpull.v1.XmlPullParserException), PHI: r17 , Splitter: B:19:0x0090} */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x012f A:{ExcHandler: java.io.FileNotFoundException (e java.io.FileNotFoundException), PHI: r17 , Splitter: B:11:0x0056} */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x01a6 A:{ExcHandler: all (th java.lang.Throwable), PHI: r17 , Splitter: B:11:0x0056} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00c5 A:{ExcHandler: org.xmlpull.v1.XmlPullParserException (e org.xmlpull.v1.XmlPullParserException), PHI: r17 , Splitter: B:19:0x0090} */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x012f A:{ExcHandler: java.io.FileNotFoundException (e java.io.FileNotFoundException), PHI: r17 , Splitter: B:11:0x0056} */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x01a6 A:{ExcHandler: all (th java.lang.Throwable), PHI: r17 , Splitter: B:11:0x0056} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d4 A:{SYNTHETIC, Splitter: B:39:0x00d4} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00da A:{Catch:{ IOException -> 0x01d1 }} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x013e A:{SYNTHETIC, Splitter: B:68:0x013e} */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x0144 A:{Catch:{ IOException -> 0x0148 }} */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x0181 A:{SYNTHETIC, Splitter: B:84:0x0181} */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x0187 A:{Catch:{ IOException -> 0x018c }} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:34:0x00c5, code:
            r9 = e;
     */
    /* JADX WARNING: Missing block: B:35:0x00c6, code:
            r15 = r0;
     */
    /* JADX WARNING: Missing block: B:59:0x0122, code:
            r8 = move-exception;
     */
    /* JADX WARNING: Missing block: B:61:?, code:
            android.util.Log.w(TAG, r8.toString());
     */
    /* JADX WARNING: Missing block: B:63:0x012f, code:
            r7 = e;
     */
    /* JADX WARNING: Missing block: B:64:0x0130, code:
            r15 = r0;
     */
    /* JADX WARNING: Missing block: B:79:0x0172, code:
            r8 = e;
     */
    /* JADX WARNING: Missing block: B:80:0x0173, code:
            r15 = r0;
     */
    /* JADX WARNING: Missing block: B:94:0x01a6, code:
            r23 = th;
     */
    /* JADX WARNING: Missing block: B:95:0x01a7, code:
            r15 = r0;
     */
    private void loadNetworkFeatureFile(boolean r29, java.lang.String r30) {
        /*
        r28 = this;
        r19 = 0;
        r15 = 0;
        r17 = 0;
        r10 = -1;
        r4 = 0;
        r6 = 0;
        r5 = 0;
        r13 = 0;
        if (r29 == 0) goto L_0x003c;
    L_0x000c:
        r13 = r30;
    L_0x000e:
        r14 = new java.io.File;	 Catch:{ XmlPullParserException -> 0x01f2, FileNotFoundException -> 0x01fc, IOException -> 0x0206 }
        r23 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x01f2, FileNotFoundException -> 0x01fc, IOException -> 0x0206 }
        r23.<init>();	 Catch:{ XmlPullParserException -> 0x01f2, FileNotFoundException -> 0x01fc, IOException -> 0x0206 }
        r0 = r23;
        r23 = r0.append(r13);	 Catch:{ XmlPullParserException -> 0x01f2, FileNotFoundException -> 0x01fc, IOException -> 0x0206 }
        r24 = "/cscfeature_network.xml";
        r23 = r23.append(r24);	 Catch:{ XmlPullParserException -> 0x01f2, FileNotFoundException -> 0x01fc, IOException -> 0x0206 }
        r23 = r23.toString();	 Catch:{ XmlPullParserException -> 0x01f2, FileNotFoundException -> 0x01fc, IOException -> 0x0206 }
        r0 = r23;
        r14.<init>(r0);	 Catch:{ XmlPullParserException -> 0x01f2, FileNotFoundException -> 0x01fc, IOException -> 0x0206 }
        r23 = r14.exists();	 Catch:{ XmlPullParserException -> 0x01f2, FileNotFoundException -> 0x01fc, IOException -> 0x0206 }
        if (r23 == 0) goto L_0x003b;
    L_0x0031:
        r24 = r14.length();	 Catch:{ XmlPullParserException -> 0x01f2, FileNotFoundException -> 0x01fc, IOException -> 0x0206 }
        r26 = 0;
        r23 = (r24 > r26 ? 1 : (r24 == r26 ? 0 : -1));
        if (r23 > 0) goto L_0x0040;
    L_0x003b:
        return;
    L_0x003c:
        r13 = "/system/csc";
        goto L_0x000e;
    L_0x0040:
        r12 = org.xmlpull.v1.XmlPullParserFactory.newInstance();	 Catch:{ XmlPullParserException -> 0x01f2, FileNotFoundException -> 0x01fc, IOException -> 0x0206 }
        r23 = 1;
        r0 = r23;
        r12.setNamespaceAware(r0);	 Catch:{ XmlPullParserException -> 0x01f2, FileNotFoundException -> 0x01fc, IOException -> 0x0206 }
        r19 = r12.newPullParser();	 Catch:{ XmlPullParserException -> 0x01f2, FileNotFoundException -> 0x01fc, IOException -> 0x0206 }
        r16 = new java.io.FileInputStream;	 Catch:{ XmlPullParserException -> 0x01f2, FileNotFoundException -> 0x01fc, IOException -> 0x0206 }
        r0 = r16;
        r0.<init>(r14);	 Catch:{ XmlPullParserException -> 0x01f2, FileNotFoundException -> 0x01fc, IOException -> 0x0206 }
        r0 = r28;
        r23 = r0.isXmlEncoded(r14);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        if (r23 == 0) goto L_0x00b9;
    L_0x005e:
        r21 = r16.available();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        r0 = r21;
        r0 = new byte[r0];	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        r22 = r0;
        r0 = r16;
        r1 = r22;
        r0.read(r1);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        r16.close();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        r0 = r28;
        r1 = r22;
        r20 = r0.decode(r1);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        r18 = new java.io.ByteArrayInputStream;	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        r0 = r18;
        r1 = r20;
        r0.<init>(r1);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        r23 = 0;
        r0 = r19;
        r1 = r18;
        r2 = r23;
        r0.setInput(r1, r2);	 Catch:{ XmlPullParserException -> 0x01f5, FileNotFoundException -> 0x01ff, IOException -> 0x0209, all -> 0x01ec }
        r17 = r18;
    L_0x0090:
        r10 = r19.getEventType();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
    L_0x0094:
        r23 = 1;
        r0 = r23;
        if (r10 == r0) goto L_0x01b7;
    L_0x009a:
        r23 = 2;
        r0 = r23;
        if (r10 != r0) goto L_0x00e2;
    L_0x00a0:
        r4 = r19.getName();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        r23 = r19.getAttributeCount();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        if (r23 <= 0) goto L_0x00e0;
    L_0x00aa:
        r23 = 0;
        r0 = r19;
        r1 = r23;
        r5 = r0.getAttributeValue(r1);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
    L_0x00b4:
        r10 = r19.next();	 Catch:{ IOException -> 0x0199, XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, all -> 0x01a6 }
        goto L_0x0094;
    L_0x00b9:
        r23 = 0;
        r0 = r19;
        r1 = r16;
        r2 = r23;
        r0.setInput(r1, r2);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        goto L_0x0090;
    L_0x00c5:
        r9 = move-exception;
        r15 = r16;
    L_0x00c8:
        r23 = "SemCscFeature";
        r24 = r9.toString();	 Catch:{ all -> 0x01ea }
        android.util.Log.w(r23, r24);	 Catch:{ all -> 0x01ea }
        if (r15 == 0) goto L_0x00d8;
    L_0x00d4:
        r15.close();	 Catch:{ IOException -> 0x01d1 }
        r15 = 0;
    L_0x00d8:
        if (r17 == 0) goto L_0x00df;
    L_0x00da:
        r17.close();	 Catch:{ IOException -> 0x01d1 }
    L_0x00dd:
        r17 = 0;
    L_0x00df:
        return;
    L_0x00e0:
        r5 = 0;
        goto L_0x00b4;
    L_0x00e2:
        r23 = 4;
        r0 = r23;
        if (r10 != r0) goto L_0x00b4;
    L_0x00e8:
        r6 = r19.getText();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        if (r4 == 0) goto L_0x00b4;
    L_0x00ee:
        if (r6 == 0) goto L_0x00b4;
    L_0x00f0:
        if (r5 == 0) goto L_0x010e;
    L_0x00f2:
        r23 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        r23.<init>();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        r0 = r23;
        r23 = r0.append(r4);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        r24 = ",";
        r23 = r23.append(r24);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        r0 = r23;
        r23 = r0.append(r5);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        r4 = r23.toString();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
    L_0x010e:
        r0 = r28;
        r0 = r0.mFeatureList;	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        r23 = r0;
        r0 = r23;
        r23 = r0.containsKey(r4);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        if (r23 == 0) goto L_0x0154;
    L_0x011c:
        r10 = r19.next();	 Catch:{ IOException -> 0x0122, XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, all -> 0x01a6 }
        goto L_0x0094;
    L_0x0122:
        r8 = move-exception;
        r23 = "SemCscFeature";
        r24 = r8.toString();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        android.util.Log.w(r23, r24);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        goto L_0x0094;
    L_0x012f:
        r7 = move-exception;
        r15 = r16;
    L_0x0132:
        r23 = "SemCscFeature";
        r24 = r7.toString();	 Catch:{ all -> 0x01ea }
        android.util.Log.w(r23, r24);	 Catch:{ all -> 0x01ea }
        if (r15 == 0) goto L_0x0142;
    L_0x013e:
        r15.close();	 Catch:{ IOException -> 0x0148 }
        r15 = 0;
    L_0x0142:
        if (r17 == 0) goto L_0x00df;
    L_0x0144:
        r17.close();	 Catch:{ IOException -> 0x0148 }
        goto L_0x00dd;
    L_0x0148:
        r8 = move-exception;
        r23 = "SemCscFeature";
        r24 = r8.toString();
        android.util.Log.w(r23, r24);
        goto L_0x00df;
    L_0x0154:
        r6 = r6.trim();	 Catch:{ Exception -> 0x0165 }
        r0 = r28;
        r0 = r0.mFeatureList;	 Catch:{ Exception -> 0x0165 }
        r23 = r0;
        r0 = r23;
        r0.put(r4, r6);	 Catch:{ Exception -> 0x0165 }
        goto L_0x00b4;
    L_0x0165:
        r11 = move-exception;
        r23 = "SemCscFeature";
        r24 = r11.toString();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        android.util.Log.w(r23, r24);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        goto L_0x00b4;
    L_0x0172:
        r8 = move-exception;
        r15 = r16;
    L_0x0175:
        r23 = "SemCscFeature";
        r24 = r8.toString();	 Catch:{ all -> 0x01ea }
        android.util.Log.w(r23, r24);	 Catch:{ all -> 0x01ea }
        if (r15 == 0) goto L_0x0185;
    L_0x0181:
        r15.close();	 Catch:{ IOException -> 0x018c }
        r15 = 0;
    L_0x0185:
        if (r17 == 0) goto L_0x00df;
    L_0x0187:
        r17.close();	 Catch:{ IOException -> 0x018c }
        goto L_0x00dd;
    L_0x018c:
        r8 = move-exception;
        r23 = "SemCscFeature";
        r24 = r8.toString();
        android.util.Log.w(r23, r24);
        goto L_0x00df;
    L_0x0199:
        r8 = move-exception;
        r23 = "SemCscFeature";
        r24 = r8.toString();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        android.util.Log.w(r23, r24);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012f, IOException -> 0x0172, all -> 0x01a6 }
        goto L_0x0094;
    L_0x01a6:
        r23 = move-exception;
        r15 = r16;
    L_0x01a9:
        if (r15 == 0) goto L_0x01af;
    L_0x01ab:
        r15.close();	 Catch:{ IOException -> 0x01de }
        r15 = 0;
    L_0x01af:
        if (r17 == 0) goto L_0x01b6;
    L_0x01b1:
        r17.close();	 Catch:{ IOException -> 0x01de }
        r17 = 0;
    L_0x01b6:
        throw r23;
    L_0x01b7:
        if (r16 == 0) goto L_0x0214;
    L_0x01b9:
        r16.close();	 Catch:{ IOException -> 0x0210 }
        r15 = 0;
    L_0x01bd:
        if (r17 == 0) goto L_0x00df;
    L_0x01bf:
        r17.close();	 Catch:{ IOException -> 0x01c4 }
        goto L_0x00dd;
    L_0x01c4:
        r8 = move-exception;
    L_0x01c5:
        r23 = "SemCscFeature";
        r24 = r8.toString();
        android.util.Log.w(r23, r24);
        goto L_0x00df;
    L_0x01d1:
        r8 = move-exception;
        r23 = "SemCscFeature";
        r24 = r8.toString();
        android.util.Log.w(r23, r24);
        goto L_0x00df;
    L_0x01de:
        r8 = move-exception;
        r24 = "SemCscFeature";
        r25 = r8.toString();
        android.util.Log.w(r24, r25);
        goto L_0x01b6;
    L_0x01ea:
        r23 = move-exception;
        goto L_0x01a9;
    L_0x01ec:
        r23 = move-exception;
        r17 = r18;
        r15 = r16;
        goto L_0x01a9;
    L_0x01f2:
        r9 = move-exception;
        goto L_0x00c8;
    L_0x01f5:
        r9 = move-exception;
        r17 = r18;
        r15 = r16;
        goto L_0x00c8;
    L_0x01fc:
        r7 = move-exception;
        goto L_0x0132;
    L_0x01ff:
        r7 = move-exception;
        r17 = r18;
        r15 = r16;
        goto L_0x0132;
    L_0x0206:
        r8 = move-exception;
        goto L_0x0175;
    L_0x0209:
        r8 = move-exception;
        r17 = r18;
        r15 = r16;
        goto L_0x0175;
    L_0x0210:
        r8 = move-exception;
        r15 = r16;
        goto L_0x01c5;
    L_0x0214:
        r15 = r16;
        goto L_0x01bd;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.feature.SemCscFeature.loadNetworkFeatureFile(boolean, java.lang.String):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x00c5 A:{ExcHandler: org.xmlpull.v1.XmlPullParserException (e org.xmlpull.v1.XmlPullParserException), PHI: r17 , Splitter: B:19:0x0090} */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x012d A:{ExcHandler: java.io.FileNotFoundException (e java.io.FileNotFoundException), PHI: r17 , Splitter: B:11:0x0056} */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x019e A:{ExcHandler: all (th java.lang.Throwable), PHI: r17 , Splitter: B:11:0x0056} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00c5 A:{ExcHandler: org.xmlpull.v1.XmlPullParserException (e org.xmlpull.v1.XmlPullParserException), PHI: r17 , Splitter: B:19:0x0090} */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x012d A:{ExcHandler: java.io.FileNotFoundException (e java.io.FileNotFoundException), PHI: r17 , Splitter: B:11:0x0056} */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x019e A:{ExcHandler: all (th java.lang.Throwable), PHI: r17 , Splitter: B:11:0x0056} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d3 A:{SYNTHETIC, Splitter: B:39:0x00d3} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00d9 A:{Catch:{ IOException -> 0x01c8 }} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x013b A:{SYNTHETIC, Splitter: B:68:0x013b} */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x0141 A:{Catch:{ IOException -> 0x0145 }} */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x017b A:{SYNTHETIC, Splitter: B:84:0x017b} */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x0181 A:{Catch:{ IOException -> 0x0186 }} */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x01a3 A:{SYNTHETIC, Splitter: B:97:0x01a3} */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x01a9 A:{Catch:{ IOException -> 0x01d4 }} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:34:0x00c5, code:
            r9 = e;
     */
    /* JADX WARNING: Missing block: B:35:0x00c6, code:
            r15 = r0;
     */
    /* JADX WARNING: Missing block: B:59:0x0121, code:
            r8 = move-exception;
     */
    /* JADX WARNING: Missing block: B:61:?, code:
            java.lang.System.out.println(r8.toString());
     */
    /* JADX WARNING: Missing block: B:63:0x012d, code:
            r7 = e;
     */
    /* JADX WARNING: Missing block: B:64:0x012e, code:
            r15 = r0;
     */
    /* JADX WARNING: Missing block: B:79:0x016d, code:
            r8 = e;
     */
    /* JADX WARNING: Missing block: B:80:0x016e, code:
            r15 = r0;
     */
    /* JADX WARNING: Missing block: B:94:0x019e, code:
            r23 = th;
     */
    /* JADX WARNING: Missing block: B:95:0x019f, code:
            r15 = r0;
     */
    private void loadNetworkFeatureFile2nd(boolean r29, java.lang.String r30) {
        /*
        r28 = this;
        r19 = 0;
        r15 = 0;
        r17 = 0;
        r10 = -1;
        r4 = 0;
        r6 = 0;
        r5 = 0;
        r13 = 0;
        if (r29 == 0) goto L_0x003c;
    L_0x000c:
        r13 = r30;
    L_0x000e:
        r14 = new java.io.File;	 Catch:{ XmlPullParserException -> 0x01e7, FileNotFoundException -> 0x01f1, IOException -> 0x01fb }
        r23 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x01e7, FileNotFoundException -> 0x01f1, IOException -> 0x01fb }
        r23.<init>();	 Catch:{ XmlPullParserException -> 0x01e7, FileNotFoundException -> 0x01f1, IOException -> 0x01fb }
        r0 = r23;
        r23 = r0.append(r13);	 Catch:{ XmlPullParserException -> 0x01e7, FileNotFoundException -> 0x01f1, IOException -> 0x01fb }
        r24 = "/cscfeature_network.xml";
        r23 = r23.append(r24);	 Catch:{ XmlPullParserException -> 0x01e7, FileNotFoundException -> 0x01f1, IOException -> 0x01fb }
        r23 = r23.toString();	 Catch:{ XmlPullParserException -> 0x01e7, FileNotFoundException -> 0x01f1, IOException -> 0x01fb }
        r0 = r23;
        r14.<init>(r0);	 Catch:{ XmlPullParserException -> 0x01e7, FileNotFoundException -> 0x01f1, IOException -> 0x01fb }
        r23 = r14.exists();	 Catch:{ XmlPullParserException -> 0x01e7, FileNotFoundException -> 0x01f1, IOException -> 0x01fb }
        if (r23 == 0) goto L_0x003b;
    L_0x0031:
        r24 = r14.length();	 Catch:{ XmlPullParserException -> 0x01e7, FileNotFoundException -> 0x01f1, IOException -> 0x01fb }
        r26 = 0;
        r23 = (r24 > r26 ? 1 : (r24 == r26 ? 0 : -1));
        if (r23 > 0) goto L_0x0040;
    L_0x003b:
        return;
    L_0x003c:
        r13 = "/system/csc";
        goto L_0x000e;
    L_0x0040:
        r12 = org.xmlpull.v1.XmlPullParserFactory.newInstance();	 Catch:{ XmlPullParserException -> 0x01e7, FileNotFoundException -> 0x01f1, IOException -> 0x01fb }
        r23 = 1;
        r0 = r23;
        r12.setNamespaceAware(r0);	 Catch:{ XmlPullParserException -> 0x01e7, FileNotFoundException -> 0x01f1, IOException -> 0x01fb }
        r19 = r12.newPullParser();	 Catch:{ XmlPullParserException -> 0x01e7, FileNotFoundException -> 0x01f1, IOException -> 0x01fb }
        r16 = new java.io.FileInputStream;	 Catch:{ XmlPullParserException -> 0x01e7, FileNotFoundException -> 0x01f1, IOException -> 0x01fb }
        r0 = r16;
        r0.<init>(r14);	 Catch:{ XmlPullParserException -> 0x01e7, FileNotFoundException -> 0x01f1, IOException -> 0x01fb }
        r0 = r28;
        r23 = r0.isXmlEncoded(r14);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        if (r23 == 0) goto L_0x00b9;
    L_0x005e:
        r21 = r16.available();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r0 = r21;
        r0 = new byte[r0];	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r22 = r0;
        r0 = r16;
        r1 = r22;
        r0.read(r1);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r16.close();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r0 = r28;
        r1 = r22;
        r20 = r0.decode(r1);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r18 = new java.io.ByteArrayInputStream;	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r0 = r18;
        r1 = r20;
        r0.<init>(r1);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r23 = 0;
        r0 = r19;
        r1 = r18;
        r2 = r23;
        r0.setInput(r1, r2);	 Catch:{ XmlPullParserException -> 0x01ea, FileNotFoundException -> 0x01f4, IOException -> 0x01fe, all -> 0x01e1 }
        r17 = r18;
    L_0x0090:
        r10 = r19.getEventType();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
    L_0x0094:
        r23 = 1;
        r0 = r23;
        if (r10 == r0) goto L_0x01af;
    L_0x009a:
        r23 = 2;
        r0 = r23;
        if (r10 != r0) goto L_0x00e1;
    L_0x00a0:
        r4 = r19.getName();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r23 = r19.getAttributeCount();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        if (r23 <= 0) goto L_0x00df;
    L_0x00aa:
        r23 = 0;
        r0 = r19;
        r1 = r23;
        r5 = r0.getAttributeValue(r1);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
    L_0x00b4:
        r10 = r19.next();	 Catch:{ IOException -> 0x0192, XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, all -> 0x019e }
        goto L_0x0094;
    L_0x00b9:
        r23 = 0;
        r0 = r19;
        r1 = r16;
        r2 = r23;
        r0.setInput(r1, r2);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        goto L_0x0090;
    L_0x00c5:
        r9 = move-exception;
        r15 = r16;
    L_0x00c8:
        r23 = java.lang.System.out;	 Catch:{ all -> 0x01df }
        r24 = r9.toString();	 Catch:{ all -> 0x01df }
        r23.println(r24);	 Catch:{ all -> 0x01df }
        if (r15 == 0) goto L_0x00d7;
    L_0x00d3:
        r15.close();	 Catch:{ IOException -> 0x01c8 }
        r15 = 0;
    L_0x00d7:
        if (r17 == 0) goto L_0x00de;
    L_0x00d9:
        r17.close();	 Catch:{ IOException -> 0x01c8 }
    L_0x00dc:
        r17 = 0;
    L_0x00de:
        return;
    L_0x00df:
        r5 = 0;
        goto L_0x00b4;
    L_0x00e1:
        r23 = 4;
        r0 = r23;
        if (r10 != r0) goto L_0x00b4;
    L_0x00e7:
        r6 = r19.getText();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        if (r4 == 0) goto L_0x00b4;
    L_0x00ed:
        if (r6 == 0) goto L_0x00b4;
    L_0x00ef:
        if (r5 == 0) goto L_0x010d;
    L_0x00f1:
        r23 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r23.<init>();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r0 = r23;
        r23 = r0.append(r4);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r24 = ",";
        r23 = r23.append(r24);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r0 = r23;
        r23 = r0.append(r5);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r4 = r23.toString();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
    L_0x010d:
        r0 = r28;
        r0 = r0.mFeatureList_2;	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r23 = r0;
        r0 = r23;
        r23 = r0.containsKey(r4);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        if (r23 == 0) goto L_0x0150;
    L_0x011b:
        r10 = r19.next();	 Catch:{ IOException -> 0x0121, XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, all -> 0x019e }
        goto L_0x0094;
    L_0x0121:
        r8 = move-exception;
        r23 = java.lang.System.out;	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r24 = r8.toString();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r23.println(r24);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        goto L_0x0094;
    L_0x012d:
        r7 = move-exception;
        r15 = r16;
    L_0x0130:
        r23 = java.lang.System.out;	 Catch:{ all -> 0x01df }
        r24 = r7.toString();	 Catch:{ all -> 0x01df }
        r23.println(r24);	 Catch:{ all -> 0x01df }
        if (r15 == 0) goto L_0x013f;
    L_0x013b:
        r15.close();	 Catch:{ IOException -> 0x0145 }
        r15 = 0;
    L_0x013f:
        if (r17 == 0) goto L_0x00de;
    L_0x0141:
        r17.close();	 Catch:{ IOException -> 0x0145 }
        goto L_0x00dc;
    L_0x0145:
        r8 = move-exception;
        r23 = java.lang.System.out;
        r24 = r8.toString();
        r23.println(r24);
        goto L_0x00de;
    L_0x0150:
        r6 = r6.trim();	 Catch:{ Exception -> 0x0161 }
        r0 = r28;
        r0 = r0.mFeatureList_2;	 Catch:{ Exception -> 0x0161 }
        r23 = r0;
        r0 = r23;
        r0.put(r4, r6);	 Catch:{ Exception -> 0x0161 }
        goto L_0x00b4;
    L_0x0161:
        r11 = move-exception;
        r23 = java.lang.System.out;	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r24 = r11.toString();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r23.println(r24);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        goto L_0x00b4;
    L_0x016d:
        r8 = move-exception;
        r15 = r16;
    L_0x0170:
        r23 = java.lang.System.out;	 Catch:{ all -> 0x01df }
        r24 = r8.toString();	 Catch:{ all -> 0x01df }
        r23.println(r24);	 Catch:{ all -> 0x01df }
        if (r15 == 0) goto L_0x017f;
    L_0x017b:
        r15.close();	 Catch:{ IOException -> 0x0186 }
        r15 = 0;
    L_0x017f:
        if (r17 == 0) goto L_0x00de;
    L_0x0181:
        r17.close();	 Catch:{ IOException -> 0x0186 }
        goto L_0x00dc;
    L_0x0186:
        r8 = move-exception;
        r23 = java.lang.System.out;
        r24 = r8.toString();
        r23.println(r24);
        goto L_0x00de;
    L_0x0192:
        r8 = move-exception;
        r23 = java.lang.System.out;	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r24 = r8.toString();	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        r23.println(r24);	 Catch:{ XmlPullParserException -> 0x00c5, FileNotFoundException -> 0x012d, IOException -> 0x016d, all -> 0x019e }
        goto L_0x0094;
    L_0x019e:
        r23 = move-exception;
        r15 = r16;
    L_0x01a1:
        if (r15 == 0) goto L_0x01a7;
    L_0x01a3:
        r15.close();	 Catch:{ IOException -> 0x01d4 }
        r15 = 0;
    L_0x01a7:
        if (r17 == 0) goto L_0x01ae;
    L_0x01a9:
        r17.close();	 Catch:{ IOException -> 0x01d4 }
        r17 = 0;
    L_0x01ae:
        throw r23;
    L_0x01af:
        if (r16 == 0) goto L_0x0209;
    L_0x01b1:
        r16.close();	 Catch:{ IOException -> 0x0205 }
        r15 = 0;
    L_0x01b5:
        if (r17 == 0) goto L_0x00de;
    L_0x01b7:
        r17.close();	 Catch:{ IOException -> 0x01bc }
        goto L_0x00dc;
    L_0x01bc:
        r8 = move-exception;
    L_0x01bd:
        r23 = java.lang.System.out;
        r24 = r8.toString();
        r23.println(r24);
        goto L_0x00de;
    L_0x01c8:
        r8 = move-exception;
        r23 = java.lang.System.out;
        r24 = r8.toString();
        r23.println(r24);
        goto L_0x00de;
    L_0x01d4:
        r8 = move-exception;
        r24 = java.lang.System.out;
        r25 = r8.toString();
        r24.println(r25);
        goto L_0x01ae;
    L_0x01df:
        r23 = move-exception;
        goto L_0x01a1;
    L_0x01e1:
        r23 = move-exception;
        r17 = r18;
        r15 = r16;
        goto L_0x01a1;
    L_0x01e7:
        r9 = move-exception;
        goto L_0x00c8;
    L_0x01ea:
        r9 = move-exception;
        r17 = r18;
        r15 = r16;
        goto L_0x00c8;
    L_0x01f1:
        r7 = move-exception;
        goto L_0x0130;
    L_0x01f4:
        r7 = move-exception;
        r17 = r18;
        r15 = r16;
        goto L_0x0130;
    L_0x01fb:
        r8 = move-exception;
        goto L_0x0170;
    L_0x01fe:
        r8 = move-exception;
        r17 = r18;
        r15 = r16;
        goto L_0x0170;
    L_0x0205:
        r8 = move-exception;
        r15 = r16;
        goto L_0x01bd;
    L_0x0209:
        r15 = r16;
        goto L_0x01b5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.feature.SemCscFeature.loadNetworkFeatureFile2nd(boolean, java.lang.String):void");
    }

    public boolean getBoolean(int i, String str) {

        return false;
    }

    public boolean getBoolean(int i, String str, boolean z) {
        return false;
    }

    public boolean getBoolean(String str) {
        try {
            String str2;
            String str3 = SystemProperties.get("ril.NwNmId", "null");
            if (str3 != "null") {
                str2 = (String) this.mFeatureList.get(str + "," + str3);
                if (str2 == null) {
                    str2 = (String) this.mFeatureList.get(str);
                }
            } else {
                str2 = (String) this.mFeatureList.get(str);
            }
            return str2 != null ? Boolean.parseBoolean(str2) : false;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean getBoolean(String str, boolean z) {
        try {
            String str2;
            String str3 = SystemProperties.get("ril.NwNmId", "null");
            if (str3 != "null") {
                str2 = (String) this.mFeatureList.get(str + "," + str3);
                if (str2 == null) {
                    str2 = (String) this.mFeatureList.get(str);
                }
            } else {
                str2 = (String) this.mFeatureList.get(str);
            }
            return str2 != null ? Boolean.parseBoolean(str2) : z;
        } catch (Exception e) {
            return z;
        }
    }

    public int getInt(int i, String str) {
        return 0;
    }

    public int getInt(int i, String str, int i2) {
        return 0;
    }

    public int getInt(String str) {
        try {
            String str2;
            String str3 = SystemProperties.get("ril.NwNmId", "null");
            if (str3 != "null") {
                str2 = (String) this.mFeatureList.get(str + "," + str3);
                if (str2 == null) {
                    str2 = (String) this.mFeatureList.get(str);
                }
            } else {
                str2 = (String) this.mFeatureList.get(str);
            }
            return str2 != null ? Integer.parseInt(str2) : -1;
        } catch (Exception e) {
            return -1;
        }
    }

    public int getInt(String str, int i) {
        try {
            String str2;
            String str3 = SystemProperties.get("ril.NwNmId", "null");
            if (str3 != "null") {
                str2 = (String) this.mFeatureList.get(str + "," + str3);
                if (str2 == null) {
                    str2 = (String) this.mFeatureList.get(str);
                }
            } else {
                str2 = (String) this.mFeatureList.get(str);
            }
            return str2 != null ? Integer.parseInt(str2) : i;
        } catch (Exception e) {
            return i;
        }
    }

    public int getInteger(int i, String str) {
        return getInt(i, str);
    }

    public int getInteger(int i, String str, int i2) {
        return getInt(i, str, i2);
    }

    public int getInteger(String str) {
        return getInt(str);
    }

    public int getInteger(String str, int i) {
        return getInt(str, i);
    }

    public String getString(int i, String str) {
        return null;
    }

    public String getString(int i, String str, String str2) {
        return null;
    }

    public String getString(String str) {
        try {
            String str2;
            String str3 = SystemProperties.get("ril.NwNmId", "null");
            if (str3 != "null") {
                str2 = (String) this.mFeatureList.get(str + "," + str3);
                if (str2 == null) {
                    str2 = (String) this.mFeatureList.get(str);
                }
            } else {
                str2 = (String) this.mFeatureList.get(str);
            }
            return str2 != null ? str2 : "";
        } catch (Exception e) {
            return "";
        }
    }

    public String getString(String str, String str2) {
        try {
            String str3;
            String str4 = SystemProperties.get("ril.NwNmId", "null");
            if (str4 != "null") {
                str3 = (String) this.mFeatureList.get(str + "," + str4);
                if (str3 == null) {
                    str3 = (String) this.mFeatureList.get(str);
                }
            } else {
                str3 = (String) this.mFeatureList.get(str);
            }
            return str3 != null ? str3 : str2;
        } catch (Exception e) {
            return str2;
        }
    }

    public Hashtable<String, String> tracer(int i) {
        if (i == 0) {
            Log.d(TAG, "mFeatureList");
            return this.mFeatureList;
        } else if (i == 1) {
            Log.d(TAG, "mFeatureList_2");
            return this.mFeatureList_2;
        } else {
            Log.d(TAG, "Invalid feature table number");
            return null;
        }
    }
}
