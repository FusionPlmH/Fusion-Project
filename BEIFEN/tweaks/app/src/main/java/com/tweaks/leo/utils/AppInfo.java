package com.tweaks.leo.utils;

import android.content.Intent;
import android.graphics.drawable.Drawable;

import com.os.leo.utils.AppConfigStore;
/*      Created by Roberto Mariani and Anna Berkovitch, 2015-2016
        This program is free software: you can redistribute it and/or modify
        it under the terms of the GNU General Public License as published by
        the Free Software Foundation, either version 3 of the License, or
        (at your option) any later version.

        This program is distributed in the hope that it will be useful,
        but WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
        GNU General Public License for more details.

        You should have received a copy of the GNU General Public License
        along with this program.  If not, see <http://www.gnu.org/licenses/>.*/

public class AppInfo {
    public static AppInfo getItem() {
        return new AppInfo();
    }

    public String mAppName;
    public String mPackageName;
    public Drawable mIcon;
    public Intent mIntent;


    public CharSequence appName = "";
    public CharSequence packageName = "";
    public Drawable icon = null;
    public CharSequence enabledState = "";
    public CharSequence wranState = "";
    public Boolean selectState = false;
    public CharSequence path = "";
    public CharSequence dir = "";
    public Boolean enabled = false;
    public String versionName = "";
    public int versionCode = 0;
    public AppType appType = AppType.UNKNOW;
    public AppConfigStore.AppConfigInfo appConfigInfo;
    public CharSequence desc;

    public enum AppType {
        UNKNOW,
        USER,
        SYSTEM,
        BACKUPFILE
    }
}
