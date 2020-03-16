package com.leo.salt.tools.apps

import android.annotation.SuppressLint
import android.app.Activity
import android.app.AlertDialog
import android.content.Context
import android.os.Bundle
import android.os.Handler
import android.os.Message
import android.support.design.widget.Snackbar
import android.app.Fragment
import android.content.Intent
import kotlinx.android.synthetic.main.manage_apps.*
import android.view.inputmethod.EditorInfo
import android.widget.*
import android.widget.AdapterView.OnItemClickListener
import android.view.*
import com.leo.salt.tools.constants.AppListHelper


import com.leo.salt.tools.constants.SearchTextWatcher
import com.leo.salt.tweaks.R
import com.leo.salt.tweaks.resource.Resource

import com.leo.salt.tweaks.view.widget.*
import com.leo.salt.utils.Consts.AbsBackUpDir
import com.leo.salt.utils.PrefUtils.APP_HIDE_HISTORY_SPF
import com.leo.script.KeepShellPublic
import java.lang.ref.WeakReference





@SuppressLint("NewApi")
class FragmentApps : Fragment() {
    private lateinit var processBarDialog: ProgressBarDialog
    private lateinit var appListHelper: AppListHelper
    private var installedList: ArrayList<Appinfo>? = null
    private var systemList: ArrayList<Appinfo>? = null
    private var backupedList: ArrayList<Appinfo>? = null
    private var myHandler: Handler? = UpdateHandler(Runnable {
        setList()
    })

    class UpdateHandler(private var updateList: Runnable?) : Handler() {
        override fun handleMessage(msg: Message) {
            super.handleMessage(msg)
            if (msg.what == 2) {
                if (updateList != null) {
                    updateList!!.run()
                }
            }
        }
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {

        when (item.itemId) {
            MENU_RESET -> {
                showHideAppDialog()
                return true
            }
            MENU_TEST_2 -> {
                val intent = Intent(this.context, ActivityHiddenApps::class.java)
                startActivity(intent)
                return true
            }
            else -> return super.onContextItemSelected(item)
        }
    }
    val MENU_TEST_2 = Menu.FIRST + 1
    val MENU_RESET = Menu.FIRST
    override fun onCreateOptionsMenu(menu: Menu, inflater: MenuInflater) {
        menu.add(0, MENU_RESET, 2, Resource.getApksStringInt(R.string.apks_hide_log))
        menu.add(0, MENU_TEST_2, 2, Resource.getApksStringInt(R.string.apks_uninstall_titlerestore))

                //  .setTitle(R.string.reset)
                //.setIcon(R.drawable.ic_reset)
                .setShowAsAction(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW)
        //menu.add(1, MENU_TEST_2, 0,"重置") .setShowAsAction(MenuItem.SHOW_AS_ACTION_IF_ROOM);

    }
    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? =
            inflater.inflate(R.layout.manage_apps, container, false)

    fun AppsTextView(STR: String): String {

        return Resource.getStringIdentifier(context, STR)
    }
    @SuppressLint("InflateParams")
    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        processBarDialog = ProgressBarDialog(this.context!!)

        val tabHost = view.findViewById(R.id.blacklist_tabhost) as TabHost
        tabHost.setup()
      //  val tabIconHelper = TabIconHelper(tabHost, this.activity!!)

        tabHost.addTab(tabHost.newTabSpec("tab_1").setContent(R.id.tab_apps_user).setIndicator(AppsTextView("use_apps")))
        tabHost.addTab(tabHost.newTabSpec("tab_2").setContent(R.id.tab_apps_system).setIndicator(AppsTextView("system_apps")))
        tabHost.addTab(tabHost.newTabSpec("tab_3").setContent(R.id.tab_apps_backuped).setIndicator(AppsTextView("backups_apps")))
      //  tabHost.setOnTabChangedListener({ tabId ->
         //   tabIconHelper.updateHighlight()
     //   })
        tabHost.currentTab = 3
        setHasOptionsMenu(true)
        apps_userlist.addHeaderView(this.layoutInflater.inflate(R.layout.app_list_headerview, null))
        apps_systemlist.addHeaderView(this.layoutInflater.inflate(R.layout.app_list_headerview, null))
        apps_backupedlist.addHeaderView(this.layoutInflater.inflate(R.layout.app_list_headerview, null))

