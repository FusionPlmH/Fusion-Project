/*
 * Copyright (C) 2017 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file
 * except in compliance with the License. You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the
 * License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

package com.android.systemui;

import android.content.Context;
import android.content.res.Configuration;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import android.util.ArrayMap;
import android.view.IWindowManager;
import android.view.WindowManagerGlobal;


import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.Preconditions;

import com.android.systemui.statusbar.phone.StatusBarWindowManager;

import com.android.systemui.statusbar.policy.BluetoothController;

import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;

import com.android.systemui.statusbar.policy.FlashlightController;
import com.android.systemui.statusbar.policy.FlashlightControllerImpl;

import com.android.systemui.tuner.TunerService;
import com.android.systemui.tuner.TunerServiceImpl;


import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.function.Consumer;

/**
 * Class to handle ugly dependencies throughout sysui until we determine the
 * long-term dependency injection solution.
 *
 * Classes added here should be things that are expected to live the lifetime of sysui,
 * and are generally applicable to many parts of sysui. They will be lazily
 * initialized to ensure they aren't created on form factors that don't need them
 * (e.g. HotspotController on TV). Despite being lazily initialized, it is expected
 * that all dependencies will be gotten during sysui startup, and not during runtime
 * to avoid jank.
 *
 * All classes used here are expected to manage their own lifecycle, meaning if
 * they have no clients they should not have any registered resources like bound
 * services, registered receivers, etc.
 */
public class Dependency extends SystemUI {
    private static final String TAG = "Dependency";

    /**
     * Key for getting a background Looper for background work.
     */
    public static final DependencyKey<Looper> BG_LOOPER = new DependencyKey<>("background_looper");
    /**
     * Key for getting a Handler for receiving time tick broadcasts on.
     */
    public static final DependencyKey<Handler> TIME_TICK_HANDLER =
            new DependencyKey<>("time_tick_handler");
    /**
     * Generic handler on the main thread.
     */
    public static final DependencyKey<Handler> MAIN_HANDLER = new DependencyKey<>("main_handler");

    /**
     * An email address to send memory leak reports to by default.
     */
    public static final DependencyKey<String> LEAK_REPORT_EMAIL
            = new DependencyKey<>("leak_report_email");

    private final ArrayMap<Object, Object> mDependencies = new ArrayMap<>();
    private final ArrayMap<Object, DependencyProvider> mProviders = new ArrayMap<>();

    @Override
    public void start() {
        sDependency = this;
        // TODO: Think about ways to push these creation rules out of Dependency to cut down
        // on imports.
        mProviders.put(TIME_TICK_HANDLER, () -> {
            HandlerThread thread = new HandlerThread("TimeTick");
            thread.start();
            return new Handler(thread.getLooper());
        });
        mProviders.put(BG_LOOPER, () -> {
            HandlerThread thread = new HandlerThread("SysUiBg",
                    Process.THREAD_PRIORITY_BACKGROUND);
            thread.start();
            return thread.getLooper();
        });
    }
    protected final <T> T getDependency(Class<T> cls) {
        return getDependencyInner(cls);
    }

    protected final <T> T getDependency(DependencyKey<T> key) {
        return getDependencyInner(key);
    }

    private synchronized <T> T getDependencyInner(Object key) {
        @SuppressWarnings("unchecked")
        T obj = (T) mDependencies.get(key);
        if (obj == null) {
            obj = createDependency(key);
            mDependencies.put(key, obj);
        }
        return obj;
    }


    protected <T> T createDependency(Object cls) {
        Preconditions.checkArgument(cls instanceof DependencyKey<?> || cls instanceof Class<?>);

        @SuppressWarnings("unchecked")
        DependencyProvider<T> provider = mProviders.get(cls);
        if (provider == null) {
            throw new IllegalArgumentException("Unsupported dependency " + cls);
        }
        return provider.createDependency();
    }

    private static Dependency sDependency;

    public interface DependencyProvider<T> {
        T createDependency();
    }

    private <T> void destroyDependency(Class<T> cls, Consumer<T> destroy) {
        T dep = (T) mDependencies.remove(cls);
        if (dep != null && destroy != null) {
            destroy.accept(dep);
        }
    }

    /**
     * Used in separate processes (like tuner settings) to init the dependencies.
     */
    public static void initDependencies(Context context) {
        if (sDependency != null) return;
        Dependency d = new Dependency();
        d.mContext = context;
        d.mComponents = new HashMap<>();
        d.start();
    }

    /**
     * Used in separate process teardown to ensure the context isn't leaked.
     *
     * TODO: Remove once PreferenceFragment doesn't reference getActivity()
     * anymore and these context hacks are no longer needed.
     */
    public static void clearDependencies() {
        sDependency = null;
    }

    /**
     * Checks to see if a dependency is instantiated, if it is it removes it from
     * the cache and calls the destroy callback.
     */
    public static <T> void destroy(Class<T> cls, Consumer<T> destroy) {
        sDependency.destroyDependency(cls, destroy);
    }

    public static <T> T get(Class<T> cls) {
        return sDependency.getDependency(cls);
    }

    public static <T> T get(DependencyKey<T> cls) {
        return sDependency.getDependency(cls);
    }

    public static final class DependencyKey<V> {
        private final String mDisplayName;

        public DependencyKey(String displayName) {
            mDisplayName = displayName;
        }

        @Override
        public String toString() {
            return mDisplayName;
        }
    }
}
