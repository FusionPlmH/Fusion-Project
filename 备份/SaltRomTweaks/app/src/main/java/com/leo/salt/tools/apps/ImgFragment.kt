package com.leo.salt.tools.apps

import android.annotation.SuppressLint
import android.app.Activity

import android.content.Intent
import android.content.res.Resources
import android.os.Bundle
import android.os.Environment
import android.os.Handler
import android.os.StatFs
import android.support.design.widget.Snackbar
import android.app.Fragment

import android.app.AlertDialog
import android.content.DialogInterface
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.AdapterView
import android.widget.SimpleAdapter
import android.widget.Toast
import com.leo.salt.tools.constants.BackupRestoreUnit
import com.leo.salt.tweaks.R
import com.leo.salt.tweaks.resource.Resource
import com.leo.salt.tweaks.resource.Resource.createSDCardDirimg
import com.leo.salt.tweaks.resource.Resource.getCustomArray
import com.leo.salt.tweaks.view.widget.DialogView
import com.leo.salt.utils.Consts


import kotlinx.android.synthetic.main.img_layout.*
import java.io.File
import java.util.*

@SuppressLint("NewApi")
class ImgFragment : Fragment() {
    fun createItem(title: String, desc: String): HashMap<String, Any> {
        val item = HashMap<String, Any>()
        item.put("Title", title)
        item.put("Desc", desc)
        return item
    }

