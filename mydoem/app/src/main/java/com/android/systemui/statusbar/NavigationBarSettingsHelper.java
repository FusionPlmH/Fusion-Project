package com.android.systemui.statusbar;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings.Global;
import android.util.ArrayMap;
import android.util.Log;
import com.google.android.collect.Lists;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class NavigationBarSettingsHelper {
    private static NavigationBarSettingsHelper sInstance;
    private ArrayMap<Uri, ArrayList<WeakReference<OnChangedCallback>>> mCallbacks = new ArrayMap();
    private Context mContext;
    private ArrayList<Item> mItemLists = Lists.newArrayList();
    private ContentObserver mNavigationBarSettingsObserver = new ContentObserver(new Handler()) {
        public void onChange(boolean selfChange, Uri uri) {
            super.onChange(selfChange);
            if (uri != null) {
                Log.d("NavBarSettingsHelper", uri.toString() + " changed");
                Log.d("NavBarSettingsHelper", "onChange()");
                int size = NavigationBarSettingsHelper.this.mItemLists.size();
                for (int i = 0; i < size; i++) {
                    if (((Item) NavigationBarSettingsHelper.this.mItemLists.get(i)).equals(uri)) {
                        ((Item) NavigationBarSettingsHelper.this.mItemLists.get(i)).read(NavigationBarSettingsHelper.this.mResolver);
                    }
                }
                NavigationBarSettingsHelper.this.broadcastChange(uri);
            }
        }
    };
    private ContentResolver mResolver;

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
            android.util.Log.e("NavBarSettingsHelper", "Exception occurred", r2);
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
            r5 = "NavBarSettingsHelper";
            r6 = "Exception occurred";
            android.util.Log.e(r5, r6, r2);
            goto L_0x0038;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.NavigationBarSettingsHelper.Item.getUri(java.lang.String):android.net.Uri");
        }

        /* JADX WARNING: Removed duplicated region for block: B:16:0x00ef A:{Splitter: B:0:0x0000, ExcHandler: java.lang.ClassNotFoundException (r1_0 'e' java.lang.Exception)} */
        /* JADX WARNING: Removed duplicated region for block: B:16:0x00ef A:{Splitter: B:0:0x0000, ExcHandler: java.lang.ClassNotFoundException (r1_0 'e' java.lang.Exception)} */
        /* JADX WARNING: Removed duplicated region for block: B:16:0x00ef A:{Splitter: B:0:0x0000, ExcHandler: java.lang.ClassNotFoundException (r1_0 'e' java.lang.Exception)} */
        /* JADX WARNING: Removed duplicated region for block: B:16:0x00ef A:{Splitter: B:0:0x0000, ExcHandler: java.lang.ClassNotFoundException (r1_0 'e' java.lang.Exception)} */
        /* JADX WARNING: Missing block: B:16:0x00ef, code:
            r1 = move-exception;
     */
        /* JADX WARNING: Missing block: B:17:0x00f0, code:
            android.util.Log.e("NavBarSettingsHelper", "Exception occurred", r1);
     */
        public void read(android.content.ContentResolver r8) {
            /*
            r7 = this;
            r3 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3.<init>();	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = "android.provider.Settings$";
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r7.mSettingType;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.toString();	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r0 = java.lang.Class.forName(r3);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r2 = 0;
            r3 = r7.mForUser;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = "ForUser";
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            if (r3 == 0) goto L_0x0170;
        L_0x0026:
            r3 = r7.mDef;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            if (r3 == 0) goto L_0x0035;
        L_0x002a:
            r3 = "String";
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            if (r3 == 0) goto L_0x00fa;
        L_0x0035:
            r3 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3.<init>();	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = "get";
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r7.mForUser;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.toString();	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = 3;
            r4 = new java.lang.Class[r4];	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r5 = android.content.ContentResolver.class;
            r6 = 0;
            r4[r6] = r5;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r5 = java.lang.String.class;
            r6 = 1;
            r4[r6] = r5;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r5 = java.lang.Integer.TYPE;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r6 = 2;
            r4[r6] = r5;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r2 = r0.getDeclaredMethod(r3, r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = "Int";
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            if (r3 == 0) goto L_0x00c8;
        L_0x0072:
            r3 = 3;
            r3 = new java.lang.Object[r3];	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = 0;
            r3[r4] = r8;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r7.mKey;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r5 = 1;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = -2;
            r4 = java.lang.Integer.valueOf(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r5 = 2;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r2.invoke(r0, r3);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = (java.lang.Integer) r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.intValue();	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r7.mIntValue = r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
        L_0x0091:
            r3 = "NavBarSettingsHelper";
            r4 = new java.lang.StringBuilder;
            r4.<init>();
            r5 = "mKey=";
            r4 = r4.append(r5);
            r5 = r7.mKey;
            r4 = r4.append(r5);
            r5 = ", mIntValue=";
            r4 = r4.append(r5);
            r5 = r7.mIntValue;
            r4 = r4.append(r5);
            r5 = ", mStringValue=";
            r4 = r4.append(r5);
            r5 = r7.mStringValue;
            r4 = r4.append(r5);
            r4 = r4.toString();
            android.util.Log.d(r3, r4);
            return;
        L_0x00c8:
            r3 = "String";
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            if (r3 == 0) goto L_0x0091;
        L_0x00d3:
            r3 = 3;
            r3 = new java.lang.Object[r3];	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = 0;
            r3[r4] = r8;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r7.mKey;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r5 = 1;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = -2;
            r4 = java.lang.Integer.valueOf(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r5 = 2;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r2.invoke(r0, r3);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = (java.lang.String) r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r7.mStringValue = r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            goto L_0x0091;
        L_0x00ef:
            r1 = move-exception;
            r3 = "NavBarSettingsHelper";
            r4 = "Exception occurred";
            android.util.Log.e(r3, r4, r1);
            goto L_0x0091;
        L_0x00fa:
            r3 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3.<init>();	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = "get";
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r7.mForUser;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r3.toString();	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = 4;
            r5 = new java.lang.Class[r3];	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = android.content.ContentResolver.class;
            r6 = 0;
            r5[r6] = r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = java.lang.String.class;
            r6 = 1;
            r5[r6] = r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r6 = "Int";
            r3 = r3.equals(r6);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            if (r3 == 0) goto L_0x016d;
        L_0x012e:
            r3 = java.lang.Integer.TYPE;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
        L_0x0130:
            r6 = 2;
            r5[r6] = r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = java.lang.Integer.TYPE;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r6 = 3;
            r5[r6] = r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r2 = r0.getDeclaredMethod(r4, r5);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = "Int";
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            if (r3 == 0) goto L_0x0091;
        L_0x0147:
            r3 = 4;
            r3 = new java.lang.Object[r3];	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = 0;
            r3[r4] = r8;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r7.mKey;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r5 = 1;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r7.mDef;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r5 = 2;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = -2;
            r4 = java.lang.Integer.valueOf(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r5 = 3;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r2.invoke(r0, r3);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = (java.lang.Integer) r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.intValue();	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r7.mIntValue = r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            goto L_0x0091;
        L_0x016d:
            r3 = java.lang.String.class;
            goto L_0x0130;
        L_0x0170:
            r3 = r7.mDef;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            if (r3 == 0) goto L_0x017f;
        L_0x0174:
            r3 = "String";
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            if (r3 == 0) goto L_0x01ea;
        L_0x017f:
            r3 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3.<init>();	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = "get";
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.toString();	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = 2;
            r4 = new java.lang.Class[r4];	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r5 = android.content.ContentResolver.class;
            r6 = 0;
            r4[r6] = r5;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r5 = java.lang.String.class;
            r6 = 1;
            r4[r6] = r5;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r2 = r0.getDeclaredMethod(r3, r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = "Int";
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            if (r3 == 0) goto L_0x01ca;
        L_0x01b1:
            r3 = 2;
            r3 = new java.lang.Object[r3];	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = 0;
            r3[r4] = r8;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r7.mKey;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r5 = 1;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r2.invoke(r0, r3);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = (java.lang.Integer) r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.intValue();	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r7.mIntValue = r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            goto L_0x0091;
        L_0x01ca:
            r3 = "String";
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            if (r3 == 0) goto L_0x0091;
        L_0x01d5:
            r3 = 2;
            r3 = new java.lang.Object[r3];	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = 0;
            r3[r4] = r8;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r7.mKey;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r5 = 1;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r2.invoke(r0, r3);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = (java.lang.String) r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r7.mStringValue = r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            goto L_0x0091;
        L_0x01ea:
            r3 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3.<init>();	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = "get";
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r3.toString();	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = 3;
            r5 = new java.lang.Class[r3];	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = android.content.ContentResolver.class;
            r6 = 0;
            r5[r6] = r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = java.lang.String.class;
            r6 = 1;
            r5[r6] = r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r6 = "Int";
            r3 = r3.equals(r6);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            if (r3 == 0) goto L_0x024a;
        L_0x0218:
            r3 = java.lang.Integer.TYPE;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
        L_0x021a:
            r6 = 2;
            r5[r6] = r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r2 = r0.getDeclaredMethod(r4, r5);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = "Int";
            r4 = r7.mDataType;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.equals(r4);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            if (r3 == 0) goto L_0x0091;
        L_0x022c:
            r3 = 3;
            r3 = new java.lang.Object[r3];	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = 0;
            r3[r4] = r8;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r7.mKey;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r5 = 1;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r4 = r7.mDef;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r5 = 2;
            r3[r5] = r4;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r2.invoke(r0, r3);	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = (java.lang.Integer) r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r3 = r3.intValue();	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            r7.mIntValue = r3;	 Catch:{ ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef, ClassNotFoundException -> 0x00ef }
            goto L_0x0091;
        L_0x024a:
            r3 = java.lang.String.class;
            goto L_0x021a;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.NavigationBarSettingsHelper.Item.read(android.content.ContentResolver):void");
        }

        public void registerObserver() {
            NavigationBarSettingsHelper.this.mResolver.registerContentObserver(getUri(this.mKey), false, NavigationBarSettingsHelper.this.mNavigationBarSettingsObserver, -2);
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

        public void setIntValue(int i) {
            this.mIntValue = i;
        }
    }

    public interface OnChangedCallback {
        void onChanged(Uri uri);
    }

    private NavigationBarSettingsHelper(Context context) {
        this.mContext = context;
        this.mResolver = context.getContentResolver();
        setUpSettingsItem();
        readSettingsDB();
        registerSettingsObserver();
    }

    private void setUpSettingsItem() {
        this.mItemLists.add(new Item("Global", "navigationbar_key_order", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("Global", "navigationbar_color", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("Global", "navigationbar_current_color", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("Global", "navigationbar_use_theme_default", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("Global", "navigationbar_theme_color", "Int", Integer.valueOf(0), false));
        this.mItemLists.add(new Item("Global", "navigationbar_hide_bar", "Int", Integer.valueOf(1), false));
        this.mItemLists.add(new Item("Global", "navigationbar_hide_bar_enabled", "Int", Integer.valueOf(0), false));
    }

    private void readSettingsDB() {
        Log.d("NavBarSettingsHelper", "readSettingsDB()");
        int size = this.mItemLists.size();
        for (int i = 0; i < size; i++) {
            ((Item) this.mItemLists.get(i)).read(this.mResolver);
        }
    }

    private void registerSettingsObserver() {
        Log.d("NavBarSettingsHelper", "registerSettingsObserver()");
        int size = this.mItemLists.size();
        for (int i = 0; i < size; i++) {
            ((Item) this.mItemLists.get(i)).registerObserver();
        }
    }

    public static NavigationBarSettingsHelper getInstance(Context context) {
        if (sInstance == null) {
            sInstance = new NavigationBarSettingsHelper(context);
        }
        return sInstance;
    }

    public void registerCallback(OnChangedCallback listener, Uri... uri) {
        int i;
        synchronized (this) {
            Log.v("NavBarSettingsHelper", "*** register listener for " + listener);
            int sizeOfUris = uri.length;
            WeakReference<OnChangedCallback> weakReference = new WeakReference(listener);
            for (i = 0; i < sizeOfUris; i++) {
                ArrayList<WeakReference<OnChangedCallback>> arrayList = (ArrayList) this.mCallbacks.get(uri[i]);
                if (arrayList == null || !arrayList.contains(weakReference)) {
                    if (arrayList == null) {
                        this.mCallbacks.put(uri[i], new ArrayList());
                    }
                    ((ArrayList) this.mCallbacks.get(uri[i])).add(weakReference);
                } else {
                    Log.e("NavBarSettingsHelper", "Object tried to add another listener", new Exception("Called by"));
                }
            }
        }
        int size = this.mCallbacks.size();
        for (i = 0; i < size; i++) {
            Log.d("NavBarSettingsHelper", "mListeners[" + ((Uri) this.mCallbacks.keyAt(i)).toString() + "] = " + ((ArrayList) this.mCallbacks.get(this.mCallbacks.keyAt(i))).toString() + "...");
        }
    }

    public void unregisterAllCallbacks() {
        int i;
        synchronized (this) {
            Log.v("NavBarSettingsHelper", "*** unregister all listener size " + this.mCallbacks.size());
            for (i = this.mCallbacks.size() - 1; i >= 0; i--) {
                ArrayList<WeakReference<OnChangedCallback>> tempList = (ArrayList) this.mCallbacks.get(this.mCallbacks.keyAt(i));
                if (tempList != null) {
                    for (int jIdx = tempList.size() - 1; jIdx >= 0; jIdx--) {
                        WeakReference<OnChangedCallback> weakReference = (WeakReference) tempList.get(jIdx);
                        tempList.remove(jIdx);
                    }
                    if (tempList.isEmpty()) {
                        this.mCallbacks.remove(this.mCallbacks.keyAt(i));
                    }
                }
            }
        }
        int tempSize = this.mCallbacks.size();
        for (i = 0; i < tempSize; i++) {
            Log.d("NavBarSettingsHelper", "mListeners[" + ((Uri) this.mCallbacks.keyAt(i)).toString() + "] = " + ((ArrayList) this.mCallbacks.get(this.mCallbacks.keyAt(i))).toString() + "...");
        }
        if (tempSize == 0) {
            Log.d("NavBarSettingsHelper", "mListeners doesn't have any listeners");
        }
    }

    private void broadcastChange(Uri uri) {
        ArrayList<WeakReference<OnChangedCallback>> tempList;
        Log.v("NavBarSettingsHelper", "*** broadcastChange for " + uri);
        synchronized (this) {
            tempList = (ArrayList) this.mCallbacks.get(uri);
        }
        if (tempList != null) {
            Log.v("NavBarSettingsHelper", "*** broadcastChange tempList.size() = " + tempList.size());
            for (int i = 0; i < tempList.size(); i++) {
                OnChangedCallback listener = (OnChangedCallback) ((WeakReference) tempList.get(i)).get();
                if (listener != null) {
                    listener.onChanged(uri);
                } else {
                    Log.v("NavBarSettingsHelper", "*** broadcastChange listener == null");
                }
            }
            return;
        }
        Log.v("NavBarSettingsHelper", "*** broadcastChange tempList == null");
    }

    public boolean isNavBarButtonOrderDefault() {
        return ((Item) this.mItemLists.get(0)).getIntValue() == 0;
    }

    public int getNavigationBarColor() {
        return ((Item) this.mItemLists.get(1)).getIntValue();
    }

    public void setNavigationBarCurrentColor(int color) {
        Global.putInt(this.mResolver, "navigationbar_current_color", color);
        ((Item) this.mItemLists.get(2)).setIntValue(color);
    }

    public int getNavigationBarUseThemeDefault() {
        return ((Item) this.mItemLists.get(3)).getIntValue();
    }

    public void setNavigationBarUseThemeDefault(int isDefault) {
        Global.putInt(this.mResolver, "navigationbar_use_theme_default", isDefault);
        ((Item) this.mItemLists.get(3)).setIntValue(isDefault);
    }

    public void setNavigationBarThemeColor(int color) {
        Global.putInt(this.mResolver, "navigationbar_theme_color", color);
        ((Item) this.mItemLists.get(4)).setIntValue(color);
    }

    public boolean getNavigationBarHideSetting() {
        return ((Item) this.mItemLists.get(5)).getIntValue() != 0;
    }

    public boolean getNavigationBarHideEnabled() {
        return ((Item) this.mItemLists.get(6)).getIntValue() != 0;
    }

    public void setNavigationBarHideEnabled(boolean enabled) {
        int i;
        int i2 = 1;
        ContentResolver contentResolver = this.mResolver;
        String str = "navigationbar_hide_bar_enabled";
        if (enabled) {
            i = 1;
        } else {
            i = 0;
        }
        Global.putInt(contentResolver, str, i);
        Item item = (Item) this.mItemLists.get(6);
        if (!enabled) {
            i2 = 0;
        }
        item.setIntValue(i2);
    }
}
