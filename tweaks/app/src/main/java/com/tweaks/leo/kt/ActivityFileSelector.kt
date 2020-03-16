package com.tweaks.leo.kt

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import android.support.v7.widget.Toolbar
import android.view.KeyEvent
import android.widget.Toast



import com.tweaks.leo.R

import com.tweaks.leo.ui.list.AdapterFileSelector
import com.tweaks.leo.utils.Constants.GLOBAL_SPF
import com.tweaks.leo.utils.Constants.GLOBAL_SPF_NIGHT_MODE
import com.tweaks.leo.utils.ktshell.Consts
import kotlinx.android.synthetic.main.activity_file_selector.*
import java.io.File

class ActivityFileSelector : AppCompatActivity() {


    private var adapterFileSelector: AdapterFileSelector? = null
    var extension = ""
    override fun onCreate(savedInstanceState: Bundle?) {
        val spf = getSharedPreferences(GLOBAL_SPF, Context.MODE_PRIVATE)
        if (spf.getBoolean(GLOBAL_SPF_NIGHT_MODE, false))
            setTheme(R.style.MyDialogStyle)
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_file_selector)
        val toolbar = findViewById(R.id.toolbar) as Toolbar
        setSupportActionBar(toolbar)
        if (intent.extras.containsKey("extension")) {
            extension = intent.extras.getString("extension")
            if (!extension.startsWith(".")) {
                this.extension = ".$extension"
            }
        }
        this.title = this.title.toString() + "($extension)"
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
        val sdcard = File(Consts.SDCardDir)
        if (sdcard.exists() && sdcard.isDirectory) {
            val list = sdcard.listFiles()
            if (list == null) {
                Toast.makeText(this, "没有读取文件的权限！", Toast.LENGTH_LONG).show()
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
