/*
 * Copyright (C) 2012 The Android Open Source Project
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

package android.hardware.inputs;



import android.view.InputEvent;
import android.view.PointerIcon;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodSubtype;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;



/**
 * Provides information about input devices and available key layouts.
 * <p>
 * Get an instance of this class by calling
 * {@link android.content.Context#getSystemService(java.lang.String)
 * Context.getSystemService()} with the argument
 * {@link android.content.Context#INPUT_SERVICE}.
 * </p>
 */
public final class AInputManager {
    private static final String TAG = "InputManager";
    private static final boolean DEBUG = false;
    public static final int INJECT_INPUT_EVENT_MODE_ASYNC = 0;
    private static final int MSG_DEVICE_ADDED = 1;
    private static final int MSG_DEVICE_REMOVED = 2;
    private static final int MSG_DEVICE_CHANGED = 3;

    private static AInputManager sInstance;
    public static AInputManager getInstance() {
        synchronized (AInputManager.class) {
            if (sInstance == null) {

            }
            return sInstance;
        }
    }

    public boolean injectInputEvent(InputEvent event, int mode) {
       // if (event == null) {
            //throw new IllegalArgumentException("event must not be null");
       // }
       // if (mode != INJECT_INPUT_EVENT_MODE_ASYNC
           //     && mode != INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH
           //     && mode != INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT) {
          //  throw new IllegalArgumentException("mode is invalid");
      //  }

        //try {
        //    return mIm.injectInputEvent(event, mode);
      //  } catch (RemoteException ex) {
        //    throw ex.rethrowFromSystemServer();
        return false;
    }


}