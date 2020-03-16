/*
 * Copyright (C) 2014 The Android Open Source Project
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
 * limitations under the License
 */

package com.android.systemui;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;

import com.android.settingslib.salt.SaltConfigFrame;



import java.util.HashMap;
import java.util.Map;

import static com.android.settingslib.salt.SaltIcon.updateStatusBarIcons;

public class SystemUIApplication extends Application {

    private static final String TAG = "SystemUIService";
    private static final boolean DEBUG = false;

    private final Class<?>[] SERVICES = new Class[] {

    };
    private boolean mServicesStarted;
    private boolean mBootCompleted;
    private final Map<Class<?>, Object> mComponents = new HashMap<Class<?>, Object>();

    @Override
    public void onCreate() {
        super.onCreate();
        saltContext(this);
        IntentFilter filter = new IntentFilter(Intent.ACTION_BOOT_COMPLETED);
        filter.setPriority(IntentFilter.SYSTEM_HIGH_PRIORITY);
        registerReceiver(new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                if (mBootCompleted) return;
                if (DEBUG) Log.v(TAG, "BOOT_COMPLETED received");
                unregisterReceiver(this);
                mBootCompleted = true;
            }
        }, filter);
        setStatusBarIcons();
    }
    public void saltContext(Context context){
        SaltConfigFrame.mSaltContext = context;
        SaltConfigFrame.mPackageName =getPackageName();
    }

    public void  setStatusBarIcons(){
        updateStatusBarIcons();
    }
}
