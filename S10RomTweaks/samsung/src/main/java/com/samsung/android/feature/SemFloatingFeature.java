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

    public boolean getBoolean(String tag) {
        try {
            String value = (String) this.mFeatureList.get(tag);
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
            String value = (String) this.mFeatureList.get(tag);
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
            String value = (String) this.mFeatureList.get(tag);
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
            String value = (String) this.mFeatureList.get(tag);
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
            String value = (String) this.mFeatureList.get(tag);
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
            String value = (String) this.mFeatureList.get(tag);
            if (value != null) {
                return Integer.parseInt(value);
            }
            return defaultValue;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    private void loadFeatureFile() {
        InputStream fi = null;
        String TagName = null;
        String TagValue = null;
        try {
            this.mFeatureList.clear();
            File featureXmlFile = new File(FEATURE_XML);
            if (featureXmlFile.exists()) {
                if (featureXmlFile.length() > 0) {
                    XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
                    factory.setNamespaceAware(true);
                    XmlPullParser parser = factory.newPullParser();
                    fi = new FileInputStream(featureXmlFile);
                    parser.setInput(fi, null);
                    int eventType = parser.getEventType();
                    while (eventType != 1) {
                        if (eventType == 2) {
                            TagName = parser.getName();
                        } else if (eventType == 4) {
                            TagValue = parser.getText();
                            if (!(TagName == null || TagValue == null)) {
                                if (this.mFeatureList.containsKey(TagName)) {
                                    try {
                                        eventType = parser.next();
                                    } catch (IOException e) {
                                        Log.w(TAG, e.toString());
                                    }
                                } else {
                                    try {
                                        this.mFeatureList.put(TagName, TagValue.trim());
                                    } catch (Exception ex) {
                                        Log.w(TAG, ex.toString());
                                    }
                                }
                            }
                        }
                        try {
                            eventType = parser.next();
                        } catch (IOException e2) {
                            Log.w(TAG, e2.toString());
                        }
                    }
                    try {
                        fi.close();
                    } catch (IOException e22) {
                        Log.w(TAG, e22.toString());
                    }
                    try {
                        fi.close();
                    } catch (IOException e222) {
                        Log.w(TAG, e222.toString());
                    }
                    return;
                }
            }
            if (fi != null) {
                try {
                    fi.close();
                } catch (IOException e2222) {
                    Log.w(TAG, e2222.toString());
                }
            }
        } catch (XmlPullParserException e3) {
            Log.w(TAG, e3.toString());
            if (fi != null) {

            }
        } catch (FileNotFoundException e4) {
            Log.w(TAG, e4.toString());
            if (fi != null) {
                try {
                    fi.close();
                } catch (IOException e22222) {
                    Log.w(TAG, e22222.toString());
                }
            }
        } catch (Throwable th) {
            if (fi != null) {
                try {
                    fi.close();
                } catch (IOException e5) {
                    Log.w(TAG, e5.toString());
                }
            }
        }
    }
}