        val onItemLongClick = AdapterView.OnItemLongClickListener { parent, _, position, id ->
            if (position < 1)
                return@OnItemLongClickListener true
            val adapter = (parent.adapter as HeaderViewListAdapter).wrappedAdapter
            val app = adapter.getItem(position - 1) as Appinfo
            DialogSingleAppOptions(context!!, app, myHandler!!).showSingleAppOptions(this.activity!!)
            true
        }

        apps_userlist.onItemLongClickListener = onItemLongClick
        apps_systemlist.onItemLongClickListener = onItemLongClick
        apps_backupedlist.onItemLongClickListener = onItemLongClick

        fab_apps_user.setOnClickListener {
            getSelectedAppShowOptions(Appinfo.AppType.USER, this.activity!!)
        }
        fab_apps_system.setOnClickListener {
            getSelectedAppShowOptions(Appinfo.AppType.SYSTEM, this.activity!!)
        }
        fab_apps_backuped.setOnClickListener {
            getSelectedAppShowOptions(Appinfo.AppType.BACKUPFILE, this.activity!!)
        }

        appListHelper = AppListHelper(context!!)
        setList()
        apps_search_box.setOnEditorActionListener { _, actionId, _ ->
            if (actionId == EditorInfo.IME_ACTION_DONE || actionId == EditorInfo.IME_ACTION_NEXT) {
                setList()
            }
            false
        }
        apps_search_box.addTextChangedListener(SearchTextWatcher(Runnable {
            searchApp()
        }))


    }

    @SuppressLint("ApplySharedPref")
    private fun showHideAppDialog() {
        // pm list -u
        val spf = context!!.getSharedPreferences(APP_HIDE_HISTORY_SPF, Context.MODE_PRIVATE)


        val all = spf.all
        val apps = ArrayList<String>()
        val selected = ArrayList<Boolean>()
        for (item in all.values) {
            apps.add(item as String)
            selected.add(false)
        }

        val dialog = AlertDialog.Builder(context).setTitle(AppsTextView("apps_hide_record"))
                .setMultiChoiceItems(apps.toTypedArray(), selected.toBooleanArray()) { _, which, isChecked ->
                    selected[which] = isChecked
                }
.setNeutralButton("重新隐藏") { _, _ ->
                    val keys = all.keys.toList()
                    val cmds = StringBuffer()
                    val edit = spf.edit()
                    for (i in selected.indices) {
                        if (selected[i]) {
                            cmds.append("pm disable ")
                            cmds.append(keys.get(i))
                            cmds.append("\n")
                            cmds.append("pm hide ")
                            cmds.append(keys[i])
                            cmds.append("\n")
                            edit.remove(keys.get(i))
                        }
                    }
                    if (cmds.isNotEmpty()) {
                        processBarDialog.showDialog("正在隐藏应用，稍等...")
                        Thread(Runnable {
                            KeepShellPublic.doCmdSync(cmds.toString())
                            if (myHandler != null) {
                                myHandler!!.post {
                                    processBarDialog.hideDialog()
                                    setList()
                                    edit.commit()
                                }
                            }
                        }).start()
                    }
                }
                .setPositiveButton(R.string.btn_confirm) { dialog, which ->
                    val keys = all.keys.toList()
                    val cmds = StringBuffer()
                    val edit = spf.edit()
                    for (i in selected.indices) {
                        if (selected[i]) {
                            cmds.append("pm unhide ")
                            cmds.append(keys.get(i))
                            cmds.append("\n")
                            cmds.append("pm enable ")
                            cmds.append(keys.get(i))
                            cmds.append("\n")
                            edit.remove(keys.get(i))
                        }
                    }
                    if (cmds.isNotEmpty()) {
                        processBarDialog.showDialog(AppsTextView("apps_recover"))
                        Thread(Runnable {
                            KeepShellPublic.doCmdSync(cmds.toString())
                            if (myHandler != null) {
                                myHandler!!.post {
                                    processBarDialog.hideDialog()
                                    setList()
                                    edit.commit()
                                }
                            }
                        }).start()
                    }
                }
                .create()
        dialog.show()
    }

