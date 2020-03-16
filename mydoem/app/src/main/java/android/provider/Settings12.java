/*
 * Copyright (C) 2006 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.provider;

import android.Manifest;

import android.annotation.NonNull;
import android.annotation.Nullable;
import android.annotation.RequiresPermission;

import android.app.ActivityThread;
import android.app.AppOpsManager;
import android.app.Application;

import android.app.NotificationManager;
import android.app.SearchManager;
import android.app.WallpaperManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.IContentProvider;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.SQLException;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkScoreManager;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.BatteryManager;
import android.os.Binder;
import android.os.Build.VERSION_CODES;
import android.os.Bundle;
import android.os.DropBoxManager;
import android.os.IBinder;
import android.os.LocaleList;
import android.os.Process;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.speech.tts.TextToSpeech;
import android.text.TextUtils;
import android.util.AndroidException;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.MemoryIntArray;

import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.ArrayUtils;

import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.URISyntaxException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public final class Settings12 {
    public static final class System extends Settings.NameValueTable {
        public static int getInt(ContentResolver cr, String name, int def) {
            return getIntForUser(cr, name, def, 0);
        }

        /** @hide */
        public static int getIntForUser(ContentResolver cr, String name, int def, int userHandle) {

            return def;
        }
        public static boolean putIntForUser(ContentResolver cr, String name, int value,
                                            int userHandle) {
            return putStringForUser(cr, name, Integer.toString(value), userHandle);
        }
        public static boolean putStringForUser(ContentResolver cr, String name, String value,
                                               final int userHandle) {
            Bundle arg = new Bundle();
            arg.putString(Settings.NameValueTable.VALUE, value);

            return true;
        }
    }
}
