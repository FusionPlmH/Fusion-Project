package com.leo.global.tweaks

import android.annotation.SuppressLint
import android.app.Activity
import android.app.AlertDialog
import android.app.Dialog
import android.content.Context
import android.content.DialogInterface
import android.content.Intent
import android.content.SharedPreferences
import android.graphics.Color
import android.graphics.Typeface
import android.graphics.drawable.Drawable
import android.graphics.drawable.GradientDrawable
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.support.v7.app.AppCompatActivity
import android.view.View
import android.view.Window
import android.view.WindowManager
import android.widget.ImageView
import android.widget.RelativeLayout
import android.widget.TextView

import com.leo.global.tweaks.LeoAmberApplication.getContext
import com.leo.global.utils.Build.getLeoBuild
import com.leo.global.utils.Constants
import com.leo.global.utils.kotlin.*

class WelcomeActivity : AppCompatActivity() {
    private var mBSplash: View?= null
    private var mSplashLogo: ImageView? = null
    private var mSplashName: TextView? = null
    private var mSplashHttp: TextView? = null
    private var LeoGradientDrawable = GradientDrawable()
    private var mHasRoot =false
   var Root =false
     lateinit var mContext: Context
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        requestWindowFeature(Window.FEATURE_NO_TITLE)
        window.setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN)
        if (Build.VERSION.SDK_INT > 11 && Build.VERSION.SDK_INT < 19) {
            val v = this.window.decorView
            v.systemUiVisibility = View.GONE
        } else if (Build.VERSION.SDK_INT >= 19) {
            val decorView = window.decorView
            val uiOptions = (View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                    or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY or View.SYSTEM_UI_FLAG_FULLSCREEN)
            decorView.systemUiVisibility = uiOptions
        }
        mContext = getContext()
        setContentView(R.layout.activity_splash)
        Home()
      //  HomeActivity()
        if(Root ){
            RootActivity();
        }else{
            Handler().postDelayed({
                HomeActivity()
            }, 1000)
        }



    }

    private fun Home() {
        mBSplash = findViewById(R.id.background_splash)
        val BackgroundGradientColor: IntArray
        BackgroundGradientColor = IntArray(3)
        BackgroundGradientColor[0] = mContext.getColor(R.color.splashcolor1)
        BackgroundGradientColor[1] = mContext.getColor(R.color.splashcolor2)
        BackgroundGradientColor[2] = mContext.getColor(R.color.splashcolor)
        LeoGradientDrawable = GradientDrawable(GradientDrawable.Orientation.BR_TL, BackgroundGradientColor)
        LeoGradientDrawable.alpha = 242
        mBSplash!!.setBackground(LeoGradientDrawable)
        mSplashLogo = findViewById(R.id.logo_splash)

        mSplashLogo!!.setImageDrawable(com.leo.global.utils.Build.getCustomDrawable(mContext, "leologo", "drawable"))
        mSplashName = findViewById(R.id.name_splash)
        mSplashName!!.text = getLeoBuild("ro.build.display.id")
        mSplashName!!.textSize = 25f
        mSplashName!!.typeface = Typeface.DEFAULT_BOLD
        mSplashName!!.setTextColor(Color.WHITE)
        mSplashHttp = findViewById(R.id.http_splash)
        mSplashHttp!!.text = "www.leorom.cc"
        mSplashHttp!!.textSize = 18f
        mSplashHttp!!.typeface = Typeface.DEFAULT_BOLD
        mSplashHttp!!.setTextColor(Color.WHITE)

    }

    private fun HomeActivity() {
        val intent = Intent(this@WelcomeActivity, MainActivity::class.java)
        startActivity(intent)
        finish()
    }
    private fun RootActivity() {
        checkRoot(Runnable {
            mHasRoot = true

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
    }
    @SuppressLint("ApplySharedPref", "CommitPrefEdits")
    private fun checkRoot(next: Runnable, skip: Runnable) {
        val globalConfig = getSharedPreferences(Constants.GLOBAL_SPF, Context.MODE_PRIVATE)
        val disableSeLinux = globalConfig.getBoolean(Constants.GLOBAL_SPF_DISABLE_ENFORCE, true)
        CheckRootStatus(this, next, skip, disableSeLinux).forceGetRoot()

    }

}
