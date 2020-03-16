package com.salt.config.tweaks.activity

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.os.Bundle

import android.view.KeyEvent
import android.view.View
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.widget.Toolbar
import com.google.android.material.appbar.AppBarLayout
import com.salt.config.tweaks.activity.AdapterFileSelector.FileView
import com.salt.base.SaltActivity
import com.salt.config.R
import com.salt.config.view.AppBarStateChangeListener
import com.salt.script.Consts.SDCardDir
import com.salt.utils.SaltProper
import com.salt.widget.ProgressBarDialog


import kotlinx.android.synthetic.main.activity_file_selector.*
import java.io.File

class ActivityFileSelector : SaltActivity() {
    override fun initAppName(): String {
        return SaltProper.getApksStringInt("file_selector_name")
    }

    override fun initData() {

    }

    private var mSubtitle: TextView? = null
    private var mSubtitleLayout: LinearLayout? = null


    override fun initLayout(): Int {
        return R.layout.activity_file_selector
    }

    override fun initAppBarLayout(): Int {
        return R.id.app_bar
    }
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        mToolbar= findViewById(R.id.toolbar) as Toolbar
        mSubtitle= findViewById(R.id.CollapsingToolbarLayoutSubText) as TextView
        intSettings();
        setSupportActionBar(mToolbar)
        intSettings();
        if (intent.extras!!.containsKey("extension")) {
            extension = intent.extras!!.getString("extension")!!
            if (!extension.startsWith(".")) {
                this.extension = ".$extension"
            }
        }
        mSubtitle!!.setText(FileView("file_selector")+"［$extension］")
    }

    fun intSettings(){
        mSubtitleLayout= findViewById(R.id.CollapsingToolbarLayoutText) as LinearLayout
        mAppBarLayout.addOnOffsetChangedListener(object : AppBarStateChangeListener() {
            override fun onStateChanged(appBarLayout: AppBarLayout, state: State) {
                if (state ==State.EXPANDED) {
                    mSubtitleLayout!!.setVisibility(View.VISIBLE);
                } else if (state == State.COLLAPSED) {
                    mSubtitleLayout!!.setVisibility(View.GONE);
                } else {
                    mSubtitleLayout!!.setVisibility(View.VISIBLE);

                }
            }
        })

    }

    private var adapterFileSelector: AdapterFileSelector? = null
    var extension = ""


    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        if (keyCode == KeyEvent.KEYCODE_BACK && adapterFileSelector != null && adapterFileSelector!!.goParent()) {
            return true
        } else {
            setResult(Activity.RESULT_CANCELED, Intent())
        }
        return super.onKeyDown(keyCode, event)
    }

    override fun onResume() {
        super.onResume()
        val sdcard = File(SDCardDir)
        if (sdcard.exists() && sdcard.isDirectory) {
            val list = sdcard.listFiles()
            if (list == null) {
                Toast.makeText(applicationContext, "没有读取文件的权限！", Toast.LENGTH_LONG).show()
                return
            }
            adapterFileSelector = AdapterFileSelector(sdcard, Runnable {
                val file: File? = adapterFileSelector!!.selectedFile
                if (file != null) {
                    this.setResult(Activity.RESULT_OK, android.content.Intent().putExtra("file", file.absolutePath))
                    this.finish()
                }
            }, ProgressBarDialog(this), extension)
            file_selector_list.adapter = adapterFileSelector
        } else {

        }
    }

}