    //获取SD卡可用空间
    fun GetSDFreeSizeMB(): Long {
        val stat = StatFs(Environment.getDataDirectory().path)
        return stat.availableBytes / 1024 / 1024 //剩余空间
    }
    fun ImgAppTextView(STR: String): String {

        return Resource.getStringIdentifier(context, STR)
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? =
            inflater.inflate(R.layout.img_layout, container, false)

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        if (Resource.DonatePermission()) {

        } else {
            DialogView.SafetyDonateDialogView(activity)
        }
        createSDCardDirimg()
        val listItem = ArrayList<HashMap<String, Any>>()/*在数组中存放数据*/

        listItem.add(createItem(ImgAppTextView("backup_action_title_boot"),ImgAppTextView("backup_action_title")+"Boot"+ImgAppTextView("backup_action_sumarry")+"${Consts.SDCardDirImg}"+"/boot.img"))
        listItem.add(createItem(ImgAppTextView("restore_action_title_boot"), ImgAppTextView("restore_action_desc_boot")))
        listItem.add(createItem(ImgAppTextView("backup_action_title_rec"), ImgAppTextView("backup_action_title")+"Recovery"+ImgAppTextView("backup_action_sumarry")+"${Consts.SDCardDirImg}"+"/recovery.img"))
        listItem.add(createItem(ImgAppTextView("restore_action_title_rec"), ImgAppTextView("restore_action_desc_rec")))
        listItem.add(createItem(ImgAppTextView("backup_action_title_efs"), ImgAppTextView("backup_action_title")+"EFS"+ImgAppTextView("backup_action_sumarry")+"${Consts.SDCardDirImg}"+"/efs.img"))
        listItem.add(createItem(ImgAppTextView("restore_action_title_efs"), ImgAppTextView("restore_action_desc_efs")))
        listItem.add(createItem(ImgAppTextView("restore_action_title_zip"), ImgAppTextView("restore_action_desc_zip")))
        listItem.add(createItem("开机动画", "自定义开机动画"))
        val mSimpleAdapter = SimpleAdapter(
                view.context, listItem,
                R.layout.action_row_item,
                arrayOf("Title", "Desc"),
                intArrayOf(R.id.Title, R.id.Desc)
        )
        img_action_listview.adapter = mSimpleAdapter

        img_action_listview.onItemClickListener = AdapterView.OnItemClickListener { _, view, position, _ ->
            when (position) {
                0 -> {
                    if (GetSDFreeSizeMB() < 100) {
                        Snackbar.make(view, ImgAppTextView("backup_space_small"), Snackbar.LENGTH_LONG).show()
                        return@OnItemClickListener
                    }
                    if (File("${Consts.SDCardDirImg}/boot.img").exists()) {
                        val builder = AlertDialog.Builder(context!!)
                                .setTitle(ImgAppTextView("backup_file_exists"))//设置对话框的标题
                                .setMessage("${Consts.SDCardDirImg}/boot.img"+ImgAppTextView("backup_file_repea"))
                                //设置对话框的按钮
                                .setNegativeButton(android.R.string.cancel) { dialog, which -> dialog.dismiss() }
                                .setPositiveButton(android.R.string.yes) { dialog, which ->
                                    BackupRestoreUnit(activity!!).SaveBoot()
                                }.create()

                        builder.show()
                    } else {
                        //导出boot
                        BackupRestoreUnit(activity!!).SaveBoot()
                    }
                }
                1 -> {
                    val intent = Intent(this.context, ActivityFileSelector::class.java)
                    intent.putExtra("extension", "img")
                    startActivityForResult(intent, BOOT_IMG_SELECTOR)
                }
                2 -> {
                    if (GetSDFreeSizeMB() < 100) {
                        Snackbar.make(view, ImgAppTextView("backup_space_small"), Snackbar.LENGTH_LONG).show()
                        return@OnItemClickListener
                    }
                    if (File("${Consts.SDCardDirImg}/recovery.img").exists()) {
                        val builder = AlertDialog.Builder(context!!)
                                .setTitle(ImgAppTextView("backup_file_exists"))//设置对话框的标题
                                .setMessage("${Consts.SDCardDirImg}/recovery.img"+ImgAppTextView("backup_file_repea"))
                                //设置对话框的按钮
                                .setNegativeButton(android.R.string.cancel) { dialog, which -> dialog.dismiss() }
                                .setPositiveButton(android.R.string.yes) { dialog, which ->
                                    BackupRestoreUnit(context!!).SaveRecovery()
                                }.create()

                        builder.show()
                    } else {
                        //导出rec
                        BackupRestoreUnit(context!!).SaveRecovery()
                    }
                }
                3 -> {
                    val intent = Intent(this.context, ActivityFileSelector::class.java)
                    intent.putExtra("extension", "img")
                    startActivityForResult(intent, RECOVERY_IMG_SELECTOR)

                    //刷入rec
                    //val intent = Intent(Intent.ACTION_GET_CONTENT)
                    //intent.type = "*/img"//设置MIME类型
                    //intent.type = "*/*"//设置MIME类型
                    //intent.addCategory(Intent.CATEGORY_OPENABLE)
                    //startActivityForResult(intent, 1)
                    //thisview!!.setfileSelectType(FileSelectType.RecFlash)
                }
                4 -> {
                    if (GetSDFreeSizeMB() < 100) {
                        Snackbar.make(view,ImgAppTextView("backup_space_small"), Snackbar.LENGTH_LONG).show()
                        return@OnItemClickListener
                    }
                    if (File("${Consts.SDCardDirImg}/efs.img").exists()) {
                        val builder = AlertDialog.Builder(context!!)
                                .setTitle(ImgAppTextView("backup_file_exists"))//设置对话框的标题
                                .setMessage("${Consts.SDCardDirImg}/efs.img"+ImgAppTextView("backup_file_repea"))
                                //设置对话框的按钮
                                .setNegativeButton(android.R.string.cancel) { dialog, which -> dialog.dismiss() }
                                .setPositiveButton(android.R.string.yes) { dialog, which ->
                                    BackupRestoreUnit(context!!).SaveEFS()
                                }.create()

                        builder.show()

                    } else {
                        //导出efs
                        BackupRestoreUnit(context!!).SaveEFS()
                    }
                }
                5 -> {
                    val intent = Intent(this.context, ActivityFileSelector::class.java)
                    intent.putExtra("extension", "img")
                    startActivityForResult(intent,EFS_IMG_SELECTOR)
                }
                6 -> {
                    val intent = Intent(this.context, ActivityFileSelector::class.java)
                    intent.putExtra("extension", "zip")
                    startActivityForResult(intent,ZIP_IMG_SELECTOR)
                }
                7 -> {
                    AnimationSelect()

                }
            }
        }
    }

