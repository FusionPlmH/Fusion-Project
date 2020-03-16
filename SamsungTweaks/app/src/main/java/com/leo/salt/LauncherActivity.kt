

package com.fusionleo.salt


import android.Manifest

import android.os.Build
import android.os.Bundle

import android.annotation.SuppressLint
import android.app.Activity
import android.content.Context
import android.content.Intent
import android.graphics.Color
import android.os.Handler
import android.support.annotation.Nullable
import android.support.v4.app.ActivityCompat
import android.support.v4.content.PermissionChecker
import android.view.View
import android.widget.LinearLayout
import com.fusionleo.salt.ui.AboutMenuFragment.getbusybox
import com.fusionleo.salt.utils.AndroidUtils.getVersionName
import com.fusionleo.salt.utils.AndroidUtils.versions
import com.fusionleo.salt.utils.Constants

import com.fusionleo.salt.utils.ktshell.CheckRootStatus
import com.fusionleo.salt.utils.ktshell.ConfigInstaller
import com.fusionleo.salt.utils.ktshell.WriteSettings
import com.fusionleo.salt.utils.root.Helpers.Companion.ClearOTA
import kotlinx.android.synthetic.main.activity_splash.*
import java.io.File
import java.lang.ref.WeakReference

class LauncherActivity : Activity() {


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
        setContentView(R.layout.activity_splash)
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

            busybox_text.setText(getbusybox())
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
        app_versions.setText(getVersionName(this)+versions(this)+this.getResources().getString(R.string.is_using_summary))

    }

}
