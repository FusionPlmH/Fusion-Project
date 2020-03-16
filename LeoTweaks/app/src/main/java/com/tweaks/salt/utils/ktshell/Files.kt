package com.tweaks.salt.utils.ktshell

import android.os.StatFs

/**
 * Created by Hello on 2017/11/01.
 */

object Files {
    fun GetDirFreeSizeMB(dir: String): Long {
        val stat = StatFs(dir)
        val size = stat.availableBytes
        return size / 1024 / 1024 //剩余空间
    }
}