    private fun getSelectedAppShowOptions(apptype: Appinfo.AppType, activity: Activity) {
        var adapter: Adapter? = null
        when (apptype) {
            Appinfo.AppType.USER -> adapter = apps_userlist.adapter
            Appinfo.AppType.SYSTEM -> adapter = apps_systemlist.adapter
            Appinfo.AppType.BACKUPFILE -> adapter = apps_backupedlist.adapter
            else -> {
            }
        }
        if (adapter == null)
            return
        adapter = (adapter as HeaderViewListAdapter).wrappedAdapter
        val selectedItems = (adapter as AppListAdapter).getSelectedItems()
        if (selectedItems.size == 0) {
            Snackbar.make(this.view!!, AppsTextView("app_selected_none"), Snackbar.LENGTH_SHORT).show()
            return
        }

        when (apptype) {
            Appinfo.AppType.SYSTEM ->
                DialogAppOptions(context!!, selectedItems, myHandler!!).selectSystemAppOptions(activity)
            Appinfo.AppType.USER ->
                DialogAppOptions(context!!, selectedItems, myHandler!!).selectUserAppOptions(activity)
            Appinfo.AppType.BACKUPFILE ->
                DialogAppOptions(context!!, selectedItems, myHandler!!).selectBackupOptions()
            else -> {
            }
        }
    }

    private fun searchApp() {
        setListData(installedList, apps_userlist)
        setListData(systemList, apps_systemlist)
        setListData(backupedList, apps_backupedlist)
    }

    private fun setList() {
        processBarDialog.showDialog()
        Thread(Runnable {
            systemList = appListHelper.getSystemAppList()
            installedList = appListHelper.getUserAppList()
            backupedList = appListHelper.getApkFilesInfoList(AbsBackUpDir)
            setListData(installedList, apps_userlist)
            setListData(systemList, apps_systemlist)
            setListData(backupedList, apps_backupedlist)
        }).start()
    }

    private fun setListData(dl: ArrayList<Appinfo>?, lv: OverScrollListView) {
        if (dl == null)
            return
        if (myHandler != null) {
            myHandler!!.post {
                try {
                    processBarDialog.hideDialog()
                    if (isDetached) {
                        return@post
                    }
                    val adapterObj = AppListAdapter(dl, apps_search_box.text.toString().toLowerCase())
                    val adapter: WeakReference<AppListAdapter> = WeakReference(adapterObj)
                    lv.adapter = adapterObj
                    lv.onItemClickListener = OnItemClickListener { list, itemView, postion, _ ->
                        if (postion == 0) {
                            val checkBox = itemView.findViewById(R.id.select_state_all) as CheckBox
                            checkBox.isChecked = !checkBox.isChecked
                            if (adapter.get() != null) {
                                adapter.get()!!.setSelecteStateAll(checkBox.isChecked)
                                adapter.get()!!.notifyDataSetChanged()
                            }
                        } else {
                            val checkBox = itemView.findViewById(R.id.select_state) as CheckBox
                            checkBox.isChecked = !checkBox.isChecked
                            val all = lv.findViewById<CheckBox>(R.id.select_state_all)
                            if (adapter.get() != null) {
                                all.isChecked = adapter.get()!!.getIsAllSelected()
                            }
                        }
                    }
                    val all = lv.findViewById<CheckBox>(R.id.select_state_all)
                    all.isChecked = false
                } catch (ex: Exception) {
                }
            }
        }
    }

    override fun onDetach() {
        processBarDialog.hideDialog()
        myHandler = null
        super.onDetach()
    }

    companion object {
        fun createPage(): Fragment {
            val fragment = FragmentApps()
            return fragment
        }
    }
}


