package com.salt.config.tweaks.activity;

import android.annotation.SuppressLint

import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import android.os.Bundle
import android.os.Handler

import android.util.Log
import android.view.Menu
import android.view.MenuItem
import android.view.View
import android.widget.AdapterView
import android.widget.CheckBox
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.widget.Toolbar
import com.google.android.material.appbar.CollapsingToolbarLayout
import com.salt.base.SaltActivity


import com.salt.config.R

import com.salt.script.DialogHelper
import com.salt.script.FileWrite
import com.salt.script.KeepShell
import com.salt.utils.SaltProper.getApksStringInt
import com.salt.widget.AppListAdapter
import com.salt.widget.AppListHelperHidden
import com.salt.widget.Appinfo
import com.salt.widget.ProgressBarDialog

import kotlinx.android.synthetic.main.activity_hidden_apps.*
import org.w3c.dom.Document
import org.w3c.dom.Element
import java.io.File
import java.io.StringWriter
import java.lang.ref.WeakReference
import java.nio.charset.Charset
import javax.xml.parsers.DocumentBuilderFactory
import javax.xml.transform.TransformerFactory
import javax.xml.transform.dom.DOMSource
import javax.xml.transform.stream.StreamResult


class ActivityHiddenApps : SaltActivity() {
    override fun initAppName(): String {
        return getApksStringInt(R.string.apks_uninstall_titlerestore)
    }

    override fun initData() {
        mToolbar = findViewById<View>(R.id.toolbar) as Toolbar
        setSupportActionBar(mToolbar)
        // setTitle(R.string.app_name)

        // 显示返回按钮
        supportActionBar!!.setHomeButtonEnabled(true)
        supportActionBar!!.setDisplayHomeAsUpEnabled(true)

        mToolbar.setNavigationOnClickListener {
            finish()
        }
        pm = packageManager
        progressBarDialog = ProgressBarDialog(this)
        hidden_app.addHeaderView(this.layoutInflater.inflate(R.layout.app_list_headerview, null))
    }

    override fun initLayout(): Int {
        return R.layout.activity_hidden_apps
    }

    override fun initAppBarLayout(): Int {
        return R.id.app_bar
    }
    private lateinit var progressBarDialog: ProgressBarDialog
    private var adapter: WeakReference<AppListAdapter>? = null
    private val handler = Handler()
    private lateinit var pm: PackageManager
    private val keepShell = KeepShell()

    override fun onDestroy() {
        keepShell.tryExit()
        super.onDestroy()
    }

    override fun onPostResume() {
        super.onPostResume()
        delegate.onPostResume()

    }

