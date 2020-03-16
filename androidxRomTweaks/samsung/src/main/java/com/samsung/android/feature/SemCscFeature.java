package com.samsung.android.feature;

import android.os.SystemProperties;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Hashtable;
import java.util.zip.GZIPInputStream;

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

    private byte[] _decode(byte[] source) {
        byte[] results = new byte[source.length];
        for (int i = 0; i < source.length; i++) {
            results[i] = (byte) (((source[i] & 255) << this.shifts[i % 256]) | ((source[i] & 255) >>> (8 - this.shifts[i % 256])));
            results[i] = (byte) (results[i] ^ this.salts[i % 256]);
        }
        return results;
    }

    private byte[] _decompressGzip(byte[] sourceGz) throws IOException {
        BufferedInputStream bis = null;
        GZIPInputStream gzIs = null;
        try {
            byte[] buffer = new byte[1024];
            bis = new BufferedInputStream(new ByteArrayInputStream(sourceGz));
            gzIs = new GZIPInputStream(bis);
            ByteArrayOutputStream resultStream = new ByteArrayOutputStream();
            while (gzIs.available() > 0) {
                BufferedOutputStream bos = new BufferedOutputStream(resultStream);
                int len = 0;
                while (true) {
                    int read = gzIs.read(buffer);
                    len = read;
                    if (read == -1) {
                        break;
                    }
                    bos.write(buffer, 0, len);
                }
                bos.close();
            }
            byte[] result = resultStream.toByteArray();
            resultStream.close();
            gzIs.close();
            bis.close();
            try {
                gzIs.close();
                bis.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return result;
        } catch (Exception e2) {
            e2.printStackTrace();
            if (gzIs != null) {
                try {
                    gzIs.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                    return null;
                }
            }
            if (bis != null) {
                try {
                    bis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return null;
        } catch (Throwable th) {
            if (gzIs != null) {
                try {
                    gzIs.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            if (bis != null) {
                bis.close();
            }
        }
        return sourceGz;
    }

    private boolean isXmlEncoded(File featureXmlFile) {
        BufferedReader ptrRead = null;
        try {
            ptrRead = new BufferedReader(new FileReader(featureXmlFile));
            String headerStr = ptrRead.readLine();
            ptrRead.close();
            if (headerStr != null) {
                if (!headerStr.contains("<?xml")) {
                  //  Log.d(TAG, "Encoded");
                    try {
                        ptrRead.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    return true;
                }
            }
            try {
                ptrRead.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            return false;
        } catch (Exception e3) {
          //  Log.e(TAG, "Exception : isXmlEncoded");
            if (ptrRead != null) {
                try {
                    ptrRead.close();
                } catch (IOException e22) {
                    e22.printStackTrace();
                }
            }
            return false;
        } catch (Throwable th) {
            if (ptrRead != null) {
                try {
                    ptrRead.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
        }
        return false;
    }

    private byte[] decode(byte[] source) throws IOException {
        return _decompressGzip(_decode(source));
    }

    private SemCscFeature() {
        boolean isOmc = false;
        try {
            File f = new File("/system/omc/SW_Configuration.xml");
            File fOdm = new File("/odm/omc/SW_Configuration.xml");
            File fProduct = new File("/product/omc/SW_Configuration.xml");
            if (f.exists() || fOdm.exists() || fProduct.exists()) {
                isOmc = true;
            }
            String omcPath = SystemProperties.get("persist.sys.omc_path", "");
            String omcNwPath = SystemProperties.get("persist.sys.omcnw_path", "");
            String omcNwPath2 = SystemProperties.get("persist.sys.omcnw_path2", "");
            if (loadFeatureFile(isOmc, omcPath)) {
                loadNetworkFeatureFile(isOmc, omcNwPath);
                if (omcNwPath2 != null) {
                    loadFeatureFile2nd(isOmc, omcPath);
                    loadNetworkFeatureFile2nd(isOmc, omcNwPath2);
                }
            }
        } catch (Exception e) {

        }
    }

    public Hashtable<String, String> tracer(int tableNumber) {
        if (tableNumber == 0) {

            return this.mFeatureList;
        } else if (tableNumber == 1) {

            return this.mFeatureList_2;
        } else {

            return null;
        }
    }

    public static SemCscFeature getInstance() {
        if (sInstance == null) {
            sInstance = new SemCscFeature();
        }
        return sInstance;
    }

    public boolean getBoolean(String tag) {
        try {
            String value;
            String sNwNmID = SystemProperties.get("ril.NwNmId", "null");
            if (sNwNmID != "null") {
                Hashtable hashtable = this.mFeatureList;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(tag);
                stringBuilder.append(",");
                stringBuilder.append(sNwNmID);
                value = (String) hashtable.get(stringBuilder.toString());
                if (value == null) {
                    value = (String) this.mFeatureList.get(tag);
                }
            } else {
                value = (String) this.mFeatureList.get(tag);
            }
            if (value != null) {
                return Boolean.parseBoolean(value);
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean getBoolean(String tag, boolean defaultValue) {
        try {
            String value;
            String sNwNmID = SystemProperties.get("ril.NwNmId", "null");
            if (sNwNmID != "null") {
                Hashtable hashtable = this.mFeatureList;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(tag);
                stringBuilder.append(",");
                stringBuilder.append(sNwNmID);
                value = (String) hashtable.get(stringBuilder.toString());
                if (value == null) {
                    value = (String) this.mFeatureList.get(tag);
                }
            } else {
                value = (String) this.mFeatureList.get(tag);
            }
            if (value != null) {
                return Boolean.parseBoolean(value);
            }
            return defaultValue;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public String getString(String tag) {
        try {
            String value;
            String sNwNmID = SystemProperties.get("ril.NwNmId", "null");
            if (sNwNmID != "null") {
                Hashtable hashtable = this.mFeatureList;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(tag);
                stringBuilder.append(",");
                stringBuilder.append(sNwNmID);
                value = (String) hashtable.get(stringBuilder.toString());
                if (value == null) {
                    value = (String) this.mFeatureList.get(tag);
                }
            } else {
                value = (String) this.mFeatureList.get(tag);
            }
            if (value != null) {
                return value;
            }
            return "";
        } catch (Exception e) {
            return "";
        }
    }

    public String getString(String tag, String defaultValue) {
        try {
            String value;
            String sNwNmID = SystemProperties.get("ril.NwNmId", "null");
            if (sNwNmID != "null") {
                Hashtable hashtable = this.mFeatureList;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(tag);
                stringBuilder.append(",");
                stringBuilder.append(sNwNmID);
                value = (String) hashtable.get(stringBuilder.toString());
                if (value == null) {
                    value = (String) this.mFeatureList.get(tag);
                }
            } else {
                value = (String) this.mFeatureList.get(tag);
            }
            if (value != null) {
                return value;
            }
            return defaultValue;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public int getInteger(String tag) {
        return getInt(tag);
    }

    public int getInt(String tag) {
        try {
            String value;
            String sNwNmID = SystemProperties.get("ril.NwNmId", "null");
            if (sNwNmID != "null") {
                Hashtable hashtable = this.mFeatureList;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(tag);
                stringBuilder.append(",");
                stringBuilder.append(sNwNmID);
                value = (String) hashtable.get(stringBuilder.toString());
                if (value == null) {
                    value = (String) this.mFeatureList.get(tag);
                }
            } else {
                value = (String) this.mFeatureList.get(tag);
            }
            if (value != null) {
                return Integer.parseInt(value);
            }
            return -1;
        } catch (Exception e) {
            return -1;
        }
    }

    public int getInteger(String tag, int defaultValue) {
        return getInt(tag, defaultValue);
    }

    public int getInt(String tag, int defaultValue) {
        try {
            String value;
            String sNwNmID = SystemProperties.get("ril.NwNmId", "null");
            if (sNwNmID != "null") {
                Hashtable hashtable = this.mFeatureList;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(tag);
                stringBuilder.append(",");
                stringBuilder.append(sNwNmID);
                value = (String) hashtable.get(stringBuilder.toString());
                if (value == null) {
                    value = (String) this.mFeatureList.get(tag);
                }
            } else {
                value = (String) this.mFeatureList.get(tag);
            }
            if (value != null) {
                return Integer.parseInt(value);
            }
            return defaultValue;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public boolean getBoolean(int slotId, String tag) {
        if (slotId != 1 || !isUseOdmProduct()) {
            return getBoolean(tag);
        }
        try {
            String value;
            String sNwNmID = SystemProperties.get("ril.NwNmId2", "");
            if (sNwNmID != null) {
                Hashtable hashtable = this.mFeatureList_2;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(tag);
                stringBuilder.append(",");
                stringBuilder.append(sNwNmID);
                value = (String) hashtable.get(stringBuilder.toString());
                if (value == null) {
                    value = (String) this.mFeatureList_2.get(tag);
                }
            } else {
                value = (String) this.mFeatureList_2.get(tag);
            }
            if (value != null) {
                return Boolean.parseBoolean(value);
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean getBoolean(int slotId, String tag, boolean defaultValue) {
        if (slotId != 1 || !isUseOdmProduct()) {
            return getBoolean(tag, defaultValue);
        }
        try {
            String value;
            String sNwNmID = SystemProperties.get("ril.NwNmId2", "");
            if (sNwNmID != null) {
                Hashtable hashtable = this.mFeatureList_2;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(tag);
                stringBuilder.append(",");
                stringBuilder.append(sNwNmID);
                value = (String) hashtable.get(stringBuilder.toString());
                if (value == null) {
                    value = (String) this.mFeatureList_2.get(tag);
                }
            } else {
                value = (String) this.mFeatureList_2.get(tag);
            }
            if (value != null) {
                return Boolean.parseBoolean(value);
            }
            return defaultValue;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public String getString(int slotId, String tag) {
        if (slotId != 1 || !isUseOdmProduct()) {
            return getString(tag);
        }
        try {
            String value;
            String sNwNmID = SystemProperties.get("ril.NwNmId2", "");
            if (sNwNmID != null) {
                Hashtable hashtable = this.mFeatureList_2;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(tag);
                stringBuilder.append(",");
                stringBuilder.append(sNwNmID);
                value = (String) hashtable.get(stringBuilder.toString());
                if (value == null) {
                    value = (String) this.mFeatureList_2.get(tag);
                }
            } else {
                value = (String) this.mFeatureList_2.get(tag);
            }
            if (value != null) {
                return value;
            }
            return "";
        } catch (Exception e) {
            return "";
        }
    }

    public String getString(int slotId, String tag, String defaultValue) {
        if (slotId != 1 || !isUseOdmProduct()) {
            return getString(tag, defaultValue);
        }
        try {
            String value;
            String sNwNmID = SystemProperties.get("ril.NwNmId2", "");
            if (sNwNmID != null) {
                Hashtable hashtable = this.mFeatureList_2;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(tag);
                stringBuilder.append(",");
                stringBuilder.append(sNwNmID);
                value = (String) hashtable.get(stringBuilder.toString());
                if (value == null) {
                    value = (String) this.mFeatureList_2.get(tag);
                }
            } else {
                value = (String) this.mFeatureList_2.get(tag);
            }
            if (value != null) {
                return value;
            }
            return defaultValue;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public int getInteger(int slotId, String tag) {
        return getInt(slotId, tag);
    }

    public int getInt(int slotId, String tag) {
        if (slotId != 1 || !isUseOdmProduct()) {
            return getInt(tag);
        }
        try {
            String value;
            String sNwNmID = SystemProperties.get("ril.NwNmId2", "");
            if (sNwNmID != null) {
                Hashtable hashtable = this.mFeatureList_2;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(tag);
                stringBuilder.append(",");
                stringBuilder.append(sNwNmID);
                value = (String) hashtable.get(stringBuilder.toString());
                if (value == null) {
                    value = (String) this.mFeatureList_2.get(tag);
                }
            } else {
                value = (String) this.mFeatureList_2.get(tag);
            }
            if (value != null) {
                return Integer.parseInt(value);
            }
            return -1;
        } catch (Exception e) {
            return -1;
        }
    }

    public int getInteger(int slotId, String tag, int defaultValue) {
        return getInt(slotId, tag, defaultValue);
    }

    public int getInt(int slotId, String tag, int defaultValue) {
        if (slotId != 1 || !isUseOdmProduct()) {
            return getInt(tag, defaultValue);
        }
        try {
            String value;
            String sNwNmID = SystemProperties.get("ril.NwNmId2", "");
            if (sNwNmID != null) {
                Hashtable hashtable = this.mFeatureList_2;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(tag);
                stringBuilder.append(",");
                stringBuilder.append(sNwNmID);
                value = (String) hashtable.get(stringBuilder.toString());
                if (value == null) {
                    value = (String) this.mFeatureList_2.get(tag);
                }
            } else {
                value = (String) this.mFeatureList_2.get(tag);
            }
            if (value != null) {
                return Integer.parseInt(value);
            }
            return defaultValue;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    private boolean isUseOdmProduct() {
        File fOdm = new File("/odm/omc/SW_Configuration.xml");
        File fProduct = new File("/product/omc/SW_Configuration.xml");
        if (fOdm.exists() || fProduct.exists()) {
            return true;
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x00c6 A:{Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167, all -> 0x0161 }} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00a7 A:{Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167, all -> 0x0161 }} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00d2 A:{Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167, all -> 0x0161 }} */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0132 A:{Catch:{ IOException -> 0x012e }} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00a7 A:{Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167, all -> 0x0161 }} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00c6 A:{Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167, all -> 0x0161 }} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00d2 A:{Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167, all -> 0x0161 }} */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0132 A:{Catch:{ IOException -> 0x012e }} */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0195 A:{ExcHandler: XmlPullParserException (r0_3 'e' org.xmlpull.v1.XmlPullParserException), PHI: r2 r3 r4 r5 r9 , Splitter:B:1:0x000b} */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x017e A:{ExcHandler: FileNotFoundException (r0_5 'e' java.io.FileNotFoundException), PHI: r2 r3 r4 r5 r9 , Splitter:B:1:0x000b} */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0195 A:{ExcHandler: XmlPullParserException (r0_3 'e' org.xmlpull.v1.XmlPullParserException), PHI: r2 r3 r4 r5 r9 , Splitter:B:1:0x000b} */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x017e A:{ExcHandler: FileNotFoundException (r0_5 'e' java.io.FileNotFoundException), PHI: r2 r3 r4 r5 r9 , Splitter:B:1:0x000b} */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0195 A:{ExcHandler: XmlPullParserException (r0_3 'e' org.xmlpull.v1.XmlPullParserException), PHI: r2 r3 r4 r5 r9 , Splitter:B:1:0x000b} */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x017e A:{ExcHandler: FileNotFoundException (r0_5 'e' java.io.FileNotFoundException), PHI: r2 r3 r4 r5 r9 , Splitter:B:1:0x000b} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:42:0x00f5, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:43:0x00f6, code skipped:
            r13 = r0;
     */
    /* JADX WARNING: Missing block: B:45:?, code skipped:
            android.util.Log.w(TAG, r0.toString());
     */
    /* JADX WARNING: Missing block: B:77:0x0161, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:78:0x0162, code skipped:
            r10 = r9;
            r9 = r5;
            r5 = r2;
            r2 = r0;
     */
    /* JADX WARNING: Missing block: B:79:0x0167, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:81:?, code skipped:
            android.util.Log.w(TAG, r0.toString());
     */
    /* JADX WARNING: Missing block: B:82:0x0171, code skipped:
            if (r3 != null) goto L_0x0173;
     */
    /* JADX WARNING: Missing block: B:84:?, code skipped:
            r3.close();
            r3 = null;
     */
    /* JADX WARNING: Missing block: B:85:0x0178, code skipped:
            if (r4 != null) goto L_0x017a;
     */
    /* JADX WARNING: Missing block: B:86:0x017a, code skipped:
            r4.close();
     */
    /* JADX WARNING: Missing block: B:87:0x017e, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:89:?, code skipped:
            android.util.Log.w(TAG, r0.toString());
     */
    /* JADX WARNING: Missing block: B:90:0x0188, code skipped:
            if (r3 != null) goto L_0x018a;
     */
    /* JADX WARNING: Missing block: B:92:?, code skipped:
            r3.close();
            r3 = null;
     */
    /* JADX WARNING: Missing block: B:93:0x018f, code skipped:
            if (r4 != null) goto L_0x0191;
     */
    /* JADX WARNING: Missing block: B:94:0x0191, code skipped:
            r4.close();
     */
    /* JADX WARNING: Missing block: B:95:0x0195, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:97:?, code skipped:
            android.util.Log.w(TAG, r0.toString());
     */
    /* JADX WARNING: Missing block: B:98:0x019f, code skipped:
            if (r3 != null) goto L_0x01a1;
     */
    /* JADX WARNING: Missing block: B:100:?, code skipped:
            r3.close();
            r3 = null;
     */
    /* JADX WARNING: Missing block: B:101:0x01a7, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:103:0x01a9, code skipped:
            if (r4 != null) goto L_0x01ab;
     */
    /* JADX WARNING: Missing block: B:104:0x01ab, code skipped:
            r4.close();
     */
    /* JADX WARNING: Missing block: B:106:0x01b1, code skipped:
            android.util.Log.w(TAG, r0.toString());
     */
    /* JADX WARNING: Missing block: B:108:0x01bf, code skipped:
            if (r3 != null) goto L_0x01c1;
     */
    /* JADX WARNING: Missing block: B:110:?, code skipped:
            r3.close();
     */
    /* JADX WARNING: Missing block: B:111:0x01c6, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:113:0x01c8, code skipped:
            if (r4 != null) goto L_0x01ca;
     */
    /* JADX WARNING: Missing block: B:114:0x01ca, code skipped:
            r4.close();
     */
    /* JADX WARNING: Missing block: B:116:0x01cf, code skipped:
            android.util.Log.w(TAG, r0.toString());
     */
    private boolean loadFeatureFile(boolean r19, java.lang.String r20) {
        /*
        r18 = this;
        r1 = r18;
        r2 = 0;
        r3 = 0;
        r4 = 0;
        r5 = -1;
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r0 = 0;
        r9 = r0;
        r0 = r1.mFeatureList;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r0.clear();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        if (r19 == 0) goto L_0x0015;
    L_0x0012:
        r0 = r20;
        goto L_0x0017;
    L_0x0015:
        r0 = "/system/csc";
    L_0x0017:
        r8 = r0;
        r0 = new java.io.File;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10.<init>();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10.append(r8);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r11 = "/cscfeature.xml";
        r10.append(r11);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10 = r10.toString();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r0.<init>(r10);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10 = r0.exists();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r11 = 0;
        if (r10 == 0) goto L_0x0042;
    L_0x0036:
        r13 = r0.length();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1));
        if (r10 > 0) goto L_0x003f;
    L_0x003e:
        goto L_0x0042;
    L_0x003f:
        r9 = 1;
    L_0x0040:
        r10 = r0;
        goto L_0x008d;
    L_0x0042:
        r10 = new java.io.File;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13.<init>();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13.append(r8);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r14 = "/feature.xml";
        r13.append(r14);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13 = r13.toString();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10.<init>(r13);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r0 = r10;
        r10 = r0.exists();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        if (r10 == 0) goto L_0x0067;
    L_0x005f:
        r13 = r0.length();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1));
        if (r10 > 0) goto L_0x0040;
    L_0x0067:
        r10 = new java.io.File;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13.<init>();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13.append(r8);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r14 = "/others.xml";
        r13.append(r14);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13 = r13.toString();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10.<init>(r13);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r0 = r10.exists();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        if (r0 == 0) goto L_0x0143;
    L_0x0083:
        r13 = r10.length();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r0 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1));
        if (r0 > 0) goto L_0x008d;
    L_0x008b:
        goto L_0x0143;
    L_0x008d:
        r0 = org.xmlpull.v1.XmlPullParserFactory.newInstance();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r11 = r0;
        r12 = 1;
        r11.setNamespaceAware(r12);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r0 = r11.newPullParser();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r2 = r0;
        r0 = new java.io.FileInputStream;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r0.<init>(r10);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r3 = r0;
        r0 = r1.isXmlEncoded(r10);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        if (r0 == 0) goto L_0x00c6;
    L_0x00a7:
        r0 = r3.available();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r14 = new byte[r0];	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r3.read(r14);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r3.close();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r15 = r1.decode(r14);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r16 = r15;
        r12 = new java.io.ByteArrayInputStream;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13 = r16;
        r12.<init>(r13);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r4 = r12;
        r12 = 0;
        r2.setInput(r4, r12);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        goto L_0x00ca;
    L_0x00c6:
        r0 = 0;
        r2.setInput(r3, r0);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
    L_0x00ca:
        r0 = r2.getEventType();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r5 = r0;
    L_0x00cf:
        r12 = 1;
        if (r5 == r12) goto L_0x0128;
    L_0x00d2:
        r0 = 2;
        if (r5 != r0) goto L_0x00db;
    L_0x00d5:
        r0 = r2.getName();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r6 = r0;
        goto L_0x0116;
    L_0x00db:
        r0 = 4;
        if (r5 != r0) goto L_0x0116;
    L_0x00de:
        r0 = r2.getText();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r7 = r0;
        if (r6 == 0) goto L_0x0116;
    L_0x00e5:
        if (r7 == 0) goto L_0x0116;
    L_0x00e7:
        r0 = r1.mFeatureList;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r0 = r0.containsKey(r6);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        if (r0 == 0) goto L_0x0101;
    L_0x00ef:
        r0 = r2.next();	 Catch:{ IOException -> 0x00f5, XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e }
        r5 = r0;
        goto L_0x00cf;
    L_0x00f5:
        r0 = move-exception;
        r13 = r0;
        r13 = "SemCscFeature";
        r14 = r0.toString();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        android.util.Log.w(r13, r14);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        goto L_0x00cf;
    L_0x0101:
        r0 = r7.trim();	 Catch:{ Exception -> 0x010c }
        r7 = r0;
        r0 = r1.mFeatureList;	 Catch:{ Exception -> 0x010c }
        r0.put(r6, r7);	 Catch:{ Exception -> 0x010c }
        goto L_0x0116;
    L_0x010c:
        r0 = move-exception;
        r13 = "SemCscFeature";
        r14 = r0.toString();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        android.util.Log.w(r13, r14);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
    L_0x0116:
        r0 = r2.next();	 Catch:{ IOException -> 0x011c, XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e }
        r5 = r0;
    L_0x011b:
        goto L_0x00cf;
    L_0x011c:
        r0 = move-exception;
        r13 = r0;
        r13 = "SemCscFeature";
        r14 = r0.toString();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        android.util.Log.w(r13, r14);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        goto L_0x011b;
        r3.close();	 Catch:{ IOException -> 0x012e }
        r3 = 0;
        goto L_0x0130;
    L_0x012e:
        r0 = move-exception;
        goto L_0x0137;
    L_0x0130:
        if (r4 == 0) goto L_0x01bc;
    L_0x0132:
        r4.close();	 Catch:{ IOException -> 0x012e }
        goto L_0x01ae;
        r10 = "SemCscFeature";
        r12 = r0.toString();
        android.util.Log.w(r10, r12);
        goto L_0x01bb;
        if (r3 == 0) goto L_0x014d;
    L_0x0146:
        r3.close();	 Catch:{ IOException -> 0x014b }
        r3 = 0;
        goto L_0x014d;
    L_0x014b:
        r0 = move-exception;
        goto L_0x0154;
    L_0x014d:
        if (r4 == 0) goto L_0x015f;
    L_0x014f:
        r4.close();	 Catch:{ IOException -> 0x014b }
        r4 = 0;
        goto L_0x015f;
        r11 = "SemCscFeature";
        r12 = r0.toString();
        android.util.Log.w(r11, r12);
        goto L_0x0160;
    L_0x0160:
        return r9;
    L_0x0161:
        r0 = move-exception;
        r10 = r9;
        r9 = r5;
        r5 = r2;
        r2 = r0;
        goto L_0x01be;
    L_0x0167:
        r0 = move-exception;
        r10 = "SemCscFeature";
        r11 = r0.toString();	 Catch:{ all -> 0x0161 }
        android.util.Log.w(r10, r11);	 Catch:{ all -> 0x0161 }
        if (r3 == 0) goto L_0x0178;
    L_0x0173:
        r3.close();	 Catch:{ IOException -> 0x01a7 }
        r0 = 0;
        r3 = r0;
    L_0x0178:
        if (r4 == 0) goto L_0x01bc;
    L_0x017a:
        r4.close();	 Catch:{ IOException -> 0x01a7 }
        goto L_0x01ae;
    L_0x017e:
        r0 = move-exception;
        r10 = "SemCscFeature";
        r11 = r0.toString();	 Catch:{ all -> 0x0161 }
        android.util.Log.w(r10, r11);	 Catch:{ all -> 0x0161 }
        if (r3 == 0) goto L_0x018f;
    L_0x018a:
        r3.close();	 Catch:{ IOException -> 0x01a7 }
        r0 = 0;
        r3 = r0;
    L_0x018f:
        if (r4 == 0) goto L_0x01bc;
    L_0x0191:
        r4.close();	 Catch:{ IOException -> 0x01a7 }
        goto L_0x01ae;
    L_0x0195:
        r0 = move-exception;
        r10 = "SemCscFeature";
        r11 = r0.toString();	 Catch:{ all -> 0x0161 }
        android.util.Log.w(r10, r11);	 Catch:{ all -> 0x0161 }
        if (r3 == 0) goto L_0x01a9;
    L_0x01a1:
        r3.close();	 Catch:{ IOException -> 0x01a7 }
        r0 = 0;
        r3 = r0;
        goto L_0x01a9;
    L_0x01a7:
        r0 = move-exception;
        goto L_0x01b1;
    L_0x01a9:
        if (r4 == 0) goto L_0x01bc;
    L_0x01ab:
        r4.close();	 Catch:{ IOException -> 0x01a7 }
    L_0x01ae:
        r0 = 0;
        r4 = r0;
        goto L_0x01bc;
        r10 = "SemCscFeature";
        r11 = r0.toString();
        android.util.Log.w(r10, r11);
    L_0x01bb:
        goto L_0x01bd;
    L_0x01bd:
        return r9;
        if (r3 == 0) goto L_0x01c8;
    L_0x01c1:
        r3.close();	 Catch:{ IOException -> 0x01c6 }
        r3 = 0;
        goto L_0x01c8;
    L_0x01c6:
        r0 = move-exception;
        goto L_0x01cf;
    L_0x01c8:
        if (r4 == 0) goto L_0x01da;
    L_0x01ca:
        r4.close();	 Catch:{ IOException -> 0x01c6 }
        r4 = 0;
        goto L_0x01da;
        r11 = r0.toString();
        r12 = "SemCscFeature";
        android.util.Log.w(r12, r11);
    L_0x01da:
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.feature.SemCscFeature.loadFeatureFile(boolean, java.lang.String):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:89:0x0165 A:{ExcHandler: XmlPullParserException (r0_3 'e' org.xmlpull.v1.XmlPullParserException), PHI: r2 r3 r4 r5 , Splitter:B:3:0x0010} */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x014e A:{ExcHandler: FileNotFoundException (r0_5 'e' java.io.FileNotFoundException), PHI: r2 r3 r4 r5 , Splitter:B:3:0x0010} */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x0165 A:{ExcHandler: XmlPullParserException (r0_3 'e' org.xmlpull.v1.XmlPullParserException), PHI: r2 r3 r4 r5 , Splitter:B:3:0x0010} */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x014e A:{ExcHandler: FileNotFoundException (r0_5 'e' java.io.FileNotFoundException), PHI: r2 r3 r4 r5 , Splitter:B:3:0x0010} */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x0165 A:{ExcHandler: XmlPullParserException (r0_3 'e' org.xmlpull.v1.XmlPullParserException), PHI: r2 r3 r4 r5 , Splitter:B:3:0x0010} */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x014e A:{ExcHandler: FileNotFoundException (r0_5 'e' java.io.FileNotFoundException), PHI: r2 r3 r4 r5 , Splitter:B:3:0x0010} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:36:0x00c7, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:37:0x00c8, code skipped:
            r13 = r0;
     */
    /* JADX WARNING: Missing block: B:39:?, code skipped:
            android.util.Log.w(TAG, r0.toString());
     */
    /* JADX WARNING: Missing block: B:50:0x00ee, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:51:0x00ef, code skipped:
            r13 = r0;
     */
    /* JADX WARNING: Missing block: B:53:?, code skipped:
            android.util.Log.w(TAG, r0.toString());
     */
    /* JADX WARNING: Missing block: B:81:0x014e, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:83:?, code skipped:
            android.util.Log.w(TAG, r0.toString());
     */
    /* JADX WARNING: Missing block: B:84:0x0158, code skipped:
            if (r3 != null) goto L_0x015a;
     */
    /* JADX WARNING: Missing block: B:86:?, code skipped:
            r3.close();
            r3 = null;
     */
    /* JADX WARNING: Missing block: B:87:0x015f, code skipped:
            if (r4 != null) goto L_0x0161;
     */
    /* JADX WARNING: Missing block: B:88:0x0161, code skipped:
            r4.close();
     */
    /* JADX WARNING: Missing block: B:89:0x0165, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:91:?, code skipped:
            android.util.Log.w(TAG, r0.toString());
     */
    /* JADX WARNING: Missing block: B:92:0x016f, code skipped:
            if (r3 != null) goto L_0x0171;
     */
    /* JADX WARNING: Missing block: B:94:?, code skipped:
            r3.close();
            r3 = null;
     */
    /* JADX WARNING: Missing block: B:97:0x0179, code skipped:
            if (r4 != null) goto L_0x017b;
     */
    /* JADX WARNING: Missing block: B:98:0x017b, code skipped:
            r4.close();
     */
    private void loadNetworkFeatureFile(boolean r19, java.lang.String r20) {
        /*
        r18 = this;
        r1 = r18;
        r2 = 0;
        r3 = 0;
        r4 = 0;
        r5 = -1;
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r0 = 0;
        r9 = r0;
        if (r19 == 0) goto L_0x0010;
    L_0x000d:
        r10 = r20;
        goto L_0x0012;
    L_0x0010:
        r10 = "/system/csc";
    L_0x0012:
        r9 = r10;
        r10 = new java.io.File;	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r11 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r11.<init>();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r11.append(r9);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r12 = "/cscfeature_network.xml";
        r11.append(r12);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r11 = r11.toString();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r10.<init>(r11);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r11 = r10.exists();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        if (r11 == 0) goto L_0x0115;
    L_0x002f:
        r11 = r10.length();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r13 = 0;
        r11 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1));
        if (r11 > 0) goto L_0x003b;
    L_0x0039:
        goto L_0x0115;
    L_0x003b:
        r11 = org.xmlpull.v1.XmlPullParserFactory.newInstance();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r12 = 1;
        r11.setNamespaceAware(r12);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r13 = r11.newPullParser();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r2 = r13;
        r13 = new java.io.FileInputStream;	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r13.<init>(r10);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r3 = r13;
        r13 = r1.isXmlEncoded(r10);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        if (r13 == 0) goto L_0x0073;
    L_0x0054:
        r13 = r3.available();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r14 = new byte[r13];	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r3.read(r14);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r3.close();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r15 = r1.decode(r14);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r16 = r15;
        r12 = new java.io.ByteArrayInputStream;	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r0 = r16;
        r12.<init>(r0);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r4 = r12;
        r12 = 0;
        r2.setInput(r4, r12);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        goto L_0x0077;
    L_0x0073:
        r0 = 0;
        r2.setInput(r3, r0);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
    L_0x0077:
        r0 = r2.getEventType();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r5 = r0;
    L_0x007c:
        r12 = 1;
        if (r5 == r12) goto L_0x00fa;
    L_0x007f:
        r0 = 2;
        if (r5 != r0) goto L_0x0096;
    L_0x0082:
        r0 = r2.getName();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r6 = r0;
        r0 = r2.getAttributeCount();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        if (r0 <= 0) goto L_0x0093;
    L_0x008d:
        r0 = 0;
        r0 = r2.getAttributeValue(r0);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        goto L_0x0094;
    L_0x0093:
        r0 = 0;
    L_0x0094:
        r8 = r0;
        goto L_0x00e8;
    L_0x0096:
        r0 = 4;
        if (r5 != r0) goto L_0x00e8;
    L_0x0099:
        r0 = r2.getText();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r7 = r0;
        if (r6 == 0) goto L_0x00e8;
    L_0x00a0:
        if (r7 == 0) goto L_0x00e8;
    L_0x00a2:
        if (r8 == 0) goto L_0x00b9;
    L_0x00a4:
        r0 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r0.<init>();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r0.append(r6);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r13 = ",";
        r0.append(r13);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r0.append(r8);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r0 = r0.toString();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r6 = r0;
    L_0x00b9:
        r0 = r1.mFeatureList;	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r0 = r0.containsKey(r6);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        if (r0 == 0) goto L_0x00d3;
    L_0x00c1:
        r0 = r2.next();	 Catch:{ IOException -> 0x00c7, XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e }
        r5 = r0;
        goto L_0x007c;
    L_0x00c7:
        r0 = move-exception;
        r13 = r0;
        r13 = "SemCscFeature";
        r14 = r0.toString();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        android.util.Log.w(r13, r14);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        goto L_0x007c;
    L_0x00d3:
        r0 = r7.trim();	 Catch:{ Exception -> 0x00de }
        r7 = r0;
        r0 = r1.mFeatureList;	 Catch:{ Exception -> 0x00de }
        r0.put(r6, r7);	 Catch:{ Exception -> 0x00de }
        goto L_0x00e8;
    L_0x00de:
        r0 = move-exception;
        r13 = "SemCscFeature";
        r14 = r0.toString();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        android.util.Log.w(r13, r14);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
    L_0x00e8:
        r0 = r2.next();	 Catch:{ IOException -> 0x00ee, XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e }
        r5 = r0;
    L_0x00ed:
        goto L_0x007c;
    L_0x00ee:
        r0 = move-exception;
        r13 = r0;
        r13 = "SemCscFeature";
        r14 = r0.toString();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        android.util.Log.w(r13, r14);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        goto L_0x00ed;
        r3.close();	 Catch:{ IOException -> 0x0100 }
        r3 = 0;
        goto L_0x0102;
    L_0x0100:
        r0 = move-exception;
        goto L_0x0109;
    L_0x0102:
        if (r4 == 0) goto L_0x018c;
    L_0x0104:
        r4.close();	 Catch:{ IOException -> 0x0100 }
        goto L_0x017e;
        r10 = "SemCscFeature";
        r12 = r0.toString();
        android.util.Log.w(r10, r12);
        goto L_0x018b;
    L_0x0115:
        if (r3 == 0) goto L_0x011e;
    L_0x0117:
        r3.close();	 Catch:{ IOException -> 0x011c }
        r3 = 0;
        goto L_0x011e;
    L_0x011c:
        r0 = move-exception;
        goto L_0x0125;
    L_0x011e:
        if (r4 == 0) goto L_0x0130;
    L_0x0120:
        r4.close();	 Catch:{ IOException -> 0x011c }
        r4 = 0;
        goto L_0x0130;
        r11 = "SemCscFeature";
        r12 = r0.toString();
        android.util.Log.w(r11, r12);
        goto L_0x0131;
    L_0x0131:
        return;
    L_0x0132:
        r0 = move-exception;
        r10 = r5;
        r5 = r2;
        r2 = r0;
        goto L_0x018e;
    L_0x0137:
        r0 = move-exception;
        r10 = "SemCscFeature";
        r11 = r0.toString();	 Catch:{ all -> 0x0132 }
        android.util.Log.w(r10, r11);	 Catch:{ all -> 0x0132 }
        if (r3 == 0) goto L_0x0148;
    L_0x0143:
        r3.close();	 Catch:{ IOException -> 0x0177 }
        r0 = 0;
        r3 = r0;
    L_0x0148:
        if (r4 == 0) goto L_0x018c;
    L_0x014a:
        r4.close();	 Catch:{ IOException -> 0x0177 }
        goto L_0x017e;
    L_0x014e:
        r0 = move-exception;
        r10 = "SemCscFeature";
        r11 = r0.toString();	 Catch:{ all -> 0x0132 }
        android.util.Log.w(r10, r11);	 Catch:{ all -> 0x0132 }
        if (r3 == 0) goto L_0x015f;
    L_0x015a:
        r3.close();	 Catch:{ IOException -> 0x0177 }
        r0 = 0;
        r3 = r0;
    L_0x015f:
        if (r4 == 0) goto L_0x018c;
    L_0x0161:
        r4.close();	 Catch:{ IOException -> 0x0177 }
        goto L_0x017e;
    L_0x0165:
        r0 = move-exception;
        r10 = "SemCscFeature";
        r11 = r0.toString();	 Catch:{ all -> 0x0132 }
        android.util.Log.w(r10, r11);	 Catch:{ all -> 0x0132 }
        if (r3 == 0) goto L_0x0179;
    L_0x0171:
        r3.close();	 Catch:{ IOException -> 0x0177 }
        r0 = 0;
        r3 = r0;
        goto L_0x0179;
    L_0x0177:
        r0 = move-exception;
        goto L_0x0181;
    L_0x0179:
        if (r4 == 0) goto L_0x018c;
    L_0x017b:
        r4.close();	 Catch:{ IOException -> 0x0177 }
    L_0x017e:
        r0 = 0;
        r4 = r0;
        goto L_0x018c;
        r10 = "SemCscFeature";
        r11 = r0.toString();
        android.util.Log.w(r10, r11);
    L_0x018b:
        goto L_0x018d;
    L_0x018d:
        return;
        if (r3 == 0) goto L_0x0198;
    L_0x0191:
        r3.close();	 Catch:{ IOException -> 0x0196 }
        r3 = 0;
        goto L_0x0198;
    L_0x0196:
        r0 = move-exception;
        goto L_0x019f;
    L_0x0198:
        if (r4 == 0) goto L_0x01aa;
    L_0x019a:
        r4.close();	 Catch:{ IOException -> 0x0196 }
        r4 = 0;
        goto L_0x01aa;
        r11 = r0.toString();
        r12 = "SemCscFeature";
        android.util.Log.w(r12, r11);
    L_0x01aa:
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.feature.SemCscFeature.loadNetworkFeatureFile(boolean, java.lang.String):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x00c6 A:{Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167, all -> 0x0161 }} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00a7 A:{Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167, all -> 0x0161 }} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00d2 A:{Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167, all -> 0x0161 }} */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0132 A:{Catch:{ IOException -> 0x012e }} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00a7 A:{Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167, all -> 0x0161 }} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00c6 A:{Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167, all -> 0x0161 }} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00d2 A:{Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167, all -> 0x0161 }} */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0132 A:{Catch:{ IOException -> 0x012e }} */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0195 A:{ExcHandler: XmlPullParserException (r0_3 'e' org.xmlpull.v1.XmlPullParserException), PHI: r2 r3 r4 r5 r9 , Splitter:B:1:0x000b} */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x017e A:{ExcHandler: FileNotFoundException (r0_5 'e' java.io.FileNotFoundException), PHI: r2 r3 r4 r5 r9 , Splitter:B:1:0x000b} */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0195 A:{ExcHandler: XmlPullParserException (r0_3 'e' org.xmlpull.v1.XmlPullParserException), PHI: r2 r3 r4 r5 r9 , Splitter:B:1:0x000b} */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x017e A:{ExcHandler: FileNotFoundException (r0_5 'e' java.io.FileNotFoundException), PHI: r2 r3 r4 r5 r9 , Splitter:B:1:0x000b} */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0195 A:{ExcHandler: XmlPullParserException (r0_3 'e' org.xmlpull.v1.XmlPullParserException), PHI: r2 r3 r4 r5 r9 , Splitter:B:1:0x000b} */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x017e A:{ExcHandler: FileNotFoundException (r0_5 'e' java.io.FileNotFoundException), PHI: r2 r3 r4 r5 r9 , Splitter:B:1:0x000b} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:42:0x00f5, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:43:0x00f6, code skipped:
            r13 = r0;
     */
    /* JADX WARNING: Missing block: B:45:?, code skipped:
            android.util.Log.w(TAG, r0.toString());
     */
    /* JADX WARNING: Missing block: B:77:0x0161, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:78:0x0162, code skipped:
            r10 = r9;
            r9 = r5;
            r5 = r2;
            r2 = r0;
     */
    /* JADX WARNING: Missing block: B:79:0x0167, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:81:?, code skipped:
            android.util.Log.w(TAG, r0.toString());
     */
    /* JADX WARNING: Missing block: B:82:0x0171, code skipped:
            if (r3 != null) goto L_0x0173;
     */
    /* JADX WARNING: Missing block: B:84:?, code skipped:
            r3.close();
            r3 = null;
     */
    /* JADX WARNING: Missing block: B:85:0x0178, code skipped:
            if (r4 != null) goto L_0x017a;
     */
    /* JADX WARNING: Missing block: B:86:0x017a, code skipped:
            r4.close();
     */
    /* JADX WARNING: Missing block: B:87:0x017e, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:89:?, code skipped:
            android.util.Log.w(TAG, r0.toString());
     */
    /* JADX WARNING: Missing block: B:90:0x0188, code skipped:
            if (r3 != null) goto L_0x018a;
     */
    /* JADX WARNING: Missing block: B:92:?, code skipped:
            r3.close();
            r3 = null;
     */
    /* JADX WARNING: Missing block: B:93:0x018f, code skipped:
            if (r4 != null) goto L_0x0191;
     */
    /* JADX WARNING: Missing block: B:94:0x0191, code skipped:
            r4.close();
     */
    /* JADX WARNING: Missing block: B:95:0x0195, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:97:?, code skipped:
            android.util.Log.w(TAG, r0.toString());
     */
    /* JADX WARNING: Missing block: B:98:0x019f, code skipped:
            if (r3 != null) goto L_0x01a1;
     */
    /* JADX WARNING: Missing block: B:100:?, code skipped:
            r3.close();
            r3 = null;
     */
    /* JADX WARNING: Missing block: B:101:0x01a7, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:103:0x01a9, code skipped:
            if (r4 != null) goto L_0x01ab;
     */
    /* JADX WARNING: Missing block: B:104:0x01ab, code skipped:
            r4.close();
     */
    /* JADX WARNING: Missing block: B:106:0x01b1, code skipped:
            android.util.Log.w(TAG, r0.toString());
     */
    /* JADX WARNING: Missing block: B:108:0x01bf, code skipped:
            if (r3 != null) goto L_0x01c1;
     */
    /* JADX WARNING: Missing block: B:110:?, code skipped:
            r3.close();
     */
    /* JADX WARNING: Missing block: B:111:0x01c6, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:113:0x01c8, code skipped:
            if (r4 != null) goto L_0x01ca;
     */
    /* JADX WARNING: Missing block: B:114:0x01ca, code skipped:
            r4.close();
     */
    /* JADX WARNING: Missing block: B:116:0x01cf, code skipped:
            android.util.Log.w(TAG, r0.toString());
     */
    private boolean loadFeatureFile2nd(boolean r19, java.lang.String r20) {
        /*
        r18 = this;
        r1 = r18;
        r2 = 0;
        r3 = 0;
        r4 = 0;
        r5 = -1;
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r0 = 0;
        r9 = r0;
        r0 = r1.mFeatureList_2;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r0.clear();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        if (r19 == 0) goto L_0x0015;
    L_0x0012:
        r0 = r20;
        goto L_0x0017;
    L_0x0015:
        r0 = "/system/csc";
    L_0x0017:
        r8 = r0;
        r0 = new java.io.File;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10.<init>();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10.append(r8);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r11 = "/cscfeature.xml";
        r10.append(r11);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10 = r10.toString();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r0.<init>(r10);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10 = r0.exists();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r11 = 0;
        if (r10 == 0) goto L_0x0042;
    L_0x0036:
        r13 = r0.length();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1));
        if (r10 > 0) goto L_0x003f;
    L_0x003e:
        goto L_0x0042;
    L_0x003f:
        r9 = 1;
    L_0x0040:
        r10 = r0;
        goto L_0x008d;
    L_0x0042:
        r10 = new java.io.File;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13.<init>();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13.append(r8);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r14 = "/feature.xml";
        r13.append(r14);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13 = r13.toString();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10.<init>(r13);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r0 = r10;
        r10 = r0.exists();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        if (r10 == 0) goto L_0x0067;
    L_0x005f:
        r13 = r0.length();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1));
        if (r10 > 0) goto L_0x0040;
    L_0x0067:
        r10 = new java.io.File;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13.<init>();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13.append(r8);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r14 = "/others.xml";
        r13.append(r14);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13 = r13.toString();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r10.<init>(r13);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r0 = r10.exists();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        if (r0 == 0) goto L_0x0143;
    L_0x0083:
        r13 = r10.length();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r0 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1));
        if (r0 > 0) goto L_0x008d;
    L_0x008b:
        goto L_0x0143;
    L_0x008d:
        r0 = org.xmlpull.v1.XmlPullParserFactory.newInstance();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r11 = r0;
        r12 = 1;
        r11.setNamespaceAware(r12);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r0 = r11.newPullParser();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r2 = r0;
        r0 = new java.io.FileInputStream;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r0.<init>(r10);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r3 = r0;
        r0 = r1.isXmlEncoded(r10);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        if (r0 == 0) goto L_0x00c6;
    L_0x00a7:
        r0 = r3.available();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r14 = new byte[r0];	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r3.read(r14);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r3.close();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r15 = r1.decode(r14);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r16 = r15;
        r12 = new java.io.ByteArrayInputStream;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r13 = r16;
        r12.<init>(r13);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r4 = r12;
        r12 = 0;
        r2.setInput(r4, r12);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        goto L_0x00ca;
    L_0x00c6:
        r0 = 0;
        r2.setInput(r3, r0);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
    L_0x00ca:
        r0 = r2.getEventType();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r5 = r0;
    L_0x00cf:
        r12 = 1;
        if (r5 == r12) goto L_0x0128;
    L_0x00d2:
        r0 = 2;
        if (r5 != r0) goto L_0x00db;
    L_0x00d5:
        r0 = r2.getName();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r6 = r0;
        goto L_0x0116;
    L_0x00db:
        r0 = 4;
        if (r5 != r0) goto L_0x0116;
    L_0x00de:
        r0 = r2.getText();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r7 = r0;
        if (r6 == 0) goto L_0x0116;
    L_0x00e5:
        if (r7 == 0) goto L_0x0116;
    L_0x00e7:
        r0 = r1.mFeatureList_2;	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        r0 = r0.containsKey(r6);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        if (r0 == 0) goto L_0x0101;
    L_0x00ef:
        r0 = r2.next();	 Catch:{ IOException -> 0x00f5, XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e }
        r5 = r0;
        goto L_0x00cf;
    L_0x00f5:
        r0 = move-exception;
        r13 = r0;
        r13 = "SemCscFeature";
        r14 = r0.toString();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        android.util.Log.w(r13, r14);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        goto L_0x00cf;
    L_0x0101:
        r0 = r7.trim();	 Catch:{ Exception -> 0x010c }
        r7 = r0;
        r0 = r1.mFeatureList_2;	 Catch:{ Exception -> 0x010c }
        r0.put(r6, r7);	 Catch:{ Exception -> 0x010c }
        goto L_0x0116;
    L_0x010c:
        r0 = move-exception;
        r13 = "SemCscFeature";
        r14 = r0.toString();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        android.util.Log.w(r13, r14);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
    L_0x0116:
        r0 = r2.next();	 Catch:{ IOException -> 0x011c, XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e }
        r5 = r0;
    L_0x011b:
        goto L_0x00cf;
    L_0x011c:
        r0 = move-exception;
        r13 = r0;
        r13 = "SemCscFeature";
        r14 = r0.toString();	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        android.util.Log.w(r13, r14);	 Catch:{ XmlPullParserException -> 0x0195, FileNotFoundException -> 0x017e, IOException -> 0x0167 }
        goto L_0x011b;
        r3.close();	 Catch:{ IOException -> 0x012e }
        r3 = 0;
        goto L_0x0130;
    L_0x012e:
        r0 = move-exception;
        goto L_0x0137;
    L_0x0130:
        if (r4 == 0) goto L_0x01bc;
    L_0x0132:
        r4.close();	 Catch:{ IOException -> 0x012e }
        goto L_0x01ae;
        r10 = "SemCscFeature";
        r12 = r0.toString();
        android.util.Log.w(r10, r12);
        goto L_0x01bb;
        if (r3 == 0) goto L_0x014d;
    L_0x0146:
        r3.close();	 Catch:{ IOException -> 0x014b }
        r3 = 0;
        goto L_0x014d;
    L_0x014b:
        r0 = move-exception;
        goto L_0x0154;
    L_0x014d:
        if (r4 == 0) goto L_0x015f;
    L_0x014f:
        r4.close();	 Catch:{ IOException -> 0x014b }
        r4 = 0;
        goto L_0x015f;
        r11 = "SemCscFeature";
        r12 = r0.toString();
        android.util.Log.w(r11, r12);
        goto L_0x0160;
    L_0x0160:
        return r9;
    L_0x0161:
        r0 = move-exception;
        r10 = r9;
        r9 = r5;
        r5 = r2;
        r2 = r0;
        goto L_0x01be;
    L_0x0167:
        r0 = move-exception;
        r10 = "SemCscFeature";
        r11 = r0.toString();	 Catch:{ all -> 0x0161 }
        android.util.Log.w(r10, r11);	 Catch:{ all -> 0x0161 }
        if (r3 == 0) goto L_0x0178;
    L_0x0173:
        r3.close();	 Catch:{ IOException -> 0x01a7 }
        r0 = 0;
        r3 = r0;
    L_0x0178:
        if (r4 == 0) goto L_0x01bc;
    L_0x017a:
        r4.close();	 Catch:{ IOException -> 0x01a7 }
        goto L_0x01ae;
    L_0x017e:
        r0 = move-exception;
        r10 = "SemCscFeature";
        r11 = r0.toString();	 Catch:{ all -> 0x0161 }
        android.util.Log.w(r10, r11);	 Catch:{ all -> 0x0161 }
        if (r3 == 0) goto L_0x018f;
    L_0x018a:
        r3.close();	 Catch:{ IOException -> 0x01a7 }
        r0 = 0;
        r3 = r0;
    L_0x018f:
        if (r4 == 0) goto L_0x01bc;
    L_0x0191:
        r4.close();	 Catch:{ IOException -> 0x01a7 }
        goto L_0x01ae;
    L_0x0195:
        r0 = move-exception;
        r10 = "SemCscFeature";
        r11 = r0.toString();	 Catch:{ all -> 0x0161 }
        android.util.Log.w(r10, r11);	 Catch:{ all -> 0x0161 }
        if (r3 == 0) goto L_0x01a9;
    L_0x01a1:
        r3.close();	 Catch:{ IOException -> 0x01a7 }
        r0 = 0;
        r3 = r0;
        goto L_0x01a9;
    L_0x01a7:
        r0 = move-exception;
        goto L_0x01b1;
    L_0x01a9:
        if (r4 == 0) goto L_0x01bc;
    L_0x01ab:
        r4.close();	 Catch:{ IOException -> 0x01a7 }
    L_0x01ae:
        r0 = 0;
        r4 = r0;
        goto L_0x01bc;
        r10 = "SemCscFeature";
        r11 = r0.toString();
        android.util.Log.w(r10, r11);
    L_0x01bb:
        goto L_0x01bd;
    L_0x01bd:
        return r9;
        if (r3 == 0) goto L_0x01c8;
    L_0x01c1:
        r3.close();	 Catch:{ IOException -> 0x01c6 }
        r3 = 0;
        goto L_0x01c8;
    L_0x01c6:
        r0 = move-exception;
        goto L_0x01cf;
    L_0x01c8:
        if (r4 == 0) goto L_0x01da;
    L_0x01ca:
        r4.close();	 Catch:{ IOException -> 0x01c6 }
        r4 = 0;
        goto L_0x01da;
        r11 = r0.toString();
        r12 = "SemCscFeature";
        android.util.Log.w(r12, r11);
    L_0x01da:
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.feature.SemCscFeature.loadFeatureFile2nd(boolean, java.lang.String):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:89:0x0165 A:{ExcHandler: XmlPullParserException (r0_3 'e' org.xmlpull.v1.XmlPullParserException), PHI: r2 r3 r4 r5 , Splitter:B:3:0x0010} */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x014e A:{ExcHandler: FileNotFoundException (r0_5 'e' java.io.FileNotFoundException), PHI: r2 r3 r4 r5 , Splitter:B:3:0x0010} */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x0165 A:{ExcHandler: XmlPullParserException (r0_3 'e' org.xmlpull.v1.XmlPullParserException), PHI: r2 r3 r4 r5 , Splitter:B:3:0x0010} */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x014e A:{ExcHandler: FileNotFoundException (r0_5 'e' java.io.FileNotFoundException), PHI: r2 r3 r4 r5 , Splitter:B:3:0x0010} */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x0165 A:{ExcHandler: XmlPullParserException (r0_3 'e' org.xmlpull.v1.XmlPullParserException), PHI: r2 r3 r4 r5 , Splitter:B:3:0x0010} */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x014e A:{ExcHandler: FileNotFoundException (r0_5 'e' java.io.FileNotFoundException), PHI: r2 r3 r4 r5 , Splitter:B:3:0x0010} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:36:0x00c7, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:37:0x00c8, code skipped:
            r13 = r0;
     */
    /* JADX WARNING: Missing block: B:39:?, code skipped:
            java.lang.System.out.println(r0.toString());
     */
    /* JADX WARNING: Missing block: B:50:0x00ee, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:51:0x00ef, code skipped:
            r13 = r0;
     */
    /* JADX WARNING: Missing block: B:53:?, code skipped:
            java.lang.System.out.println(r0.toString());
     */
    /* JADX WARNING: Missing block: B:81:0x014e, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:83:?, code skipped:
            java.lang.System.out.println(r0.toString());
     */
    /* JADX WARNING: Missing block: B:84:0x0158, code skipped:
            if (r3 != null) goto L_0x015a;
     */
    /* JADX WARNING: Missing block: B:86:?, code skipped:
            r3.close();
            r3 = null;
     */
    /* JADX WARNING: Missing block: B:87:0x015f, code skipped:
            if (r4 != null) goto L_0x0161;
     */
    /* JADX WARNING: Missing block: B:88:0x0161, code skipped:
            r4.close();
     */
    /* JADX WARNING: Missing block: B:89:0x0165, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:91:?, code skipped:
            java.lang.System.out.println(r0.toString());
     */
    /* JADX WARNING: Missing block: B:92:0x016f, code skipped:
            if (r3 != null) goto L_0x0171;
     */
    /* JADX WARNING: Missing block: B:94:?, code skipped:
            r3.close();
            r3 = null;
     */
    /* JADX WARNING: Missing block: B:97:0x0179, code skipped:
            if (r4 != null) goto L_0x017b;
     */
    /* JADX WARNING: Missing block: B:98:0x017b, code skipped:
            r4.close();
     */
    private void loadNetworkFeatureFile2nd(boolean r19, java.lang.String r20) {
        /*
        r18 = this;
        r1 = r18;
        r2 = 0;
        r3 = 0;
        r4 = 0;
        r5 = -1;
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r0 = 0;
        r9 = r0;
        if (r19 == 0) goto L_0x0010;
    L_0x000d:
        r10 = r20;
        goto L_0x0012;
    L_0x0010:
        r10 = "/system/csc";
    L_0x0012:
        r9 = r10;
        r10 = new java.io.File;	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r11 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r11.<init>();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r11.append(r9);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r12 = "/cscfeature_network.xml";
        r11.append(r12);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r11 = r11.toString();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r10.<init>(r11);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r11 = r10.exists();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        if (r11 == 0) goto L_0x0115;
    L_0x002f:
        r11 = r10.length();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r13 = 0;
        r11 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1));
        if (r11 > 0) goto L_0x003b;
    L_0x0039:
        goto L_0x0115;
    L_0x003b:
        r11 = org.xmlpull.v1.XmlPullParserFactory.newInstance();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r12 = 1;
        r11.setNamespaceAware(r12);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r13 = r11.newPullParser();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r2 = r13;
        r13 = new java.io.FileInputStream;	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r13.<init>(r10);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r3 = r13;
        r13 = r1.isXmlEncoded(r10);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        if (r13 == 0) goto L_0x0073;
    L_0x0054:
        r13 = r3.available();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r14 = new byte[r13];	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r3.read(r14);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r3.close();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r15 = r1.decode(r14);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r16 = r15;
        r12 = new java.io.ByteArrayInputStream;	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r0 = r16;
        r12.<init>(r0);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r4 = r12;
        r12 = 0;
        r2.setInput(r4, r12);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        goto L_0x0077;
    L_0x0073:
        r0 = 0;
        r2.setInput(r3, r0);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
    L_0x0077:
        r0 = r2.getEventType();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r5 = r0;
    L_0x007c:
        r12 = 1;
        if (r5 == r12) goto L_0x00fa;
    L_0x007f:
        r0 = 2;
        if (r5 != r0) goto L_0x0096;
    L_0x0082:
        r0 = r2.getName();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r6 = r0;
        r0 = r2.getAttributeCount();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        if (r0 <= 0) goto L_0x0093;
    L_0x008d:
        r0 = 0;
        r0 = r2.getAttributeValue(r0);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        goto L_0x0094;
    L_0x0093:
        r0 = 0;
    L_0x0094:
        r8 = r0;
        goto L_0x00e8;
    L_0x0096:
        r0 = 4;
        if (r5 != r0) goto L_0x00e8;
    L_0x0099:
        r0 = r2.getText();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r7 = r0;
        if (r6 == 0) goto L_0x00e8;
    L_0x00a0:
        if (r7 == 0) goto L_0x00e8;
    L_0x00a2:
        if (r8 == 0) goto L_0x00b9;
    L_0x00a4:
        r0 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r0.<init>();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r0.append(r6);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r13 = ",";
        r0.append(r13);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r0.append(r8);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r0 = r0.toString();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r6 = r0;
    L_0x00b9:
        r0 = r1.mFeatureList_2;	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r0 = r0.containsKey(r6);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        if (r0 == 0) goto L_0x00d3;
    L_0x00c1:
        r0 = r2.next();	 Catch:{ IOException -> 0x00c7, XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e }
        r5 = r0;
        goto L_0x007c;
    L_0x00c7:
        r0 = move-exception;
        r13 = r0;
        r13 = java.lang.System.out;	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r14 = r0.toString();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r13.println(r14);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        goto L_0x007c;
    L_0x00d3:
        r0 = r7.trim();	 Catch:{ Exception -> 0x00de }
        r7 = r0;
        r0 = r1.mFeatureList_2;	 Catch:{ Exception -> 0x00de }
        r0.put(r6, r7);	 Catch:{ Exception -> 0x00de }
        goto L_0x00e8;
    L_0x00de:
        r0 = move-exception;
        r13 = java.lang.System.out;	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r14 = r0.toString();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r13.println(r14);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
    L_0x00e8:
        r0 = r2.next();	 Catch:{ IOException -> 0x00ee, XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e }
        r5 = r0;
    L_0x00ed:
        goto L_0x007c;
    L_0x00ee:
        r0 = move-exception;
        r13 = r0;
        r13 = java.lang.System.out;	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r14 = r0.toString();	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        r13.println(r14);	 Catch:{ XmlPullParserException -> 0x0165, FileNotFoundException -> 0x014e, IOException -> 0x0137 }
        goto L_0x00ed;
        r3.close();	 Catch:{ IOException -> 0x0100 }
        r3 = 0;
        goto L_0x0102;
    L_0x0100:
        r0 = move-exception;
        goto L_0x0109;
    L_0x0102:
        if (r4 == 0) goto L_0x018c;
    L_0x0104:
        r4.close();	 Catch:{ IOException -> 0x0100 }
        goto L_0x017e;
        r10 = java.lang.System.out;
        r12 = r0.toString();
        r10.println(r12);
        goto L_0x018b;
    L_0x0115:
        if (r3 == 0) goto L_0x011e;
    L_0x0117:
        r3.close();	 Catch:{ IOException -> 0x011c }
        r3 = 0;
        goto L_0x011e;
    L_0x011c:
        r0 = move-exception;
        goto L_0x0125;
    L_0x011e:
        if (r4 == 0) goto L_0x0130;
    L_0x0120:
        r4.close();	 Catch:{ IOException -> 0x011c }
        r4 = 0;
        goto L_0x0130;
        r11 = java.lang.System.out;
        r12 = r0.toString();
        r11.println(r12);
        goto L_0x0131;
    L_0x0131:
        return;
    L_0x0132:
        r0 = move-exception;
        r10 = r5;
        r5 = r2;
        r2 = r0;
        goto L_0x018e;
    L_0x0137:
        r0 = move-exception;
        r10 = java.lang.System.out;	 Catch:{ all -> 0x0132 }
        r11 = r0.toString();	 Catch:{ all -> 0x0132 }
        r10.println(r11);	 Catch:{ all -> 0x0132 }
        if (r3 == 0) goto L_0x0148;
    L_0x0143:
        r3.close();	 Catch:{ IOException -> 0x0177 }
        r0 = 0;
        r3 = r0;
    L_0x0148:
        if (r4 == 0) goto L_0x018c;
    L_0x014a:
        r4.close();	 Catch:{ IOException -> 0x0177 }
        goto L_0x017e;
    L_0x014e:
        r0 = move-exception;
        r10 = java.lang.System.out;	 Catch:{ all -> 0x0132 }
        r11 = r0.toString();	 Catch:{ all -> 0x0132 }
        r10.println(r11);	 Catch:{ all -> 0x0132 }
        if (r3 == 0) goto L_0x015f;
    L_0x015a:
        r3.close();	 Catch:{ IOException -> 0x0177 }
        r0 = 0;
        r3 = r0;
    L_0x015f:
        if (r4 == 0) goto L_0x018c;
    L_0x0161:
        r4.close();	 Catch:{ IOException -> 0x0177 }
        goto L_0x017e;
    L_0x0165:
        r0 = move-exception;
        r10 = java.lang.System.out;	 Catch:{ all -> 0x0132 }
        r11 = r0.toString();	 Catch:{ all -> 0x0132 }
        r10.println(r11);	 Catch:{ all -> 0x0132 }
        if (r3 == 0) goto L_0x0179;
    L_0x0171:
        r3.close();	 Catch:{ IOException -> 0x0177 }
        r0 = 0;
        r3 = r0;
        goto L_0x0179;
    L_0x0177:
        r0 = move-exception;
        goto L_0x0181;
    L_0x0179:
        if (r4 == 0) goto L_0x018c;
    L_0x017b:
        r4.close();	 Catch:{ IOException -> 0x0177 }
    L_0x017e:
        r0 = 0;
        r4 = r0;
        goto L_0x018c;
        r10 = java.lang.System.out;
        r11 = r0.toString();
        r10.println(r11);
    L_0x018b:
        goto L_0x018d;
    L_0x018d:
        return;
        if (r3 == 0) goto L_0x0198;
    L_0x0191:
        r3.close();	 Catch:{ IOException -> 0x0196 }
        r3 = 0;
        goto L_0x0198;
    L_0x0196:
        r0 = move-exception;
        goto L_0x019f;
    L_0x0198:
        if (r4 == 0) goto L_0x01aa;
    L_0x019a:
        r4.close();	 Catch:{ IOException -> 0x0196 }
        r4 = 0;
        goto L_0x01aa;
        r11 = java.lang.System.out;
        r12 = r0.toString();
        r11.println(r12);
    L_0x01aa:
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.feature.SemCscFeature.loadNetworkFeatureFile2nd(boolean, java.lang.String):void");
    }
}
