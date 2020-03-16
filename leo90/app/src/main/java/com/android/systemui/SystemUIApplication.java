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

import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import android.widget.Toast;

;

import com.android.systemui.util.LeoDrawable;

import java.util.HashMap;
import java.util.Map;


import static com.android.systemui.util.LeoDrawable.updateStatusBarIcons;


/**
 * Application class for SystemUI.
 */
public class SystemUIApplication extends Application {

    private static final String TAG = "SystemUIService";
    private static final boolean DEBUG = false;

    public static Context mLeoContext;

    public static Context getContext() {
        return mLeoContext;
    }

    /**
     * The classes of the stuff to start.
     */
    private final Class<?>[] SERVICES = new Class[] {

    };

    /**
     * Hold a reference on the stuff we start.
     */

    private boolean mServicesStarted;
    private boolean mBootCompleted;
    private final Map<Class<?>, Object> mComponents = new HashMap<Class<?>, Object>();

    @Override
    public void onCreate() {
        super.onCreate();
        // Set the application theme that is inherited by all services. Note that setting the
        // application theme in the manifest does only work for activities. Keep this in sync with
        // the theme set there.


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

    /**
     * Makes sure that all the SystemUI services are running. If they are already running, this is a
     * no-op. This is needed to conditinally start all the services, as we only need to have it in
     * the main process.
     *
     * <p>This method must only be called from the main thread.</p>
     */


    @SuppressWarnings("unchecked")
    public <T> T getComponent(Class<T> interfaceType) {
        return (T) mComponents.get(interfaceType);
    }


   public void  setStatusBarIcons(){
       updateStatusBarIcons(mLeoContext);
   }


}