    private fun AnimationSelect() {
        val builder = AlertDialog.Builder(context!!)
        builder.setTitle(ImgAppTextView("animation_boot_select"))

                .setSingleChoiceItems(getCustomArray("animation_items"), 0, DialogInterface.OnClickListener { dialog, which -> })
                .setPositiveButton(android.R.string.yes, DialogInterface.OnClickListener { dialog, which ->
                    //Managing onClick event of the OK button
                    val selectedPosition = (dialog as AlertDialog).listView.checkedItemPosition
                    if (selectedPosition == 0) {
                        val intent = Intent(this.context, ActivityFileSelector::class.java)
                        intent.putExtra("extension", "qmg")
                        startActivityForResult(intent,BOOT_QMG_SELECTOR)
                    } else if (selectedPosition == 1) {
                        val intent = Intent(this.context, ActivityFileSelector::class.java)
                        intent.putExtra("extension", "zip")
                        startActivityForResult(intent,BOOT_zip_QMG_SELECTOR)
                    }
                })
                .setNeutralButton(ImgAppTextView("animation_boot_usinghelp"), DialogInterface.OnClickListener { dialog, which ->
                    val builder = AlertDialog.Builder(context!!)
                            .setTitle(ImgAppTextView("animation_boot_usinghelp"))//设置对话框的标题
                            .setMessage(ImgAppTextView("animation_boot_info"))
                            //设置对话框的按钮
                            .setPositiveButton(android.R.string.yes) { dialog, which ->
                                dialog.dismiss()
                            }.create()

                    builder.show()


                }).create()
        builder.show()
    }

