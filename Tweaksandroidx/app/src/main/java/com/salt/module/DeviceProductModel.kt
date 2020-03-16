package com.salt.module

import android.annotation.SuppressLint

import android.content.Context
import android.view.LayoutInflater
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import com.salt.config.R
import com.salt.script.Consts.BACKUP_DEVICE
import com.salt.script.Consts.BACKUP_FLAVOR
import com.salt.script.Consts.BACKUP_MODEL
import com.salt.script.Consts.BACKUP_NAME
import com.salt.script.Consts.BACKUP_PRODUCT
import com.salt.script.Consts.BACKUP_SUCCESS
import com.salt.script.Consts.MountSystemRW
import com.salt.script.Consts.RO_DEVICE
import com.salt.script.Consts.RO_FLAVOR
import com.salt.script.Consts.RO_MODEL

import com.salt.script.Consts.RO_PRODUCT
import com.salt.script.Consts.RO_PRODUCTNAME
import com.salt.script.Consts.getProp
import com.salt.script.Consts.setPorp

import com.salt.script.DialogHelper
import com.salt.script.KeepShellPublic
import com.salt.script.MagiskExtend
import com.salt.utils.SaltProper.getApksStringInt
import com.salt.utils.utils.REboot
import com.salt.widget.DialogView.GlobaInfo
import com.salt.widget.DialogView.ScriptsLogClear

class DeviceProductModel(var context: Context) {
    private fun getBackupProp(prop: String, default: String): String {
        val value = getProp(prop)
        if (value == "null" || value == "") {
            return default
        }
        return value
    }

    fun DeviceProductModelInfo() {
       // SM-G9730@beyond1qltechn@beyond1qltezc@beyond1q@beyond1qltezc-user
        val layoutInflater = LayoutInflater.from(context)
        val dialog = layoutInflater.inflate(R.layout.dialog_device_model, null)
        mEditModel = dialog.findViewById(R.id.dialog_addin_model) as EditText
        mEditProduct = dialog.findViewById(R.id.dialog_addin_brand) as EditText
        mEditProductName= dialog.findViewById(R.id.dialog_addin_name) as EditText
        mEditDevice = dialog.findViewById(R.id.dialog_addin_device) as EditText
        mEditFlavor = dialog.findViewById(R.id.dialog_addin_manufacturer) as EditText
        getHinit()
        (dialog.findViewById(R.id.dialog_choose_value) as TextView).setOnClickListener {
            templateChooser()
        }
        (dialog.findViewById(R.id.dialog_default_value) as TextView).setOnClickListener {
            setDefault()
        }

        DialogHelper.animDialog(AlertDialog.Builder(context)
                .setView(dialog).setTitle(getApksStringInt(R.string.model_mod)).setPositiveButton(getApksStringInt(R.string.ro_product_model_save)) { _, _ ->
                    val model = mEditModel.text.trim()
                    val product =mEditProduct.text.trim()
                    val productname = mEditProductName.text.trim()
                    val device =mEditDevice.text.trim()
                    val flavor = mEditFlavor.text.trim()
                    if (model.isNotEmpty() || product.isNotEmpty() || productname.isNotEmpty() || device.isNotEmpty() || flavor.isNotEmpty()) {
                        backupDefault()
                        if (MagiskExtend.moduleInstalled()) {
                            if (product.isNotEmpty())
                              MagiskExtend.setSystemProp(RO_MODEL, model.toString())
                            if (product.isNotEmpty())
                              MagiskExtend.setSystemProp(RO_PRODUCT, product.toString())
                            if (productname.isNotEmpty())
                                MagiskExtend.setSystemProp(RO_PRODUCTNAME,productname.toString())
                            if (device.isNotEmpty())
                               MagiskExtend.setSystemProp(RO_DEVICE, device.toString())
                            if (flavor.isNotEmpty())
                                MagiskExtend.setSystemProp(RO_FLAVOR,flavor.toString())
                        } else {
                            val sb = StringBuilder()
                            sb.append(MountSystemRW)

                            var sharedferences = context.getSharedPreferences("FirstRun", 0)
                            var first_run: Boolean? = sharedferences.getBoolean("First", true)
                            if (first_run!!) {
                                sharedferences.edit().putBoolean("First", false).commit();
                                sb.append("cp /system/build.prop /sdcard/LeoTweaks/backups/build.bak.prop;")
                            } else {
                            }
                            sb.append("cp /system/build.prop /data/build.prop;chmod 0755 /data/build.prop;")
                            if (model.isNotEmpty())
                                sb.append("busybox sed -i 's/^ro.product.model=.*/ro.product.model=$model/' /data/build.prop;")
                            if (product.isNotEmpty())
                                sb.append("busybox sed -i 's/^ro.build.product=.*/ro.build.product=$product/' /data/build.prop;")
                            if (productname.isNotEmpty())
                                sb.append("busybox sed -i 's/^ro.product.name=.*/ro.product.name=$productname/' /data/build.prop;")
                            if (device.isNotEmpty())
                                sb.append("busybox sed -i 's/^ro.product.device=.*/ro.product.device=$device/' /data/build.prop;")
                            if (flavor.isNotEmpty())
                                sb.append("busybox sed -i 's/^ro.build.flavor=.*/ro.build.flavor=$flavor/' /data/build.prop;")
                            sb.append("cp /system/build.prop /system/build.bak.prop\n")
                            sb.append("cp /data/build.prop /system/build.prop\n")
                            sb.append("rm /data/build.prop\n")
                            sb.append("chmod 0644 /system/build.prop\n")
                            sb.append("sync\n")
                            KeepShellPublic.doCmdSync(sb.toString())
                         //   RestartDialog(context,getApksStringInt(R.string.succeed),getApksStringInt(R.string.ro_product_model_reboot))
                        }
                    } else {
                        Toast.makeText(context, getApksStringInt(R.string.ro_product_model_info_no), Toast.LENGTH_SHORT).show()
                    }
                }.setNegativeButton(getApksStringInt("leo_slide_meun_help")) { _, _ ->
                    val btAlipayFreeDrawable = context.getResources().getDrawable(R.drawable.ic_info_icon)
                    GlobaInfo(context,getApksStringInt(R.string.alert_info_tltie),getApksStringInt(R.string.dialog_device_model_info), btAlipayFreeDrawable)
                }.setNeutralButton(getApksStringInt(R.string.ro_product_model_initial_value)){_, _ ->
                    InitialValue()
                })
        loadCurrent()
       
    }