    @SuppressLint("ApplySharedPref")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)



    }

    override fun onAttachedToWindow() {
        super.onAttachedToWindow()
        val dir = filesDir
        val uid = dir.parentFile.parentFile.name
        val configPath = "/data/system/users/$uid/package-restrictions.xml"


        DialogHelper.animDialog(AlertDialog.Builder(this).setTitle(R.string.apks_dead_restore_title)
                .setMessage(getApksStringInt(R.string.apks_dead_restore_title_info)+"\n$configPath\n"+getApksStringInt(R.string.apks_dead_restore_title_info1))
                .setPositiveButton(R.string.btn_confirm) { _, _ ->
                }
                .setCancelable(false)
        )
    }

    private fun getAppInfo(it: ApplicationInfo): Appinfo {
        val app = Appinfo()
        app.appName = it.loadLabel(pm)
        app.packageName = it.packageName
        app.enabled = it.enabled
        app.path = it.sourceDir
        return app
    }

    private fun loadData() {
        progressBarDialog.showDialog(getApksStringInt(R.string.apks_dead_state_title))

        Thread {
            // 获得已卸载的应用（包括：隐藏的、卸载的）
            val uninstalledApp = AppListHelperHidden().getUninstalledApp(this)
            val appList = ArrayList<Appinfo>()
            uninstalledApp.forEach {
                // spf.edit().putString(it.packageName, it.loadLabel(pm).toString())
                Log.d("uninstalledApp", "" + it.packageName + "  " + it.sourceDir)

                appList.add(getAppInfo(it))
            }
            handler.post {
                progressBarDialog.hideDialog()
                val adapterObj = AppListAdapter(appList)
                hidden_app.adapter = adapterObj
                adapter = WeakReference(adapterObj)
                hidden_app.onItemClickListener = AdapterView.OnItemClickListener { _, itemView, postion, _ ->
                    if (postion == 0) {
                        val checkBox = itemView.findViewById(R.id.select_state_all) as CheckBox
                        checkBox.isChecked = !checkBox.isChecked
                        if (adapter?.get() != null) {
                            adapter?.get()!!.setSelecteStateAll(checkBox.isChecked)
                            adapter?.get()!!.notifyDataSetChanged()
                        }
                    } else {
                        val checkBox = itemView.findViewById(R.id.select_state) as CheckBox
                        checkBox.isChecked = !checkBox.isChecked
                        val all = hidden_app.findViewById<CheckBox>(R.id.select_state_all)
                        if (adapter?.get() != null) {
                            all.isChecked = adapter?.get()!!.getIsAllSelected()
                        }
                    }
                }
            }
        }.start()
    }

    override fun onResume() {
        super.onResume()
        loadData()
    }

    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        menuInflater.inflate(R.menu.confirm, menu)
        return true
    }

    //右上角菜单
    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        when (item.itemId) {
            R.id.action_confirm -> {
                // 获取选中项
                val items = adapter?.get()!!.getSelectedItems()
                if (items.size > 0) {
                    val cmds = StringBuilder()
                    for (app in items) {
                        cmds.append("pm unhide ${app.packageName}\n")
                        cmds.append("pm enable ${app.packageName}\n")
                    }
                    progressBarDialog.showDialog(getApksStringInt("execute_wait"))
                    Thread {
                        keepShell.doCmdSync(cmds.toString())
                        val hasConfigChange = reInstallAppShell(items)

                        val uninstalledApp = AppListHelperHidden().getUninstalledApp(this)
                        val fail: ArrayList<Appinfo> = ArrayList()
                        for (app in uninstalledApp) {
                            val result = items.filter { it.packageName == app.packageName }
                            if (result.isNotEmpty()) {
                                fail.add(getAppInfo(app))
                            }
                        }

                        handler.post {
                            progressBarDialog.hideDialog()
                            if (fail.size > 0) {
                                val msg = StringBuilder()
                                for (app in fail) {
                                    msg.append(app.appName)
                                    msg.append("\n")
                                }

                                if (hasConfigChange) {
                                    DialogHelper.animDialog(AlertDialog.Builder(this)
                                            .setTitle(R.string.apks_dead_state_title_ins)
                                            .setMessage(msg.toString())
                                            .setPositiveButton(getApksStringInt("reboot_dialog_title")) { _, _ ->
                                                keepShell.doCmdSync("sync\nsleep 2\nreboot")
                                            }
                                            .setNeutralButton(R.string.apks_dead_state_title_xia) { _, _ ->
                                            }
                                            .setCancelable(false))
                                } else {
                                    DialogHelper.helpInfo(this,getApksStringInt(R.string.apks_dead_state_title_xiaa), msg.toString())
                                }

                                if (uninstalledApp.size != items.size) {
                                    loadData()
                                }
                            } else {
                                loadData()
                            }
                        }
                    }.start()
                }
            }
        }
        return super.onOptionsItemSelected(item)
    }

    private fun reInstallAppShell(apps: ArrayList<Appinfo>): Boolean {
        val dir = filesDir
        val uid = dir.parentFile.parentFile.name
        val configPath = "/data/system/users/$uid/package-restrictions.xml"

        val copyPath = FileWrite.getPrivateFilePath(this, "t-package-restrictions.xml")
        var hasChange = false

        if (keepShell.doCmdSync("cp -f $configPath $copyPath\nchmod 777 $copyPath") != "error") {
            val file = File(copyPath)
            if (file.exists()) {
                try {
                    val inputStream = file.inputStream()
                    val factory = DocumentBuilderFactory.newInstance()
                    val builder = factory.newDocumentBuilder()
                    val dom = builder.parse(inputStream)

                    val rootNode = dom.documentElement
                    val pkgs = rootNode.getElementsByTagName("pkg")
                    pkgs?.run {
                        for (pkgIndex in 0 until pkgs.length) {
                            val pkg = pkgs.item(pkgIndex) as Element
                            if (pkg.hasAttribute("name") && pkg.hasAttribute("inst") && pkg.getAttribute("inst") == "false") {
                                val packageName = pkg.getAttribute("name")
                                val result = apps.filter { it.packageName ==  packageName }
                                if (result.isNotEmpty()) {
                                    pkg.setAttribute("inst", "true")
                                    hasChange = true
                                }
                            }
                        }
                    }
                    inputStream.close()
                    if (hasChange) {
                        val os = file.outputStream()
                        val str = documentToString(dom)
                        os.write(str.toByteArray(Charset.defaultCharset()))
                        // (dom as XmlDocument).write(os)
                        os.close()
                        keepShell.doCmdSync("if [[ ! -f $configPath.bak ]]\nthen\ncp $configPath $configPath.bak\nfi\ncp $copyPath $configPath\nchown system:system $configPath\nchmod 664 $configPath")
                    }
                } catch (ex: Exception) {
                    Log.e("reInstallAppShell", "" + ex.message)
                }
            }
        }
        keepShell.doCmdSync("rm -f $copyPath")
        return hasChange
    }


    private fun documentToString(newDoc: Document): String {
        val domSource = DOMSource(newDoc)
        val transformer = TransformerFactory.newInstance().newTransformer()
        val sw = StringWriter()
        val sr = StreamResult(sw)
        transformer.transform(domSource, sr)
        // Log.d("xmlStr", sw.toString())

        return sw.toString()
    }
}