    val BOOT_IMG_SELECTOR = 0
    val RECOVERY_IMG_SELECTOR = 1
    val EFS_IMG_SELECTOR = 2
    val ZIP_IMG_SELECTOR = 3
    val BOOT_QMG_SELECTOR = 4
    val BOOT_zip_QMG_SELECTOR = 5
    @SuppressLint("ResourceType")
    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == RECOVERY_IMG_SELECTOR) {
            if (resultCode == Activity.RESULT_OK && data != null && data.extras.containsKey("file")) {
                val path = data.extras.getString("file")
                //刷入recovery
                if (File(path).exists()) {
                    val builder = AlertDialog.Builder(context!!)
                            .setTitle(ImgAppTextView("flash_confirm"))//设置对话框的标题
                            .setMessage(ImgAppTextView("flash_hint")+"${path}"+ImgAppTextView("flash_rec"))
                            //设置对话框的按钮
                            .setNegativeButton(android.R.string.cancel) { dialog, which -> dialog.dismiss() }
                            .setPositiveButton(android.R.string.yes) { dialog, which ->
                                BackupRestoreUnit(context!!).FlashRecovery(path)
                            }.create()

                    builder.show()

                } else {
                    Toast.makeText(context!!, "所选的文件没找到！", Toast.LENGTH_SHORT).show()
                }
            }
        } else if (requestCode == BOOT_IMG_SELECTOR) {
            if (resultCode == Activity.RESULT_OK && data != null && data.extras.containsKey("file")) {
                val path = data.extras.getString("file")
                //刷入recovery
                if (File(path).exists()) {
                    val builder = AlertDialog.Builder(context!!)
                            .setTitle(ImgAppTextView("flash_confirm"))//设置对话框的标题
                            .setMessage(ImgAppTextView("flash_hint")+"${path}"+ImgAppTextView("flash_boot"))
                            //设置对话框的按钮
                            .setNegativeButton(android.R.string.cancel) { dialog, which -> dialog.dismiss() }
                            .setPositiveButton(android.R.string.yes) { dialog, which ->
                                BackupRestoreUnit(activity!!).FlashBoot(path)
                            }.create()

                    builder.show()

                }
            }
        } else if (requestCode == EFS_IMG_SELECTOR) {
            if (resultCode == Activity.RESULT_OK && data != null && data.extras.containsKey("file")) {
                val path = data.extras.getString("file")
                //刷入recovery
                if (File(path).exists()) {
                    val builder = AlertDialog.Builder(context!!)
                            .setTitle(ImgAppTextView("flash_confirm"))//设置对话框的标题
                            .setMessage(ImgAppTextView("flash_hint")+"${path}"+ImgAppTextView("flash_efs"))
                            //设置对话框的按钮
                            .setNegativeButton(android.R.string.cancel) { dialog, _ -> dialog.dismiss() }
                            .setPositiveButton(android.R.string.yes) { dialog, which ->
                                BackupRestoreUnit(activity!!).FlashEFS(path)
                            }.create()

                    builder.show()

                }
            }
        } else if (requestCode == ZIP_IMG_SELECTOR) {
            if (resultCode == Activity.RESULT_OK && data != null && data.extras.containsKey("file")) {
                val path = data.extras.getString("file")
                //刷入recovery
                if (File(path).exists()) {
                    val builder = AlertDialog.Builder(context!!)
                            .setTitle(ImgAppTextView("flash_confirm"))//设置对话框的标题
                            .setMessage(ImgAppTextView("flash_hint")+"${path}"+ImgAppTextView("flash_efs"))
                            //设置对话框的按钮
                            .setNegativeButton(android.R.string.cancel) { dialog, _ -> dialog.dismiss() }
                            .setPositiveButton(android.R.string.yes) { dialog, which ->
                                BackupRestoreUnit(activity!!).FlashZIP(path)
                            }.create()

                    builder.show()


                }
            }
        } else if (requestCode ==BOOT_QMG_SELECTOR) {
            if (resultCode == Activity.RESULT_OK && data != null && data.extras.containsKey("file")) {
                val path = data.extras.getString("file")
                //刷入recovery
                if (File(path).exists()) {
                    val builder = AlertDialog.Builder(context!!)
                            .setTitle(ImgAppTextView("animation_boot_qmg"))//设置对话框的标题
                            .setMessage(ImgAppTextView("animation_boot_confirm")+"${path}"+ImgAppTextView("animation_boot_confirm_qmg_info"))
                            //设置对话框的按钮
                            .setNegativeButton(android.R.string.cancel) { dialog, _ -> dialog.dismiss() }
                            .setPositiveButton(android.R.string.yes) { dialog, which ->
                                BackupRestoreUnit(activity!!).FlashBootAnimation(path,0)
                            }.create()

                    builder.show()

                }
            }
        }else if (requestCode ==BOOT_zip_QMG_SELECTOR) {
            if (resultCode == Activity.RESULT_OK && data != null && data.extras.containsKey("file")) {
                val path = data.extras.getString("file")
                //刷入recovery
                if (File(path).exists()) {
                    val builder = AlertDialog.Builder(context!!)
                            .setTitle(ImgAppTextView("animation_boot_zip"))//设置对话框的标题
                            .setMessage(ImgAppTextView("animation_boot_confirm")+"${path}"+ImgAppTextView("animation_boot_confirm_zip_info"))
                            //设置对话框的按钮
                            .setNegativeButton(android.R.string.cancel) { dialog, _ -> dialog.dismiss() }
                            .setPositiveButton(android.R.string.yes) { dialog, which ->
                                BackupRestoreUnit(activity!!).FlashBootAnimation(path,1)
                            }.create()

                    builder.show()

                }
            }
        }
    }


}





