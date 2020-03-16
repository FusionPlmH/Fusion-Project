package com.salt.module


import android.annotation.SuppressLint
import android.app.Activity

import android.content.Intent
import android.graphics.Typeface
import android.os.Bundle
import android.os.Environment
import android.os.StatFs
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.fragment.app.Fragment
import com.google.android.material.snackbar.Snackbar



import com.salt.module.shell.BackupRestoreUnit
import com.salt.config.R
import com.salt.config.tweaks.activity.ActivityFileSelector
import com.salt.script.Consts
import com.salt.script.DialogHelper

import java.io.File

import com.salt.utils.FileUtils.createSDCardImg
import com.salt.utils.SaltProper.*
import org.salt.preference.colorpicker.Utils.getColorAttr




class MirrorFragment : Fragment(), View.OnClickListener {
    private var mBackupRestore: BackupRestoreUnit? = null
    private var mView: View? = null
    private var mBootTitle: TextView? = null
    private var mRecoveryTitle: TextView? = null
    private var mEfsTitle: TextView? = null
    private var mBootState: TextView? = null
    private var mBootPath: TextView? = null
    private var mBootBackups: Button? = null
    private var mBootRestore: Button? = null
    private var mRecoveryState: TextView? = null
    private var mRecoveryPath: TextView? = null
    private var mRecoveryBackups: Button? = null
    private var mRecoveryRestore: Button? = null
    private var mEFSState: TextView? = null
    private var mEFSPath: TextView? = null
    private var mEFSBackups: Button? = null
    private var mEFSRestore: Button? = null
    var BOOTPATH="${Consts.SDCardDirImg}/boot.img"
    var RECOVERYPATH="${Consts.SDCardDirImg}/recovery.img"
    var EFSPATH="${Consts.SDCardDirImg}/efs.img"
    //获取SD卡可用空间
    fun GetSDFreeSizeMB(): Long {
        val stat = StatFs(Environment.getDataDirectory().path)
        return stat.availableBytes / 1024 / 1024 //剩余空间
    }


    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? {
        mView = inflater.inflate(R.layout.fragment_mirror, container, false)
        createSDCardImg()
        mBackupRestore = BackupRestoreUnit(activity!!)
        intView()
        return mView
    }

    fun intView() {
        mBootTitle = mView!!.findViewById<View>(R.id.boot_title) as TextView
        mBootTitle!!.setText("Boot"+getApksStringInt(R.string.partition_name))
        mRecoveryTitle = mView!!.findViewById<View>(R.id.recovery_title) as TextView
        mRecoveryTitle!!.setText("Recovery"+getApksStringInt(R.string.partition_name))
        mEfsTitle = mView!!.findViewById<View>(R.id.efs_title) as TextView
        mEfsTitle!!.setText("EFS"+getApksStringInt(R.string.partition_name))
        mBootState = mView!!.findViewById<View>(R.id.boot_state) as TextView
        mBootPath = mView!!.findViewById<View>(R.id.boot_info) as TextView
        mBootBackups = mView!!.findViewById<View>(R.id.boot_backups) as Button
        mBootBackups!!.setOnClickListener(this)
        mBootRestore = mView!!.findViewById<View>(R.id.boot_restore) as Button
        mBootRestore!!.setOnClickListener(this)
        Serviceboot()
        mRecoveryState = mView!!.findViewById<View>(R.id.recovery_state) as TextView
        mRecoveryPath = mView!!.findViewById<View>(R.id.recovery_info) as TextView
        mRecoveryBackups = mView!!.findViewById<View>(R.id.recovery_backups) as Button
        mRecoveryBackups!!.setOnClickListener(this)
        mRecoveryRestore = mView!!.findViewById<View>(R.id.recovery_restore) as Button
        mRecoveryRestore!!.setOnClickListener(this)
        ServiceRecovery()
        mEFSState = mView!!.findViewById<View>(R.id.efs_state) as TextView
        mEFSPath = mView!!.findViewById<View>(R.id.efs_info) as TextView
        mEFSBackups = mView!!.findViewById<View>(R.id.efs_backups) as Button
        mEFSBackups!!.setOnClickListener(this)
        mEFSRestore = mView!!.findViewById<View>(R.id.efs_restore) as Button
        mEFSRestore!!.setOnClickListener(this)
        ServiceEFS()
    }

