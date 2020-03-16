package com.android.systemui.util;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Debug;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings.Global;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import com.android.systemui.Dependency;

import com.android.systemui.Rune;
import com.google.android.collect.Lists;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class SettingsHelper {
    private ArrayMap<Uri, ArrayList<WeakReference<OnChangedCallback>>> mCallbacks = new ArrayMap();
    private Context mContext;
    private ArrayList<Item> mItemLists = Lists.newArrayList();
    private ContentResolver mResolver;
    private ContentObserver mSettingsObserver = new ContentObserver((Handler) Dependency.get(Dependency.MAIN_HANDLER)) {
        public void onChange(boolean selfChange, Uri uri) {
            super.onChange(selfChange);
            if (uri != null) {
                long sTime = SystemClock.uptimeMillis();
                Log.d("SettingsHelper", "onChange()");
                int size = SettingsHelper.this.mItemLists.size();
                for (int i = 0; i < size; i++) {
                    if (((Item) SettingsHelper.this.mItemLists.get(i)).equals(uri)) {
                        ((Item) SettingsHelper.this.mItemLists.get(i)).read(SettingsHelper.this.mResolver);
                    }
                }
                Log.d("SettingsHelper", "onChange() elapsed= " + (SystemClock.uptimeMillis() - sTime));
                SettingsHelper.this.broadcastChange(uri);
            }
        }
    };

    public interface OnChangedCallback {
        void onChanged(Uri uri);
    }

    class Item {
        String mDataType;
        Integer mDef;
        String mForUser;
        int mIntValue;
        String mKey;
        String mSettingType;
        String mStringValue;
        Uri mUri;

        public Item(String settingType, String key, String dataType, Integer def, boolean forUser) {
            boolean z;
            this.mSettingType = settingType;
            this.mKey = key;
            this.mDataType = dataType;
            this.mDef = def;
            this.mForUser = forUser ? "ForUser" : "";
            if ("Global".equals(this.mSettingType) || "Secure".equals(this.mSettingType)) {
                z = true;
            } else {
                z = "System".equals(this.mSettingType);
            }
            if (!z) {
                throw new IllegalArgumentException("Invalid setting type");
            } else if (this.mKey == null || this.mKey.isEmpty()) {
                throw new IllegalArgumentException("Invalid setting key");
            } else {
                if ("Int".equals(this.mDataType)) {
                    z = true;
                } else {
                    z = "String".equals(this.mDataType);
                }
                if (z) {
                    this.mUri = getUri(this.mKey);
                    return;
                }
                throw new IllegalArgumentException("Invalid data type");
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:3:0x0039 A:{Splitter: B:1:0x0001, ExcHandler: java.lang.ClassNotFoundException (r2_0 'e' java.lang.Exception)} */
        /* JADX WARNING: Removed duplicated region for block: B:3:0x0039 A:{Splitter: B:1:0x0001, ExcHandler: java.lang.ClassNotFoundException (r2_0 'e' java.lang.Exception)} */
        /* JADX WARNING: Removed duplicated region for block: B:3:0x0039 A:{Splitter: B:1:0x0001, ExcHandler: java.lang.ClassNotFoundException (r2_0 'e' java.lang.Exception)} */
        /* JADX WARNING: Removed duplicated region for block: B:3:0x0039 A:{Splitter: B:1:0x0001, ExcHandler: java.lang.ClassNotFoundException (r2_0 'e' java.lang.Exception)} */
        /* JADX WARNING: Missing block: B:3:0x0039, code:
            r2 = move-exception;
     */
        /* JADX WARNING: Missing block: B:4:0x003a, code:
            android.util.Log.e("SettingsHelper", "Exception occurred", r2);
     */
        /* JADX WARNING: Missing block: B:6:?, code:
            return r4;
     */
        private android.net.Uri getUri(java.lang.String r10) {
            /*
            r9 = this;
            r4 = 0;
            r5 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039 }
            r5.<init>();	 Catch:{ ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039 }
            r6 = "android.provider.Settings$";
            r5 = r5.append(r6);	 Catch:{ ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039 }
            r6 = r9.mSettingType;	 Catch:{ ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039 }
            r5 = r5.append(r6);	 Catch:{ ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039 }
            r5 = r5.toString();	 Catch:{ ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039 }
            r1 = java.lang.Class.forName(r5);	 Catch:{ ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039 }
            r5 = "getUriFor";
            r6 = 1;
            r6 = new java.lang.Class[r6];	 Catch:{ ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039 }
            r7 = java.lang.String.class;
            r8 = 0;
            r6[r8] = r7;	 Catch:{ ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039 }
            r3 = r1.getDeclaredMethod(r5, r6);	 Catch:{ ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039 }
            r5 = 1;
            r5 = new java.lang.Object[r5];	 Catch:{ ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039 }
            r6 = 0;
            r5[r6] = r10;	 Catch:{ ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039 }
            r5 = r3.invoke(r1, r5);	 Catch:{ ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039 }
            r0 = r5;
            r0 = (android.net.Uri) r0;	 Catch:{ ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039, ClassNotFoundException -> 0x0039 }
            r4 = r0;
        L_0x0038:
            return r4;
        L_0x0039:
            r2 = move-exception;
            r5 = "SettingsHelper";
            r6 = "Exception occurred";
            android.util.Log.e(r5, r6, r2);
            goto L_0x0038;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.util.SettingsHelper.Item.getUri(java.lang.String):android.net.Uri");
        }

        /* JADX WARNING: Removed duplicated region for block: B:13:0x00b9 A:{Splitter: B:0:0x0000, ExcHandler: java.lang.ClassNotFoundException (r1_0 'e' java.lang.Exception)} */
        /* JADX WARNING: Removed duplicated region for block: B:13:0x00b9 A:{Splitter: B:0:0x0000, ExcHandler: java.lang.ClassNotFoundException (r1_0 'e' java.lang.Exception)} */
        /* JADX WARNING: Removed duplicated region for block: B:13:0x00b9 A:{Splitter: B:0:0x0000, ExcHandler: java.lang.ClassNotFoundException (r1_0 'e' java.lang.Exception)} */
        /* JADX WARNING: Removed duplicated region for block: B:13:0x00b9 A:{Splitter: B:0:0x0000, ExcHandler: java.lang.ClassNotFoundException (r1_0 'e' java.lang.Exception)} */
        /* JADX WARNING: Missing block: B:13:0x00b9, code:
            r1 = move-exception;
     */
        /* JADX WARNING: Missing block: B:14:0x00ba, code:
            android.util.Log.e("SettingsHelper", "Exception occurred", r1);
     */
        /* JADX WARNING: Missing block: B:42:?, code:
            return;
     */
        public void read(android.content.ContentResolver r8) {
            /*
            r7 = this;
            r3 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3.<init>();	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = "android.provider.Settings$";
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r7.mSettingType;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.toString();	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r0 = java.lang.Class.forName(r3);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r2 = 0;
            r3 = r7.mForUser;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = "ForUser";
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            if (r3 == 0) goto L_0x013a;
        L_0x0026:
            r3 = r7.mDef;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            if (r3 == 0) goto L_0x0035;
        L_0x002a:
            r3 = "String";
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            if (r3 == 0) goto L_0x00c4;
        L_0x0035:
            r3 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3.<init>();	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = "get";
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r7.mForUser;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.toString();	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = 3;
            r4 = new java.lang.Class[r4];	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r5 = android.content.ContentResolver.class;
            r6 = 0;
            r4[r6] = r5;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r5 = java.lang.String.class;
            r6 = 1;
            r4[r6] = r5;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r5 = java.lang.Integer.TYPE;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r6 = 2;
            r4[r6] = r5;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r2 = r0.getDeclaredMethod(r3, r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = "Int";
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            if (r3 == 0) goto L_0x0092;
        L_0x0072:
            r3 = 3;
            r3 = new java.lang.Object[r3];	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = 0;
            r3[r4] = r8;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r7.mKey;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r5 = 1;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = -2;
            r4 = java.lang.Integer.valueOf(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r5 = 2;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r2.invoke(r0, r3);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = (java.lang.Integer) r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.intValue();	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r7.mIntValue = r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
        L_0x0091:
            return;
        L_0x0092:
            r3 = "String";
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            if (r3 == 0) goto L_0x0091;
        L_0x009d:
            r3 = 3;
            r3 = new java.lang.Object[r3];	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = 0;
            r3[r4] = r8;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r7.mKey;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r5 = 1;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = -2;
            r4 = java.lang.Integer.valueOf(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r5 = 2;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r2.invoke(r0, r3);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = (java.lang.String) r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r7.mStringValue = r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            goto L_0x0091;
        L_0x00b9:
            r1 = move-exception;
            r3 = "SettingsHelper";
            r4 = "Exception occurred";
            android.util.Log.e(r3, r4, r1);
            goto L_0x0091;
        L_0x00c4:
            r3 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3.<init>();	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = "get";
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r7.mForUser;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r3.toString();	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = 4;
            r5 = new java.lang.Class[r3];	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = android.content.ContentResolver.class;
            r6 = 0;
            r5[r6] = r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = java.lang.String.class;
            r6 = 1;
            r5[r6] = r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r6 = "Int";
            r3 = r3.equals(r6);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            if (r3 == 0) goto L_0x0137;
        L_0x00f8:
            r3 = java.lang.Integer.TYPE;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
        L_0x00fa:
            r6 = 2;
            r5[r6] = r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = java.lang.Integer.TYPE;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r6 = 3;
            r5[r6] = r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r2 = r0.getDeclaredMethod(r4, r5);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = "Int";
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            if (r3 == 0) goto L_0x0091;
        L_0x0111:
            r3 = 4;
            r3 = new java.lang.Object[r3];	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = 0;
            r3[r4] = r8;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r7.mKey;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r5 = 1;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r7.mDef;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r5 = 2;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = -2;
            r4 = java.lang.Integer.valueOf(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r5 = 3;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r2.invoke(r0, r3);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = (java.lang.Integer) r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.intValue();	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r7.mIntValue = r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            goto L_0x0091;
        L_0x0137:
            r3 = java.lang.String.class;
            goto L_0x00fa;
        L_0x013a:
            r3 = r7.mDef;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            if (r3 == 0) goto L_0x0149;
        L_0x013e:
            r3 = "String";
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            if (r3 == 0) goto L_0x01b4;
        L_0x0149:
            r3 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3.<init>();	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = "get";
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.toString();	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = 2;
            r4 = new java.lang.Class[r4];	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r5 = android.content.ContentResolver.class;
            r6 = 0;
            r4[r6] = r5;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r5 = java.lang.String.class;
            r6 = 1;
            r4[r6] = r5;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r2 = r0.getDeclaredMethod(r3, r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = "Int";
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            if (r3 == 0) goto L_0x0194;
        L_0x017b:
            r3 = 2;
            r3 = new java.lang.Object[r3];	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = 0;
            r3[r4] = r8;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r7.mKey;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r5 = 1;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r2.invoke(r0, r3);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = (java.lang.Integer) r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.intValue();	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r7.mIntValue = r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            goto L_0x0091;
        L_0x0194:
            r3 = "String";
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            if (r3 == 0) goto L_0x0091;
        L_0x019f:
            r3 = 2;
            r3 = new java.lang.Object[r3];	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = 0;
            r3[r4] = r8;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r7.mKey;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r5 = 1;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r2.invoke(r0, r3);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = (java.lang.String) r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r7.mStringValue = r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            goto L_0x0091;
        L_0x01b4:
            r3 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3.<init>();	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = "get";
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r3.toString();	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = 3;
            r5 = new java.lang.Class[r3];	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = android.content.ContentResolver.class;
            r6 = 0;
            r5[r6] = r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = java.lang.String.class;
            r6 = 1;
            r5[r6] = r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r6 = "Int";
            r3 = r3.equals(r6);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            if (r3 == 0) goto L_0x0214;
        L_0x01e2:
            r3 = java.lang.Integer.TYPE;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
        L_0x01e4:
            r6 = 2;
            r5[r6] = r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r2 = r0.getDeclaredMethod(r4, r5);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = "Int";
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            if (r3 == 0) goto L_0x0091;
        L_0x01f6:
            r3 = 3;
            r3 = new java.lang.Object[r3];	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = 0;
            r3[r4] = r8;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r7.mKey;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r5 = 1;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r4 = r7.mDef;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r5 = 2;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r2.invoke(r0, r3);	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = (java.lang.Integer) r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r3 = r3.intValue();	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            r7.mIntValue = r3;	 Catch:{ ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9, ClassNotFoundException -> 0x00b9 }
            goto L_0x0091;
        L_0x0214:
            r3 = java.lang.String.class;
            goto L_0x01e4;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.util.SettingsHelper.Item.read(android.content.ContentResolver):void");
        }

        public void registerObserver() {
         //   SettingsHelper.this.mResolver.registerContentObserver(getUri(this.mKey), false, SettingsHelper.this.mSettingsObserver, -2);
        }

        public boolean equals(Uri uri) {
            if (uri == null) {
                return false;
            }
            return uri.equals(this.mUri);
        }

        public int getIntValue() {
            return this.mIntValue;
        }

        public String getStringValue() {
            return this.mStringValue;
        }

        public void setIntValue(int i) {
            this.mIntValue = i;
        }

        public void setStringValue(String str) {
            this.mStringValue = str;
        }

        public String dump() {
            StringBuilder builder = new StringBuilder();
            builder.append(this.mKey);
            builder.append(" = ");
            if ("Int".equals(this.mDataType)) {
                builder.append(Integer.toString(getIntValue()));
            } else if ("String".equals(this.mDataType)) {
                builder.append(getStringValue());
            }
            return builder.toString();
        }
    }

    public SettingsHelper(Context context) {
        this.mContext = context;
        this.mResolver = context.getContentResolver();
        setUpSettingsItem();
      //  Thread loader = new Thread(new -$Lambda$WNH8Guwqv9oRmqcMF6a9FJDKfEo(this));
        //loader.setPriority(10);
       // loader.start();
    }



    private void setUpSettingsItem() {
        int i;
        this.mItemLists.add(new Item("System", "white_lockscreen_statusbar", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "white_lockscreen_wallpaper", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "lockscreen_wallpaper", "Int", Integer.valueOf(1), true));
        this.mItemLists.add(new Item("System", "lockscreen_wallpaper_transparent", "Int", Integer.valueOf(1), true));
        this.mItemLists.add(new Item("System", "opne_theme_effect_lockscreen_wallpaper", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "dualclock_menu_settings", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "emergency_mode", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "easy_mode_switch", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "kids_home_mode", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "ultra_powersaving_mode", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "access_control_enabled", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "sidesync_source_connect", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "intelligent_sleep_mode", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "powersaving_switch", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "psm_switch", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "automatic_unlock", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "any_screen_running", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "set_shortcuts_mode", "Int", Integer.valueOf(1), false));
        this.mItemLists.add(new Item("System", "lockscreen_wallpaper_path", "String", null, true));
        this.mItemLists.add(new Item("System", "theme_font_clock", "String", null, true));
        this.mItemLists.add(new Item("System", "theme_font_numeric", "String", null, true));
        this.mItemLists.add(new Item("System", "theme_font_system", "String", null, true));
        this.mItemLists.add(new Item("System", "time_12_24", "String", null, true));
        this.mItemLists.add(new Item("System", "homecity_timezone", "String", null, true));
        this.mItemLists.add(new Item("System", "current_sec_theme_package_open_theme", "String", null, false));
        this.mItemLists.add(new Item("System", "current_sec_appicon_theme_package", "String", null, false));
        this.mItemLists.add(new Item("System", "current_sec_active_themepackage", "String", null, false));
        this.mItemLists.add(new Item("Global", "airplane_mode_on", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("Global", "white_cover_wallpaper", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("Global", "low_power", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("Secure", "lock_screen_show_notifications", "Int", null, true));
        this.mItemLists.add(new Item("Secure", "speak_password", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("Secure", "high_text_contrast_enabled", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("Secure", "auto_swipe_main_user", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("Secure", "shared_device_status", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("System", "phone1_on", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("System", "phone2_on", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("System", "lock_application_shortcut", "String", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("Global", "tap_to_icon", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("System", "lock_fmm_Message", "String", null, false));
        this.mItemLists.add(new Item("System", "lock_fmm_phone", "String", null, false));
        this.mItemLists.add(new Item("System", "show_button_background", "Int", Integer.valueOf(0), true));
        ArrayList arrayList = this.mItemLists;
        String str = "System";
        String str2 = "simple_status_bar";
        String str3 = "Int";

        arrayList.add(new Item(str, str2, str3, Integer.valueOf(0), true));
        this.mItemLists.add(new Item("Secure", "sem_perfomance_mode", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "use_iris_firstlock", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "additional_information_val", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "add_info_music_control", "Int", Integer.valueOf(1), true));
        this.mItemLists.add(new Item("System", "add_info_today_schedule", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "add_info_alarm", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("Global", "lockscreen_aod_servicebox_page", "String", null, false));
        this.mItemLists.add(new Item("System", "data_usage_reminder", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "action_memo_on_off_screen", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "screen_off_memo", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("Secure", "lock_function_val", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "aod_mode", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "rapid_key_input", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "white_lockscreen_navigationbar", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "face_widget_order", "String", null, true));
        this.mItemLists.add(new Item("Global", "lockscreen_aod_staying_music_page", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("Secure", "face_without_swipe_to_unlock", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "reserve_battery_on", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "enable_reserve_max_mode", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "aod_lock_music_facewidget_blacklist", "String", null, true));
        this.mItemLists.add(new Item("System", "aod_lock_music_media_key_code", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "aod_lock_share_current_music_pkg", "String", null, true));
        this.mItemLists.add(new Item("Secure", "n_digits_pin_enabled", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("Global", "navigationbar_hide_bar_enabled", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("System", "system_locales", "String", null, true));
        this.mItemLists.add(new Item("System", "display_battery_percentage", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "voicecall_type", "Int", Integer.valueOf(1), true));
        this.mItemLists.add(new Item("Secure", "show_keyboard_button", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "lock_noticard_opacity", "Int", Integer.valueOf(45), true));
        this.mItemLists.add(new Item("System", "voicecall_type2", "Int", Integer.valueOf(1), true));
        this.mItemLists.add(new Item("System", "lock_adaptive_color", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "lock_clock_adaptive_colors", "String", null, true));
        this.mItemLists.add(new Item("System", "roaming_clock_option", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("System", "face_widgets_option", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("System", "contact_info_option", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("System", "lockscreen_notifications_option", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("System", "lockscreen_minimizing_notification", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "lockstar_enabled", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("System", "notification_text_color_inversion", "Int", Integer.valueOf(1), true));
        this.mItemLists.add(new Item("System", "knox_finger_print_plus", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("Global", "mobile_data_question", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("Secure", "intelligentscan_without_swipe_to_unlock", "Int", Integer.valueOf(0), true));
        this.mItemLists.add(new Item("Global", "notification_freeform_menuitem", "Int", Integer.valueOf(0), false));
    }

    private void readSettingsDB() {
        long sTime = SystemClock.uptimeMillis();
        Log.d("SettingsHelper", "readSettingsDB()");
        int size = this.mItemLists.size();
        for (int i = 0; i < size; i++) {
            ((Item) this.mItemLists.get(i)).read(this.mResolver);
        }
        Log.d("SettingsHelper", "readSettingsDB() elapsed= " + (SystemClock.uptimeMillis() - sTime));
    }

    private void registerSettingsObserver() {
        long sTime = SystemClock.uptimeMillis();
        Log.d("SettingsHelper", "registerSettingsObserver()");
        int size = this.mItemLists.size();
        for (int i = 0; i < size; i++) {
            ((Item) this.mItemLists.get(i)).registerObserver();
        }
        Log.d("SettingsHelper", "registerSettingsObserver() elapsed= " + (SystemClock.uptimeMillis() - sTime));
    }

    public void onUserSwitched() {
        this.mResolver.unregisterContentObserver(this.mSettingsObserver);
        readSettingsDB();
        registerSettingsObserver();
    }

    public static SettingsHelper getInstance() {
        return (SettingsHelper) Dependency.get(SettingsHelper.class);
    }

    public void registerCallback(OnChangedCallback listener, Uri... uri) {
        synchronized (this) {
            Log.v("SettingsHelper", "*** register listener for " + listener);
            int sizeOfUris = uri.length;
            WeakReference<OnChangedCallback> weakReference = new WeakReference(listener);
            for (int i = 0; i < sizeOfUris; i++) {
                ArrayList<WeakReference<OnChangedCallback>> arrayList = (ArrayList) this.mCallbacks.get(uri[i]);
                if (arrayList == null || !arrayList.contains(weakReference)) {
                    if (arrayList == null) {
                        this.mCallbacks.put(uri[i], new ArrayList());
                    }
                    ((ArrayList) this.mCallbacks.get(uri[i])).add(weakReference);
                } else {
                  //  Log.e("SettingsHelper", "Object tried to add another listener : " + Debug.getCallers(5));
                }
            }
        }
    }

    public void unregisterCallback(OnChangedCallback listener) {
        synchronized (this) {
            Log.v("SettingsHelper", "*** unregister listener for " + listener);
            for (int i = this.mCallbacks.size() - 1; i >= 0; i--) {
                ArrayList<WeakReference<OnChangedCallback>> tempList = (ArrayList) this.mCallbacks.get(this.mCallbacks.keyAt(i));
                if (tempList != null) {
                    for (int jIdx = tempList.size() - 1; jIdx >= 0; jIdx--) {
                        if (((WeakReference) tempList.get(jIdx)).get() == listener) {
                            tempList.remove(jIdx);
                        }
                    }
                    if (tempList.isEmpty()) {
                        this.mCallbacks.remove(this.mCallbacks.keyAt(i));
                    }
                }
            }
        }
    }

    private void broadcastChange(Uri uri) {
        ArrayList<WeakReference<OnChangedCallback>> tempList;
        Log.v("SettingsHelper", "*** broadcastChange for " + uri);
        synchronized (this) {
            tempList = (ArrayList) this.mCallbacks.get(uri);
        }
        if (tempList != null) {
            for (int i = 0; i < tempList.size(); i++) {
                OnChangedCallback listener = (OnChangedCallback) ((WeakReference) tempList.get(i)).get();
                if (listener != null) {
                    listener.onChanged(uri);
                }
            }
        }
    }

    public boolean isShowButtonBackground() {
        return ((Item) this.mItemLists.get(41)).getIntValue() == 1;
    }

    public boolean isWhiteKeyguardStatusBar() {
        return ((Item) this.mItemLists.get(0)).getIntValue() == 1;
    }

    public boolean isWhiteKeyguardWallpaper() {
        return ((Item) this.mItemLists.get(1)).getIntValue() == 1;
    }

    public boolean isWhiteKeyguardNavigationBar() {
        return ((Item) this.mItemLists.get(56)).getIntValue() == 1;
    }

    public boolean isWhiteCoverWallpaper() {
        return ((Item) this.mItemLists.get(28)).getIntValue() == 1;
    }

    public boolean isAirplaneModeOn() {
        return ((Item) this.mItemLists.get(27)).getIntValue() != 0;
    }

    public int getMultiSIMDeviceSIM1On() {
        return ((Item) this.mItemLists.get(35)).getIntValue();
    }

    public int getMultiSIMDeviceSIM2On() {
        return ((Item) this.mItemLists.get(36)).getIntValue();
    }

    public boolean isLiveWallpaperEnabled() {
        return ((Item) this.mItemLists.get(2)).getIntValue() == 0;
    }

    public int getLockscreenWallpaperTransparent() {
        return ((Item) this.mItemLists.get(3)).getIntValue();
    }

    public boolean isOpenThemeLook() {
        String themePkg = getActiveThemePackage();
        int wpTransType = getLockscreenWallpaperTransparent();
        if (TextUtils.isEmpty(themePkg) || wpTransType != 2) {
            return false;
        }
        return true;
    }

    public String getActiveThemePackage() {
        return ((Item) this.mItemLists.get(26)).getStringValue();
    }

    public String getOpenThemeClockFont() {
        return ((Item) this.mItemLists.get(19)).getStringValue();
    }

    public String getOpenThemeNumericFont() {
        return ((Item) this.mItemLists.get(20)).getStringValue();
    }

    public String getFMMMessage() {
        return ((Item) this.mItemLists.get(39)).getStringValue();
    }

    public String getFMMPhone() {
        return ((Item) this.mItemLists.get(40)).getStringValue();
    }

    public boolean is24HourModeEnabled() {
        String clockFormat = ((Item) this.mItemLists.get(22)).getStringValue();
        if (clockFormat == null || clockFormat.isEmpty()) {
            clockFormat = "12";
            DateFormat natural = DateFormat.getTimeInstance(1, this.mContext.getResources().getConfiguration().locale);
            if ((natural instanceof SimpleDateFormat) && ((SimpleDateFormat) natural).toPattern().indexOf(72) >= 0) {
                clockFormat = "24";
            }
        }
        return "24".equals(clockFormat);
    }

    public String getHomeTimeZone() {
        return ((Item) this.mItemLists.get(23)).getStringValue();
    }

    public void setHomeTimeZone(String homeTimeZone) {
    //    System.putStringForUser(this.mContext.getContentResolver(), "homecity_timezone", homeTimeZone, -2);
    }

    public boolean isDualClock() {
        return ((Item) this.mItemLists.get(5)).getIntValue() == 1;
    }

    public boolean isEmergencyMode() {
        return ((Item) this.mItemLists.get(6)).getIntValue() == 1;
    }

    public boolean isEasyModeOn() {
        return ((Item) this.mItemLists.get(7)).getIntValue() != 1;
    }

    public boolean isKidsHomeModeEnabled() {
        return ((Item) this.mItemLists.get(8)).getIntValue() == 1;
    }

    public boolean isUltraPowerSavingMode() {
        return ((Item) this.mItemLists.get(9)).getIntValue() == 1;
    }

    public boolean isShowNotificationOnKeyguard() {
        if (((Item) this.mItemLists.get(30)).getIntValue() != 1) {
            return false;
        }
        if (((Item) this.mItemLists.get(78)).getIntValue() <= 1) {
            return true;
        }
        return false;
    }

    public boolean isShowRoamingClockOnKeyguard() {
        return ((Item) this.mItemLists.get(75)).getIntValue() <= 1;
    }

    public boolean isShowFaceWidgetOnKeyguard() {
        return ((Item) this.mItemLists.get(76)).getIntValue() <= 1;
    }

    public boolean isShowOwnerInfoOnKeyguard() {
        return ((Item) this.mItemLists.get(77)).getIntValue() <= 1;
    }

    public boolean isShowFaceWidgetOnAod() {
        return ((Item) this.mItemLists.get(76)).getIntValue() != 1;
    }

    public boolean isAccessControlEnabled() {
        return ((Item) this.mItemLists.get(10)).getIntValue() == 1;
    }

    public boolean isSideSyncEnabled() {
        return ((Item) this.mItemLists.get(11)).getIntValue() != 0;
    }

    public boolean isSmartStayEnabled() {
        return ((Item) this.mItemLists.get(12)).getIntValue() == 1;
    }

    public boolean isPowerSavingMode() {
        if (((Item) this.mItemLists.get(13)).getIntValue() == 1 && ((Item) this.mItemLists.get(14)).getIntValue() == 1) {
            return true;
        }
        return ((Item) this.mItemLists.get(29)).getIntValue() == 1;
    }

    public boolean isAutomaticUnlockEnabled() {
        return ((Item) this.mItemLists.get(15)).getIntValue() == 1;
    }

    public boolean isShortcutsVisibleForMDM() {
        return ((Item) this.mItemLists.get(17)).getIntValue() != 0;
    }

    public boolean isAutoWipeEnable() {
        return ((Item) this.mItemLists.get(33)).getIntValue() == 1;
    }

    public String getShortcutAppList() {
        return ((Item) this.mItemLists.get(37)).getStringValue();
    }

    public boolean isIconSquicleMode() {
        return ((Item) this.mItemLists.get(38)).getIntValue() == 1;
    }

    public void setWhiteKeyguardStatusBar(int v) {
   //     System.putIntForUser(this.mContext.getContentResolver(), "white_lockscreen_statusbar", v, -2);
        ((Item) this.mItemLists.get(0)).setIntValue(v);
    }

    public void setWhiteKeyguardWallpaper(int v) {
       // System.putIntForUser(this.mContext.getContentResolver(), "white_lockscreen_wallpaper", v, -2);
        ((Item) this.mItemLists.get(1)).setIntValue(v);
    }

    public void setWhiteKeyguardNavigationBar(int v) {
      //  System.putIntForUser(this.mContext.getContentResolver(), "white_lockscreen_navigationbar", v, -2);
        ((Item) this.mItemLists.get(56)).setIntValue(v);
    }

    public void forceBroadcastWhiteKeyguardWallpaper() {
      //  broadcastChange(System.getUriFor("white_lockscreen_wallpaper"));
    }

    public int getSharedDeviceEnabled() {
        return ((Item) this.mItemLists.get(34)).getIntValue();
    }

    public boolean isSimpleStatusBarEnabled() {
        return ((Item) this.mItemLists.get(42)).getIntValue() == 1;
    }

    public boolean isNormalInHighPerformanceMode() {
        return ((Item) this.mItemLists.get(43)).getIntValue() == 0;
    }

    public boolean isDataUsageReminderEnabled() {
   //     return Rune.KEYGUARD_SUPPORT_DATA_USAGE_REMINDER && 1 == ((Item) this.mItemLists.get(50)).getIntValue();
        return false;
    }

    public boolean isEnabledIrisOnFirstScreen() {
        return ((Item) this.mItemLists.get(44)).getIntValue() == 1;
    }

    public boolean isEnabledFaceRecognitionFirstScreen() {
        return ((Item) this.mItemLists.get(59)).getIntValue() == 1;
    }

    public boolean isEnabledSmartScanRecognitionFirstScreen() {
        return ((Item) this.mItemLists.get(84)).getIntValue() == 1;
    }

    public String getServiceBoxBlackList() {
        return ((Item) this.mItemLists.get(62)).getStringValue();
    }

    public String getServiceBoxSharePageName() {
        return ((Item) this.mItemLists.get(49)).getStringValue();
    }

    public String getServiceBoxCurrentMusicPkg() {
        return ((Item) this.mItemLists.get(64)).getStringValue();
    }

    public int getServiceBoxMediaKeyEventFromAod() {
        return ((Item) this.mItemLists.get(63)).getIntValue();
    }

    public void resetServiceBoxMediaKeyEvent() {
      //  System.putIntForUser(this.mContext.getContentResolver(), "aod_lock_music_media_key_code", 0, -2);
        ((Item) this.mItemLists.get(63)).setIntValue(0);
    }

    public void setServiceBoxSharePageName(String name) {
      //  Global.putStringForUser(this.mContext.getContentResolver(), "lockscreen_aod_servicebox_page", name, -2);
        ((Item) this.mItemLists.get(49)).setStringValue(name);
    }

    public boolean isEnabledServiceBoxMusicPage() {
        return ((Item) this.mItemLists.get(46)).getIntValue() != 0;
    }

    public boolean isEnabledServiceBoxTodaysPage() {
        return ((Item) this.mItemLists.get(47)).getIntValue() != 0;
    }

    public boolean isEnabledServiceBoxAlarmPage() {
        return ((Item) this.mItemLists.get(48)).getIntValue() != 0;
    }

    public String getServiceBoxPageOrder() {
        return ((Item) this.mItemLists.get(57)).getStringValue();
    }

    public boolean isScreenOffMemoEnabled() {
        if (((Item) this.mItemLists.get(51)).getIntValue() != 0) {
            return true;
        }
        if (((Item) this.mItemLists.get(52)).getIntValue() != 0) {
            return true;
        }
        return false;
    }

    public boolean isLockFunctionsEnabled() {
        return ((Item) this.mItemLists.get(53)).getIntValue() != 0;
    }

    public boolean isAodEnabled() {
        return ((Item) this.mItemLists.get(54)).getIntValue() != 0;
    }

    public boolean isEnabledRapidKeyInput() {
        return ((Item) this.mItemLists.get(55)).getIntValue() != 0;
    }

    public boolean isEnableReserveMaxMode() {
        if (((Item) this.mItemLists.get(61)).getIntValue() != 1) {
            return false;
        }
        if (((Item) this.mItemLists.get(6)).getIntValue() == 1) {
            return true;
        }
        return false;
    }

    public int getNDigitsPIN() {
        return ((Item) this.mItemLists.get(65)).getIntValue();
    }

    public boolean isNavigationBarForceHide() {
        return ((Item) this.mItemLists.get(66)).getIntValue() != 0;
    }

    public boolean isShowBatteryPercentInStatusBar() {
        return ((Item) this.mItemLists.get(68)).getIntValue() != 0;
    }

    public void setShowBatteryPercentInStatusBar(int newValue) {
        ((Item) this.mItemLists.get(68)).setIntValue(newValue);
    }

    public int getVoiceCallType(int slotID) {
        if (slotID == 0) {
            return ((Item) this.mItemLists.get(69)).getIntValue();
        }
        return ((Item) this.mItemLists.get(72)).getIntValue();
    }

    public void setVoiceCallType(int v, int slotID) {
        if (slotID == 0) {
          //  System.putIntForUser(this.mContext.getContentResolver(), "voicecall_type", v, -2);
            ((Item) this.mItemLists.get(69)).setIntValue(v);
            return;
        }
      //  System.putIntForUser(this.mContext.getContentResolver(), "voicecall_type2", v, -2);
        ((Item) this.mItemLists.get(72)).setIntValue(v);
    }

    public boolean isShowKeyboardButton() {
        return ((Item) this.mItemLists.get(70)).getIntValue() != 0;
    }

    public int getLockNoticardOpacity() {
        return ((Item) this.mItemLists.get(71)).getIntValue();
    }

    public int getNotificationTextColorInversion() {
        return ((Item) this.mItemLists.get(81)).getIntValue();
    }

    public int getLockscreenMinimizingNotification() {
        return ((Item) this.mItemLists.get(79)).getIntValue();
    }

    public boolean isAdaptiveColorMode() {
        return ((Item) this.mItemLists.get(73)).getIntValue() == 1;
    }

    public boolean isMobileDataConnectionPopupShowing() {
        return ((Item) this.mItemLists.get(83)).getIntValue() == 1;
    }

    public boolean setAdaptiveColors(int... colors) {
        if (colors.length != 4) {
            Log.e("SettingsHelper", "setAdaptiveColors() failed ; must contain 4 colors");
            return false;
        }
        StringBuilder result = new StringBuilder();
        for (int i = 0; i < 4; i++) {
            result.append(Integer.toHexString(colors[i]));
            if (i < 3) {
                result.append(";");
            }
        }
        Log.d("SettingsHelper", "setAdaptiveColors " + result.toString());
     //   System.putStringForUser(this.mContext.getContentResolver(), "lock_clock_adaptive_colors", result.toString(), -2);
        return true;
    }

    public boolean isLockStarEnabled() {
        return ((Item) this.mItemLists.get(80)).getIntValue() != 0;
    }

    public boolean isLock2StepVerificationEnabled() {
        return ((Item) this.mItemLists.get(82)).getIntValue() == 1;
    }

    public boolean isNotificationLaunchFreeformEnabled() {
        return ((Item) this.mItemLists.get(85)).getIntValue() == 1;
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println(SettingsHelper.class.getSimpleName() + " state:");
        int size = this.mItemLists.size();
        for (int i = 0; i < size; i++) {
            pw.println(((Item) this.mItemLists.get(i)).dump());
        }
        pw.println();
    }
}
