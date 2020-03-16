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


import android.content.ContentResolver;
import android.os.Bundle;
import android.util.AndroidException;


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
    public static class SettingNotFoundException extends AndroidException {
        public SettingNotFoundException(String msg) {
            super(msg);
        }
    }
    public static class NameValueTable implements BaseColumns {
        public static final String VALUE = "value";
    }
    public static final class Global extends NameValueTable {

    }
    public static final class Secure extends NameValueTable {

    }
}
