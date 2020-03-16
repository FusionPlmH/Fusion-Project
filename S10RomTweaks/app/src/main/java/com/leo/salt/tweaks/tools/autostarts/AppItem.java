package com.leo.salt.tools.autostarts;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.Drawable;

public class AppItem {
    public String appName;
    public String cacheSize;
    public boolean checked;
    public Drawable icon;
    public String name;
    public String packageName;
    public String status;

    public AppItem(Context context, boolean z, String str, String str2, String str3) {
        this.checked = z;
        this.packageName = str;
        this.name = str2;
        this.status = str3;
        try {
            PackageManager pm = context.getPackageManager();
            PackageInfo packageinfo = pm.getPackageInfo(this.packageName, 0);
            this.appName = packageinfo.applicationInfo.loadLabel(pm).toString();
            this.icon = packageinfo.applicationInfo.loadIcon(pm);
            if (this.appName == null) {
                this.appName = "";
            }
        } catch (NameNotFoundException e) {
            e.printStackTrace();
        }
    }

    public AppItem(Context context, String str, String str2, String str3) {
        this.packageName = str;
        this.name = str2;
        this.cacheSize = str3;
        try {
            PackageManager pm = context.getPackageManager();
            PackageInfo packageinfo = pm.getPackageInfo(this.packageName, 0);
            this.appName = packageinfo.applicationInfo.loadLabel(pm).toString();
            this.icon = packageinfo.applicationInfo.loadIcon(pm);
            if (this.appName == null) {
                this.appName = "";
            }
        } catch (NameNotFoundException e) {
            e.printStackTrace();
        }
    }
}
