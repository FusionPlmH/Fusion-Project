package com.salt.config

import android.annotation.SuppressLint
import android.app.Activity
import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.view.View
import android.view.animation.AlphaAnimation
import android.view.animation.Animation
import android.view.animation.AnimationSet
import android.view.animation.TranslateAnimation
import com.salt.frame.LeadFrame.getCustomDrawable
import com.salt.module.shell.CheckRootStatus
import com.salt.module.shell.WriteSettings
import com.salt.script.KeepShellPublic
import com.salt.setting.SaltSetting.*

import com.salt.utils.SaltProper.getLeoBuild
import kotlinx.android.synthetic.main.activity_splash.*
import java.lang.ref.WeakReference


class SplashActivity : Activity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
       setContentView(R.layout.activity_splash)

        val config = getSharedPreferences(CHARGE_SPF, Context.MODE_PRIVATE)
        if (config.getBoolean(FIRST_OPEN, false) != true) {
            LeoCondition()
        } else {
            checkPermissions()
        }
    }
    fun LeoCondition(){
        contract_confirm.setOnClickListener {
            getSharedPreferences(CHARGE_SPF, Context.MODE_PRIVATE).edit().putBoolean(FIRST_OPEN, true).apply()
            checkPermissions()

        }
        contract_exit.setOnClickListener {
            val intent = Intent()
            intent.setAction(Intent.ACTION_MAIN)
            intent.addCategory(Intent.CATEGORY_HOME)
            startActivity(intent)
        }
    }
    fun  ROManimation(){
            val style = 600
            val animationSet = AnimationSet(true)//共用动画补间
            animationSet.duration = style.toLong()
            val translateAnimation = TranslateAnimation(100f, 0f, 100f, 0f)
            translateAnimation.duration = style.toLong()
            animationSet.addAnimation(translateAnimation)
            val alphaAnimation = AlphaAnimation(0.01f, 1.0f)
            alphaAnimation.duration =style.toLong()
            animationSet.addAnimation(alphaAnimation)

       findViewById<View>(R.id.rom_logo).startAnimation(animationSet)
        //渐变过程监听
            animationSet.setAnimationListener(
                object : Animation.AnimationListener {
                    override fun onAnimationStart(animation: Animation) {
                    }

                    override fun onAnimationRepeat(animation: Animation) {
                    }

                    override fun onAnimationEnd(animation: Animation) {
                        starMianActivity()
                    }
                })
            rom_logo.setImageDrawable(getCustomDrawable(this,"leologo"))
            rom_versions.setText(getLeoBuild("ro.build.display.id"))


    }

    private class CheckRootSuccess(context:SplashActivity) : Runnable {
        private var context: WeakReference<SplashActivity>;
        override fun run() {
            context.get()!!.ROManimation()
            context.get()!!.hasRoot = true
            context.get()!!.checkSystemPermission()

        }
        init {
            this.context = WeakReference(context)
        }
    }
    private fun checkPermissions() {
        start_contract.visibility = View.GONE
        checkRoot(CheckRootSuccess(this), CheckRootFail(this))

    }

    private class CheckRootFail(context:SplashActivity) : Runnable {
        private var context: WeakReference<SplashActivity>;
        override fun run() {
            context.get()!!.ROManimation()
        }
        init {
            this.context = WeakReference(context)

        }
    }
    private fun checkRoot(next: Runnable, skip: Runnable) {
        val globalConfig = getSharedPreferences(GLOBAL_SPF, Context.MODE_PRIVATE)
        val disableSeLinux = globalConfig.getBoolean(GLOBAL_SPF_DISABLE_ENFORCE, false)
        CheckRootStatus(this, next, disableSeLinux).forceGetRoot()
    }
    private fun checkSystemPermission() {
        Thread(Runnable {
            CheckRootStatus.grantPermission(this)
            mHandler.post {
                val writeSettings = WriteSettings()
                if (!writeSettings.getPermission(applicationContext)) {
                    writeSettings.setPermission(applicationContext)

                }
            }
        }).start()
    }
    private var mHandler = Handler()
    private var hasRoot = false

    @SuppressLint("ApplySharedPref", "CommitPrefEdits")

    private fun starMianActivity() {

        val intent = Intent(this.applicationContext, MainActivity::class.java)
        startActivity(intent)
       finish()
    }
}

