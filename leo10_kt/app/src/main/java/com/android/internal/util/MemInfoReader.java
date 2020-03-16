/*
 * Copyright (C) 2011 The Android Open Source Project
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

package com.android.internal.util;

import android.os.Debug;
import android.os.StrictMode;

import java.io.FileInputStream;
import java.io.IOException;

public final class MemInfoReader {
    private static final int LIGHT_MEMINFO_COUNT = 8;
    final long[] mInfos = new long[13];
    private final long[] mLightInfos = new long[LIGHT_MEMINFO_COUNT];
    byte[] mbuffer = new byte[512];

    public long getCachedSize() {
        return getCachedSizeKb() * 1024;
    }

    public long getCachedSizeKb() {
        return (this.mInfos[2] + this.mInfos[3]) - this.mInfos[9];
    }

    public long getCachedSizeLegacy() {
        return this.mInfos[3] * 1024;
    }

    public long getFreeSize() {
        return this.mInfos[1] * 1024;
    }

    public long getFreeSizeKb() {
        return this.mInfos[1];
    }

    public long getKernelUsedSize() {
        return getKernelUsedSizeKb() * 1024;
    }

    public long getKernelUsedSizeKb() {
        return (((this.mInfos[4] + this.mInfos[5]) + this.mInfos[10]) + this.mInfos[11]) + this.mInfos[12];
    }

    public long[] getRawInfo() {
        return this.mInfos;
    }

    public long getSwapFreeSizeKb() {
        return this.mInfos[7];
    }

    public long getSwapTotalSizeKb() {
        return this.mInfos[6];
    }

    public long getTotalSize() {
        return this.mInfos[0] * 1024;
    }

    public long getTotalSizeKb() {
        return this.mInfos[0];
    }

    public long getUssByPid(int i) {
        Throwable th;
        long j = 0;
        String str = "/proc/" + i + "/statm";
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                fileInputStream2.read(this.mbuffer, 0, 512);
                fileInputStream2.close();
                String[] split = new String(this.mbuffer).split(" ");
                j = (Long.parseLong(split[1]) * 4096) - (Long.parseLong(split[2]) * 4096);
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e) {
                    }
                }
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                fileInputStream = fileInputStream2;
            } catch (Exception e2) {
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e3) {
                    }
                }
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                return j;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e4) {
                    }
                }
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                throw th;
            }
        } catch (Exception e5) {
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return j;
        } catch (Throwable th3) {
            th = th3;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            try {
                throw th;
            } catch (Throwable throwable) {
                throwable.printStackTrace();
            }
        }
        return j;
    }

    public long getZramTotalSizeKb() {
        return this.mInfos[LIGHT_MEMINFO_COUNT];
    }

    public void readLightMemInfo() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
           // Debug.getMemInfo(this.mLightInfos);
            for (int i = 0; i < LIGHT_MEMINFO_COUNT; i++) {
                this.mInfos[i] = this.mLightInfos[i];
            }
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    public void readMemInfo() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
          //  Debug.getMemInfo(this.mInfos);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }
}