    private fun splitCodeStr(codeStr: String) {
        if (Regex("^.*@.*@.*@.*@.*\$").matches(codeStr)) {
            val deviceInfos = codeStr.split("@")
            mEditModel.setText(deviceInfos[0])
            mEditProduct.setText(deviceInfos[1])
            mEditProductName.setText(deviceInfos[2])
            mEditDevice.setText(deviceInfos[3])
            mEditFlavor.setText(deviceInfos[4])

        }
    }


    private lateinit var mEditModel: EditText
    private lateinit var mEditProduct: EditText
    private lateinit var mEditProductName: EditText
    private lateinit var mEditDevice: EditText
    private lateinit var mEditFlavor: EditText

  private fun getHinit(){
      mEditModel.setHint(getProp(RO_MODEL))
      mEditProduct.setHint(getProp(RO_PRODUCT))
      mEditProductName.setHint(getProp(RO_PRODUCTNAME))
      mEditDevice.setHint(getProp(RO_DEVICE))
      mEditFlavor.setHint(getProp(RO_FLAVOR))

  }
    private fun loadCurrent() {
        if (getBackupProp(BACKUP_SUCCESS, "false") != "true") {
            return
        } else {
            mEditModel.setText(getProp(RO_MODEL))
            mEditProduct.setText(getProp(RO_PRODUCT))
            mEditProductName.setText(getProp(RO_PRODUCTNAME))
            mEditDevice.setText(getProp(RO_DEVICE))
            mEditFlavor.setText(getProp(RO_FLAVOR))

        }
    }

    private fun setDefault() {
        if (getBackupProp(BACKUP_SUCCESS, "false") != "true") {

            mEditModel.setText(getProp(RO_MODEL))
            mEditProduct.setText(getProp(RO_PRODUCT))
            mEditProductName.setText(getProp(RO_PRODUCTNAME))
            mEditDevice.setText(getProp(RO_DEVICE))
            mEditFlavor.setText(getProp(RO_FLAVOR))

        } else {
            mEditModel.setText(getBackupProp(BACKUP_PRODUCT, getProp(RO_MODEL)))
            mEditProduct.setText(getBackupProp(BACKUP_MODEL, getProp(RO_PRODUCT)))
            mEditProductName.setText(getBackupProp(BACKUP_NAME, getProp(RO_PRODUCTNAME)))
            mEditDevice.setText(getBackupProp(BACKUP_DEVICE, getProp(RO_DEVICE)))
            mEditFlavor.setText(getBackupProp(BACKUP_FLAVOR, getProp(RO_FLAVOR)))

        }
    }

    @SuppressLint("ApplySharedPref")
    private fun backupDefault() {
        if (getBackupProp(BACKUP_SUCCESS, "false") != "true") {
           setPorp(BACKUP_MODEL, getProp(RO_MODEL))
           setPorp(BACKUP_PRODUCT, getProp(RO_PRODUCT))
            setPorp(BACKUP_NAME, getProp(RO_PRODUCTNAME))
            setPorp(BACKUP_DEVICE, getProp(RO_DEVICE))
            setPorp(BACKUP_FLAVOR, getProp(RO_FLAVOR))
           setPorp(BACKUP_SUCCESS, "true")
        }
    }
    private fun onRebootDialog() {
        DialogHelper.animDialog(AlertDialog.Builder(context)
                .setIcon(R.drawable.ic_info_icon)
                .setTitle(getApksStringInt(R.string.ro_product_model_initial_value))
                .setMessage(R.string.ro_product_model_recover)
                .setPositiveButton(android.R.string.ok, { dialog, which ->
                    ScriptsLogClear(context, REboot(), 500)
                })
                .show()
        )
    }
    private fun InitialValue() {
        DialogHelper.animDialog(AlertDialog.Builder(context)
                .setIcon(R.drawable.ic_info_icon)
                .setTitle(getApksStringInt(R.string.ro_product_model_initial_value))
                .setMessage(R.string.ro_product_model_recover)
                .setPositiveButton(android.R.string.ok, { dialog, which ->
                    val sb = StringBuilder()
                    sb.append(MountSystemRW)
                    sb.append("cp /sdcard/LeoTweaks/backups/build.bak.prop /system/build.prop\n")
                    sb.append("chmod 0644 /system/build.prop\n")
                    sb.append("sync\n")
                    KeepShellPublic.doCmdSync(sb.toString())
                    onRebootDialog()
                })
                .setNegativeButton(android.R.string.cancel, null)
                .show()
        )


    }
    private fun templateChooser() {
        var index = 0;
        DialogHelper.animDialog(AlertDialog.Builder(context)
                .setTitle(getApksStringInt(R.string.ro_product_model_preset_value))
                .setSingleChoiceItems(R.array.device_templates, index) { dialog, which ->
                    index = which
                }
                .setPositiveButton(R.string.btn_confirm) { dialog, which ->
                    val codeStr = context.resources.getStringArray(R.array.device_templates_data)[index]
                    splitCodeStr(codeStr)
                })
    }
}