    fun  Serviceboot() {
        val path = BOOTPATH
        val path1 = File(path)
        if (path1.exists()) {
            mBootState!!.text = getApksStringInt(R.string.have_backup)
            mBootPath!!.text =  getApksStringInt(R.string.backup_succeed)+"$path"
            mBootPath!!.setVisibility(View.VISIBLE)
            mBootPath!!.setTextColor(getColorInt(R.color.pretty))
            mBootState!!.setTextColor(getColorAttr(activity!!, R.attr.colorAccent))
        }
    }
    fun  ServiceRecovery() {
        val path =RECOVERYPATH
        val path1 = File(path)
        if (path1.exists()) {
            mRecoveryState!!.text = getApksStringInt(R.string.have_backup)
            mRecoveryPath!!.text =  getApksStringInt(R.string.backup_succeed)+"$path"
            mRecoveryPath!!.setVisibility(View.VISIBLE)
            mRecoveryPath!!.setTextColor(getColorInt(R.color.pretty))
            mRecoveryState!!.setTextColor(getColorAttr(activity!!, R.attr.colorAccent))
        }
    }
    fun  ServiceEFS() {
        val path =EFSPATH
        val path1 = File(path)
        if (path1.exists()) {
            mEFSState!!.text =getApksStringInt(R.string.have_backup)
            mEFSPath!!.text =  getApksStringInt(R.string.backup_succeed)+"$path"
            mEFSPath!!.setVisibility(View.VISIBLE)
            mEFSPath!!.setTextColor(getColorInt(R.color.pretty))
            mEFSState!!.setTextColor(getColorAttr(activity!!, R.attr.colorAccent))
        }
    }
    override fun onClick(view: View) {
        val ids = view.id
        when (ids) {
            R.id.boot_backups -> {
                if (GetSDFreeSizeMB() < 100) {
                    Snackbar.make(view, getApksStringInt("backup_space_small"), Snackbar.LENGTH_LONG).show()
                    return
                }
                if (File(BOOTPATH).exists()) {
                    DialogHelper.animDialog(AlertDialog.Builder(view.context)
                            .setCancelable(false)
                            .setTitle(getApksStringInt("backup_file_exists"))
                            .setMessage(BOOTPATH+getApksStringInt("backup_file_repea"))
                            .setPositiveButton(android.R.string.ok, { _, _ ->
                                mBackupRestore!!.SaveBoot()
                                Serviceboot()
                            })
                            .setNegativeButton(android.R.string.cancel, { _, _ ->
                            }))

                } else {
                    //导出boot
                    mBackupRestore!!.SaveBoot()
                    mBootState!!.text = getApksStringInt(R.string.have_backup)
                    mBootPath!!.text =  getApksStringInt(R.string.backup_succeed)+"$BOOTPATH"
                    mBootPath!!.setVisibility(View.VISIBLE)
                    mBootPath!!.setTextColor(getColorInt(R.color.pretty))
                    mBootState!!.setTextColor(getColorAttr(activity!!, R.attr.colorAccent))
                }

            }
            R.id.recovery_backups -> {
                if (GetSDFreeSizeMB() < 100) {
                    Snackbar.make(view, getApksStringInt("backup_space_small"), Snackbar.LENGTH_LONG).show()
                    return
                }
                if (File(RECOVERYPATH).exists()) {
                    DialogHelper.animDialog(AlertDialog.Builder(view.context)
                            .setCancelable(false)
                            .setTitle(getApksStringInt("backup_file_exists"))
                            .setMessage(BOOTPATH+getApksStringInt("backup_file_repea"))
                            .setPositiveButton(android.R.string.ok, { _, _ ->
                                mBackupRestore!!.SaveRecovery()
                                ServiceRecovery()
                            })
                            .setNegativeButton(android.R.string.cancel, { _, _ ->
                            }))

                } else {
                    //导出boot
                    mBackupRestore!!.SaveRecovery()
                    mRecoveryState!!.text =getApksStringInt(R.string.have_backup)
                    mRecoveryPath!!.text =  getApksStringInt(R.string.backup_succeed)+"$RECOVERYPATH"
                    mRecoveryPath!!.setVisibility(View.VISIBLE)
                    mRecoveryPath!!.setTextColor(getColorInt(R.color.pretty))
                    mRecoveryState!!.setTextColor(getColorAttr(activity!!, R.attr.colorAccent))
                }

            }
            R.id.efs_backups -> {
                if (GetSDFreeSizeMB() < 100) {
                    Snackbar.make(view, getApksStringInt("backup_space_small"), Snackbar.LENGTH_LONG).show()
                    return
                }
                if (File(EFSPATH).exists()) {
                    DialogHelper.animDialog(AlertDialog.Builder(view.context)
                            .setCancelable(false)
                            .setTitle(getApksStringInt("backup_file_exists"))
                            .setMessage(BOOTPATH+getApksStringInt("backup_file_repea"))
                            .setPositiveButton(android.R.string.ok, { _, _ ->
                                mBackupRestore!!.SaveEFS()
                                ServiceEFS()
                            })
                            .setNegativeButton(android.R.string.cancel, { _, _ ->
                            }))

                } else {
                    //导出boot
                    mBackupRestore!!.SaveEFS()
                    mEFSState!!.text = getApksStringInt(R.string.have_backup)
                    mEFSPath!!.text = getApksStringInt(R.string.backup_succeed)+"$EFSPATH"
                    mEFSPath!!.setVisibility(View.VISIBLE)
                    mEFSPath!!.setTextColor(getColorInt(R.color.pretty))
                    mEFSState!!.setTextColor(getColorAttr(activity!!, R.attr.colorAccent))
                }

            }
            R.id.boot_restore -> {
                val intent = Intent(this.context, ActivityFileSelector::class.java)
                intent.putExtra("extension", "img")
                startActivityForResult(intent, BOOT_IMG_SELECTOR)
            }
            R.id.recovery_restore -> {
                val intent = Intent(this.context, ActivityFileSelector::class.java)
                intent.putExtra("extension", "img")
                startActivityForResult(intent, RECOVERY_IMG_SELECTOR)
            }
            R.id.efs_restore -> {
                val intent = Intent(this.context, ActivityFileSelector::class.java)
                intent.putExtra("extension", "img")
                startActivityForResult(intent, EFS_IMG_SELECTOR)
            }
        }
    }


