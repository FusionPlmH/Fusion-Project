/*
 * Copyright (C) 2014 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License. You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License
 * is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
 * or implied. See the License for the specific language governing permissions and limitations under
 * the License.
 */

package android.telecom;

import android.Manifest;
import android.annotation.RequiresPermission;

import android.annotation.SuppressLint;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;

import com.android.internal.telecom.ITelecomService;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Provides access to information about active calls and registration/call-management functionality.
 * Apps can use methods in this class to determine the current call state.
 * <p>
 * Apps do not instantiate this class directly; instead, they retrieve a reference to an instance
 * through {@link Context#getSystemService Context.getSystemService(Context.TELECOM_SERVICE)}.
 * <p>
 * Note that access to some telecom information is permission-protected. Your app cannot access the
 * protected information or gain access to protected functionality unless it has the appropriate
 * permissions declared in its manifest file. Where permissions apply, they are noted in the method
 * descriptions.
 */

public class aTelecomManager {


    @RequiresPermission(anyOf = {

            android.Manifest.permission.READ_PHONE_STATE
    })
    public boolean isRinging() {

        return false;
    }

}
