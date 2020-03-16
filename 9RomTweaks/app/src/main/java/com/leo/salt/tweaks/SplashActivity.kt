package com.leo.salt.tweaks


import android.Manifest
import android.annotation.SuppressLint
import android.app.Activity
import android.content.Context
import android.content.Intent
import android.graphics.Color
import android.os.Build

import android.os.Bundle


import android.view.View
import com.leo.salt.utils.NetUtils.hasNetWork
import com.leo.salt.utils.PrefUtils.*


import java.lang.ref.WeakReference

import com.leo.salt.utils.PrefUtils.FIRST_OPEN

import android.webkit.WebView
import com.leo.salt.tweaks.resource.Resource.*

import android.view.animation.*
import android.widget.ImageView


import kotlinx.android.synthetic.main.activity_splash.*
import android.view.animation.TranslateAnimation
import android.view.animation.AlphaAnimation
import android.view.animation.AnimationSet
import com.leo.salt.tools.constants.CheckRootStatus
import com.leo.salt.tools.constants.KeepShellPublic
import com.leo.salt.tweaks.view.widget.DialogView.NetworkCheck

class SplashActivity : Activity() {

    private var mLeoROM: ImageView? = null
     var webView: WebView? = null
    @SuppressLint("ResourceType")
    override fun onCreate(savedInstanceState: Bundle?) {
       // setTheme(android.R.style.Theme_Light_NoTitleBar_Fullscreen)
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_splash)
        KeepShellPublic.doCmdSync("pm grant com.leo.salt.tweaks android.permission.WRITE_SECURE_SETTINGS");
        val config = getSharedPreferences(CHARGE_SPF, Context.MODE_PRIVATE)
        if (config.getBoolean(FIRST_OPEN, false) != true) {
            start_contract.visibility = View.VISIBLE
            rom_splash.visibility = View.GONE
            ROMinfo(true);
            webView =findViewById(R.id. HOMEwebView);

            webView = findViewById<View>(R.id.HOMEwebView) as WebView
            val webSettings = webView!!.getSettings()
            webSettings.setJavaScriptEnabled(true)
           // mWebView.addJavascriptInterface(object : Any() {
              //  fun clickOnAndroid() {
               //     mHandler.post(Runnable { mWebView.loadUrl("javascript:wave()") })
              //  }
          //  }, "demo")
            webView!!.loadUrl(LicenseInfo());


            contract_confirm.setOnClickListener {
                start_contract.visibility = View.GONE
                rom_splash.visibility = View.VISIBLE

                    ROMinfo(false);
                    // checkRoot(CheckRootSuccess(this), CheckRootFail(this))
                    config.edit().putBoolean(FIRST_OPEN, true).apply()


            }
            contract_exit.setOnClickListener {

                val intent = Intent()
                intent.setAction(Intent.ACTION_MAIN)
                intent.addCategory(Intent.CATEGORY_HOME)
                startActivity(intent)
            }
        } else {

                start_contract.visibility = View.GONE
                rom_splash.visibility = View.VISIBLE
                ROMinfo(true);

        }

    }

    fun  ROMinfo(show:Boolean){

        if(show){
            val style = 1500
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
                      enterHomeActivity();
;
                    }
                })
            rom_logo.setImageDrawable(getCustomDrawable(this,"leologo"))
            rom_versions.setText(getLeoBuild("ro.build.display.id"))
        }

    }


    private fun enterHomeActivity() {
        if (NetworkCheckDisabled(applicationContext)) {
            checkRoot(CheckRootSuccess(this), CheckRootFail(this))
        } else {
            if (hasNetWork(this) ==0) {
                NetworkCheck(this);
            }else {
                checkRoot(CheckRootSuccess(this), CheckRootFail(this))
            }
        }


    }
    private class CheckRootFail(context:SplashActivity) : Runnable {
        private var context: WeakReference<SplashActivity>;
        override fun run() {
            context.get()!!.next()
        }



        init {
            this.context = WeakReference(context)
        }
    }



private var hasRoot = false

    private fun next() {
        val intent = Intent(this, MainActivity::class.java)
        startActivity(intent)
        finish()
    }

    private class CheckRootSuccess(context:SplashActivity) : Runnable {
        private var context: WeakReference<SplashActivity>;
        override fun run() {
            context.get()!!.next()
            context.get()!!.hasRoot = true


        }

        init {
            this.context = WeakReference(context)
        }
    }

    @SuppressLint("ApplySharedPref", "CommitPrefEdits")
    private fun checkRoot(next: Runnable, skip: Runnable) {
        val globalConfig = getSharedPreferences(GLOBAL_SPF, Context.MODE_PRIVATE)

        val disableSeLinux = globalConfig.getBoolean(GLOBAL_SPF_DISABLE_ENFORCE, false)
        CheckRootStatus(this, next, disableSeLinux).forceGetRoot()
    }

}