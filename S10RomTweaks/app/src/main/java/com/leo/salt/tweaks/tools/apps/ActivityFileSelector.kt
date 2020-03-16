package com.leo.salt.tools.apps

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.support.design.widget.AppBarLayout
import android.support.v7.app.AppCompatActivity
import android.support.v7.widget.Toolbar
import android.view.KeyEvent
import android.view.View
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast
import com.leo.salt.tweaks.R
import com.leo.salt.tweaks.base.AppBarStateChangeListener
import com.leo.salt.tweaks.base.BaseCollapsingToolbarActivity
import com.leo.salt.tweaks.view.AdapterFileSelector
import com.leo.salt.tweaks.view.AdapterFileSelector.FileView
import com.leo.salt.tweaks.view.widget.ProgressBarDialog
import com.leo.salt.utils.Consts
import com.leo.salt.utils.Consts.SDCardDir
import com.leo.salt.utils.PrefUtils.GLOBAL_SPF
import com.leo.salt.utils.PrefUtils.GLOBAL_SPF_NIGHT_MODE


import kotlinx.android.synthetic.main.activity_file_selector.*
import java.io.File

class ActivityFileSelector : BaseCollapsingToolbarActivity() {
    private var mSubtitle: TextView? = null
    private var mSubtitleLayout: LinearLayout? = null
    override fun initCollapsingTextText(): String {
        return "file_selector_name"
    }

    override fun initLayout(): Int {
        return R.layout.activity_file_selector
    }

    override fun initAppBarLayout(): Int {
        return R.id.app_bar
    }

    fun intSettings(){
        mSubtitleLayout= findViewById(R.id.CollapsingToolbarLayoutText) as LinearLayout
        mAppBarLayout.addOnOffsetChangedListener(object : AppBarStateChangeListener() {
            override fun onStateChanged(appBarLayout: AppBarLayout, state: AppBarStateChangeListener.State) {
                if (state == AppBarStateChangeListener.State.EXPANDED) {


                    mSubtitleLayout!!.setVisibility(View.VISIBLE);
                } else if (state == AppBarStateChangeListener.State.COLLAPSED) {
                    mSubtitleLayout!!.setVisibility(View.GONE);
                } else {
                    mSubtitleLayout!!.setVisibility(View.VISIBLE);

                }
            }
        })

    }

    private var adapterFileSelector: AdapterFileSelector? = null
    var extension = ""
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        toolbar = findViewById(R.id.toolbar) as Toolbar
        mSubtitle= findViewById(R.id.CollapsingToolbarLayoutSubText) as TextView
        intSettings();
        setSupportActionBar(toolbar)
        if (intent.extras.containsKey("extension")) {
            extension = intent.extras.getString("extension")
            if (!extension.startsWith(".")) {
                this.extension = ".$extension"
            }
        }
        // this.title = this.title.toString() + "($extension)"
        mSubtitle!!.setText(FileView("file_selector")+"［$extension］")
    }

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
