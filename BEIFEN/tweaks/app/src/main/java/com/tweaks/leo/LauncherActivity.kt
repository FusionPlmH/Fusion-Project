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


package com.tweaks.leo

import android.app.Activity
import android.content.ComponentName
import android.content.Intent
import android.content.pm.ShortcutInfo
import android.content.pm.ShortcutManager
import android.content.res.Configuration
import android.graphics.drawable.Icon
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.preference.PreferenceManager
import android.view.View
import android.widget.Toast

import com.tweaks.leo.activity.SubActivity
import com.tweaks.leo.utils.AndroidUtils

import java.util.ArrayList
import java.util.Arrays

import com.tweaks.leo.LeoApp.mContext
import com.tweaks.leo.utils.root.Helpers.Companion.CODE
import com.tweaks.leo.widget.DialogUtil.Promptdonate
import android.widget.TextView
import android.os.AsyncTask.execute
import android.support.annotation.Nullable
import com.tweaks.leo.base.BaseActivity
import java.net.HttpURLConnection.HTTP_OK
import android.R.attr.versionCode
import android.annotation.SuppressLint
import android.content.pm.PackageManager
import android.content.pm.PackageInfo
import android.content.pm.ApplicationInfo
import android.os.AsyncTask
import android.bluetooth.BluetoothClass.Device
import android.content.Context
import android.graphics.Color
import android.support.v4.content.ContextCompat
import android.service.quicksettings.Tile
import android.widget.LinearLayout
import com.tweaks.leo.utils.AndroidUtils.getVersionName
import com.tweaks.leo.utils.AndroidUtils.versions
import com.tweaks.leo.utils.Constants
import com.tweaks.leo.utils.ktshell.Busybox
import com.tweaks.leo.utils.ktshell.CheckRootStatus
import com.tweaks.leo.utils.ktshell.ConfigInstaller
import com.tweaks.leo.utils.root.Helpers
import kotlinx.android.synthetic.main.activity_splash.*
import java.io.File


class LauncherActivity : BaseActivity() {
    override fun initLayout(): Int {
        return R.layout.activity_splash

    }
    private var configInstallerThread: Thread? = null
    private var hasRoot = false
    @SuppressLint("ApplySharedPref", "CommitPrefEdits")
    private fun checkRoot(next: Runnable, skip: Runnable) {
        val globalConfig = getSharedPreferences(Constants.GLOBAL_SPF, Context.MODE_PRIVATE)
        val disableSeLinux = globalConfig.getBoolean(Constants.GLOBAL_SPF_DISABLE_ENFORCE, true)
        CheckRootStatus(this, next, skip, disableSeLinux).forceGetRoot()

    }
    private var Background : LinearLayout? = null
    override fun onCreate(@Nullable savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        if (Build.VERSION.SDK_INT >= 21) {
            val decorView = window.decorView
            //让应用主题内容占用系统状态栏的空间,注意:下面两个参数必须一起使用 stable 牢固的
            val option = View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_STABLE
            decorView.systemUiVisibility = option
            //设置状态栏颜色为透明
            window.statusBarColor = Color.TRANSPARENT
        }
        Background = findViewById(R.id.splash_background)
       //root_access_text = findViewById(R.id.root_access_text)
        checkRoot(Runnable {

            hasRoot = true

            Helpers.ClearOTA()
            val f1 = File("/system/xbin/busybox")
            if (f1.exists()) {
                //存在
                busybox_text.setText("busybox已经安装")
            } else {
                val f2 = File("/system/bin/busybox")
                if (f2.exists()) {
                    //存在
                    busybox_text.setText("busybox未安装")
                } else {

                    Busybox(this).forceInstall(Runnable {
                        configInstallerThread = Thread(Runnable {
                            ConfigInstaller().configCodeVerify(this)
                        })
                        configInstallerThread!!.start()

                    })
                }
            }
            val intent = Intent(this, MainActivity::class.java)
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP)
            if (getIntent().extras != null) {
                intent.putExtras(getIntent().extras!!)
            }
            startActivity(intent)
            finish()
        }, Runnable {
            val intent = Intent(this, MainActivity::class.java)
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP)
            if (getIntent().extras != null) {
                intent.putExtras(getIntent().extras!!)
            }
            startActivity(intent)
            finish()
        })

        root_access_text.setText("正在 检查ROOT权限")
        app_versions.setText(getVersionName(mContext)+versions(mContext)+mContext.getResources().getString(R.string.is_using_summary))

    }

}
