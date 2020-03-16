/*
 * Copyright (C) 2010 The Android Open Source Project
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

package com.android.systemui;


import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Typeface;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Map;


    public abstract class SystemUI
    {

        public Map<Class<?>, Object> mComponents;
        public Context mContext;

        private int mFlipfont = 0;

        public void dump(FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {}

        public <T> T getComponent(Class<T> paramClass)
        {
            if (this.mComponents != null) {
                return (T)this.mComponents.get(paramClass);
            }
            return null;
        }

        protected void onBootCompleted() {}

        protected void onConfigurationChanged(Configuration paramConfiguration)
        {
           // if ((paramConfiguration != null) && (paramConfiguration.FlipFont > 0) && (this.mFlipfont != paramConfiguration.FlipFont))
            {
                if (this.mContext == null) {
                    //break label52;
                }
               //Typeface.SetAppTypeFace(this.mContext, this.mContext.getPackageName());
            }
            for (;;)
            {
               // this.mFlipfont = paramConfiguration.FlipFont;
                return;
               // label52:
             //   Typeface.SetAppTypeFace(this.mContext, "android");
            }
        }

        protected void onUserSwitchComplete()
        {
            if (this.mContext != null)
            {
               // Typeface.SetAppTypeFace(this.mContext, this.mContext.getPackageName());
                return;
            }
           // Typeface.SetAppTypeFace(this.mContext, "android");
        }

        public <T, C extends T> void putComponent(Class<T> paramClass, C paramC)
        {
            if (this.mComponents != null) {
                this.mComponents.put(paramClass, paramC);
            }
        }

        public abstract void start();
    }

