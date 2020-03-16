/*
 * Copyright (C) 2015 TeamEos project
 * Author Randall Rushing aka bigrushdog, randall.rushing@gmail.com
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
 * 
 * Widgets may implement this interface to interact with action configurations
 * 
 */

package com.android.server.utils.leoglobal;


import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.telecom.TelecomManager;
import android.view.KeyEvent;

import com.android.server.policy.PhoneWindowManager;

import static com.android.server.utils.leoglobal.LeoGlobalSetting.*;

public class LeoPhoneWindowManager {

    public  String TAG = LeoPhoneWindowManager.class.getSimpleName();
    private boolean isInteractive = true;
    private boolean mAppSwitchLongPressed;
    private boolean mBixbyConsumed;
    private boolean mBixbyDoubleTapPending;
    private final Runnable mBixbyDoubleTapTimeoutRunnable = new Runnable() {
        public void run() {
            if (mBixbyDoubleTapPending) {
                mBixbyDoubleTapPending = false;
                if (mAmberLeoBixbyClickStyle != 20) {
                    mPhoneWindowManager.handleBixbyShortPress();
                   mIsDefalutPressed = false;
                    return;
                }
            mIsDefalutPressed = true;
            }
        }
    };


    private Handler mHandler;
    private boolean mHomeConsumed;
    private boolean mHomeDoubleTapPending;
    private final Runnable mHomeDoubleTapTimeoutRunnable = new Runnable() {
        public void run() {
            if (mHomeDoubleTapPending) {
                mHomeDoubleTapPending = false;
                TelecomManager telecommService =mPhoneWindowManager.getTelecommService();
                if (telecommService == null || !telecommService.isRinging()) {
                  mPhoneWindowManager.launchHomeFromHotKey();
                }
            }
        }
    };
    private boolean mIsBackLongPressed = false;
    private boolean mIsDefalutPressed = true;
    private PhoneWindowManager mPhoneWindowManager;
    private final Runnable mTimeoutRunnable = () -> isInteractive = true;
    private BroadcastReceiver receiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            switch (action.hashCode()) {
                case -2128145023:
                    if (action.equals("android.intent.action.SCREEN_OFF")) {
                       isInteractive = false;
                        return;
                    }
                    return;
                case -1454123155:
                    if (action.equals("android.intent.action.SCREEN_ON")) {
                       mHandler.postDelayed(mTimeoutRunnable, 500);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };

    public LeoPhoneWindowManager(Context context, PhoneWindowManager phoneWindowManager, Handler handler) {
        this.mPhoneWindowManager = phoneWindowManager;
        this.mHandler = handler;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(this.receiver, intentFilter);
    }
}
