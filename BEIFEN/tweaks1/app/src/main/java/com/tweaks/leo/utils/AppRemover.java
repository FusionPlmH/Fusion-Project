/*
 * Copyright (C) 2017 AICP
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

package com.tweaks.leo.utils;

import android.content.Context;
import android.os.AsyncTask;




public abstract class AppRemover<Params> extends AsyncTask<Params, Void, Boolean> {


    public AppRemover(Context context) {
        super();

    }

    abstract protected void sudoInBackground(Params... params)
            throws SuShell.SuDeniedException;

    @Override
    protected Boolean doInBackground(Params... params) {
        try {
            sudoInBackground(params);
            return true;
        } catch (SuShell.SuDeniedException e) {
            return false;
        }
    }

}
