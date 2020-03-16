package com.samsung.android.feature;

import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Hashtable;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class SemFloatingFeature implements IFloatingFeature {
    private static final String FEATURE_XML = "/system/etc/floating_feature.xml";
    private static final String TAG = "SemFloatingFeature";
    private static SemFloatingFeature sInstance = null;
    private Hashtable<String, String> mFeatureList = new Hashtable();

    private SemFloatingFeature() {
        try {
            loadFeatureFile();
        } catch (Exception e) {
            Log.w(TAG, e.toString());
        }
    }

    public static SemFloatingFeature getInstance() {
        if (sInstance == null) {
            sInstance = new SemFloatingFeature();
        }
        return sInstance;
    }

    private void loadFeatureFile() {
        XmlPullParserException e;
        FileNotFoundException e2;
        Throwable th;
        InputStream inputStream = null;
        Object obj = null;
        try {
            this.mFeatureList.clear();
            File file = new File(FEATURE_XML);
            if (file.exists() && file.length() > 0) {
                XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
                newInstance.setNamespaceAware(true);
                XmlPullParser newPullParser = newInstance.newPullParser();
                InputStream fileInputStream = new FileInputStream(file);
                try {
                    newPullParser.setInput(fileInputStream, null);
                    int eventType = newPullParser.getEventType();
                    while (eventType != 1) {
                        if (eventType == 2) {
                            obj = newPullParser.getName();
                        } else if (eventType == 4) {
                            String text = newPullParser.getText();
                            if (!(obj == null || text == null)) {
                                if (this.mFeatureList.containsKey(obj)) {
                                    try {
                                        eventType = newPullParser.next();
                                    } catch (IOException e3) {
                                        Log.w(TAG, e3.toString());
                                    }
                                } else {
                                    try {
                                        this.mFeatureList.put(String.valueOf(obj), text.trim());
                                    } catch (Exception e4) {
                                        Log.w(TAG, e4.toString());
                                    }
                                }
                            }
                        }
                        try {
                            eventType = newPullParser.next();
                        } catch (IOException e32) {
                            Log.w(TAG, e32.toString());
                        }
                    }
                    try {
                        fileInputStream.close();
                    } catch (IOException e322) {
                        Log.w(TAG, e322.toString());
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e3222) {
                            Log.w(TAG, e3222.toString());
                        }
                    }
                    inputStream = fileInputStream;
                } catch (XmlPullParserException e5) {
                    e = e5;
                    inputStream = fileInputStream;
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = fileInputStream;
                }
            }
        } catch (XmlPullParserException e7) {
            e = e7;
            try {
                Log.w(TAG, e.toString());
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e32222) {
                        Log.w(TAG, e32222.toString());
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e322222) {
                        Log.w(TAG, e322222.toString());
                    }
                }
                try {
                    throw th;
                } catch (Throwable throwable) {
                    throwable.printStackTrace();
                }
            }
        } catch (FileNotFoundException e8) {
            e2 = e8;
            Log.w(TAG, e2.toString());
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e3222222) {
                    Log.w(TAG, e3222222.toString());
                }
            }
        }
    }

    public boolean getBoolean(String str) {
        try {
            String str2 = (String) this.mFeatureList.get(str);
            return str2 != null ? Boolean.parseBoolean(str2) : false;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean getBoolean(String str, boolean z) {
        try {
            String str2 = (String) this.mFeatureList.get(str);
            return str2 != null ? Boolean.parseBoolean(str2) : z;
        } catch (Exception e) {
            return z;
        }
    }

    public int getInt(String str) {
        try {
            String str2 = (String) this.mFeatureList.get(str);
            return str2 != null ? Integer.parseInt(str2) : -1;
        } catch (Exception e) {
            return -1;
        }
    }

    public int getInt(String str, int i) {
        try {
            String str2 = (String) this.mFeatureList.get(str);
            return str2 != null ? Integer.parseInt(str2) : i;
        } catch (Exception e) {
            return i;
        }
    }

    public int getInteger(String str) {
        return getInt(str);
    }

    public int getInteger(String str, int i) {
        return getInt(str, i);
    }

    public String getString(String str) {
        try {
            String str2 = (String) this.mFeatureList.get(str);
            return str2 != null ? str2 : "";
        } catch (Exception e) {
            return "";
        }
    }

    public String getString(String str, String str2) {
        try {
            String str3 = (String) this.mFeatureList.get(str);
            return str3 != null ? str3 : str2;
        } catch (Exception e) {
            return str2;
        }
    }
}
