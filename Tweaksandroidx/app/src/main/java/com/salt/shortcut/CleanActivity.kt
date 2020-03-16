/*
 * 程序入口Activity，实现一键清理后台进程的功能
 * */
package com.salt.shortcut


import android.app.Activity
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.util.Base64
import android.view.View
import android.view.Window
import android.view.WindowManager
import android.view.animation.Animation
import android.view.animation.AnimationUtils
import android.widget.ImageView
import android.widget.Toast
import com.salt.config.R


import com.salt.script.KeepShellPublic
import com.salt.utils.SaltProper.BuildSecuritycheck


class CleanActivity : Activity() {
    private var mContext: Context? = null
    private var rotateImage: ImageView? = null
    private var animation: Animation? = null
    private var myHandler = Handler()
    public override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val win = window
        win.addFlags(WindowManager.LayoutParams.FLAG_SHOW_WHEN_LOCKED
                or WindowManager.LayoutParams.FLAG_DISMISS_KEYGUARD
                or WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON
                or WindowManager.LayoutParams.FLAG_TURN_SCREEN_ON)
        mContext = this
        hideBottomUIMenu()//

        setContentView(R.layout.activity_clean)
        rotateImage = findViewById<View>(R.id.imageView_rotate) as ImageView

        animation = AnimationUtils.loadAnimation(this@CleanActivity, R.anim.clean_anim)//加载动画
        animation!!.setAnimationListener(object : Animation.AnimationListener {

            override fun onAnimationStart(animation: Animation) {
                if (BuildSecuritycheck()) {

                    val intent = Intent()
                    intent.action = "com.leo.global.action"
                    intent.putExtra(String(Base64.decode("bGVvX2FjdGlvbg==".toByteArray(), Base64.DEFAULT)), 1999)
                    mContext!!.sendBroadcast(intent)
                    Thread(Runnable {
                        KeepShellPublic.doCmdSync("sync\n" +
                                "echo 1 > /proc/sys/vm/compact_memory")
                        KeepShellPublic.doCmdSync("sync\n" +
                                "echo 3 > /proc/sys/vm/drop_caches\n" +
                                "echo 1 > /proc/sys/vm/compact_memory")
                        myHandler.postDelayed({
                            try {

                            } catch (ex: java.lang.Exception) {
                            }
                        }, 1000)
                    }).start()
                } else {
                  //  ToastALL(getApksStringInt(R.string.you_unusable_info))
                }


            }

            override fun onAnimationEnd(animation: Animation) {
                // TODO Auto-generated method stub
                animation.cancel()
                finish()//动画停止后结束当前activity
                android.os.Process.killProcess(android.os.Process.myPid())

                //结束当前程序的进程
            }

            override fun onAnimationRepeat(animation: Animation) {
                // TODO Auto-generated method stub

            }
        })
        rotateImage!!.animation = animation


    }

    protected fun hideBottomUIMenu() {
        if (Build.VERSION.SDK_INT > 11 && Build.VERSION.SDK_INT < 19) {
            val v = this.window.decorView
            v.systemUiVisibility = View.GONE
        } else if (Build.VERSION.SDK_INT >= 19) {
            val decorView = window.decorView
            val uiOptions = (View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                    or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY or View.SYSTEM_UI_FLAG_FULLSCREEN)
            decorView.systemUiVisibility = uiOptions
        }
    }


}