    val BOOT_IMG_SELECTOR = 0
    val RECOVERY_IMG_SELECTOR = 1
    val EFS_IMG_SELECTOR = 2
    @SuppressLint("ResourceType")
    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == RECOVERY_IMG_SELECTOR) {
            if (resultCode == Activity.RESULT_OK && data != null && data.extras!!.containsKey("file")) {
                val path = data.extras!!.getString("file")
                //刷入recovery
                if (File(path).exists()) {
                    DialogHelper.animDialog(AlertDialog.Builder(context!!)
                            .setCancelable(false)
                            .setTitle(getApksStringInt("flash_confirm"))
                            .setMessage(getApksStringInt("flash_hint")+"${path}"+getApksStringInt("flash_rec"))
                            .setPositiveButton(android.R.string.ok, { _, _ ->
                                mBackupRestore!!.FlashRecovery(path!!)
                            })
                            .setNegativeButton(android.R.string.cancel, { _, _ ->
                            }))

                } else {
                    Toast.makeText(context!!, "所选的文件没找到！", Toast.LENGTH_SHORT).show()
                }
            }
        } else if (requestCode == BOOT_IMG_SELECTOR) {
            if (resultCode == Activity.RESULT_OK && data != null && data.extras!!.containsKey("file")) {
                val path = data.extras!!.getString("file")
                //刷入recovery
                if (File(path).exists()) {
                    DialogHelper.animDialog(AlertDialog.Builder(context!!)
                            .setCancelable(false)
                            .setTitle(getApksStringInt("flash_confirm"))
                            .setMessage(getApksStringInt("flash_hint")+"${path}"+getApksStringInt("flash_boot"))
                            .setPositiveButton(android.R.string.ok, { _, _ ->
                                mBackupRestore!!.FlashBoot(path!!)
                            })
                            .setNegativeButton(android.R.string.cancel, { _, _ ->
                            }))

                }
            }
        } else if (requestCode == EFS_IMG_SELECTOR) {
            if (resultCode == Activity.RESULT_OK && data != null && data.extras!!.containsKey("file")) {
                val path = data.extras!!.getString("file")
                if (File(path).exists()) {
                    DialogHelper.animDialog(AlertDialog.Builder(context!!)
                            .setCancelable(false)
                            .setTitle(getApksStringInt("flash_confirm"))
                            .setMessage(getApksStringInt("flash_hint")+"${path}"+getApksStringInt("flash_efs"))
                            .setPositiveButton(android.R.string.ok, { _, _ ->
                                mBackupRestore!!.FlashEFS(path!!)
                            })
                            .setNegativeButton(android.R.string.cancel, { _, _ ->
                            }))

                }
            }
        }
    }
}
