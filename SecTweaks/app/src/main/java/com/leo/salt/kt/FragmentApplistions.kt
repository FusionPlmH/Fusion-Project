package com.leo.salt.kt

import android.annotation.SuppressLint
import android.app.AlertDialog
import android.content.Context
import android.os.Bundle
import android.os.Handler
import android.os.Message
import android.support.design.widget.Snackbar
import android.app.Fragment
import com.leo.salt.R
import com.leo.salt.utils.ktshell.AppListHelper
import com.leo.salt.utils.ktshell.Consts.AbsBackUpDir
import com.leo.salt.utils.ktshell.DialogAppOptions
import com.leo.salt.utils.ktshell.DialogSingleAppOptions
import com.leo.salt.utils.ktshell.KeepShellSync
import com.leo.salt.utils.AppInfo
import kotlinx.android.synthetic.main.layout_applictions.*
import android.view.inputmethod.EditorInfo
import android.widget.*
import android.widget.AdapterView.OnItemClickListener

import android.view.*
import com.leo.salt.utils.Constants.*
import com.leo.salt.utils.Utils
import com.leo.salt.widget.WebDialog


@SuppressLint("NewApi")
class FragmentApplistions : Fragment() {
    private lateinit var processBarDialog: ProgressBarDialog
    private lateinit var appListHelper: AppListHelper
    private var installedList: ArrayList<AppInfo>? = null
    private var systemList: ArrayList<AppInfo>? = null
    private var backupedList: ArrayList<AppInfo>? = null
    private val myHandler: Handler = UpdateHandler(Runnable {
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
    var appshelp = "应用程序管理帮助"
    var appsurl = PPPS+"apps.html"
    var appshelpEN = "Application management help"
    var appsurlEN = PPPS+"apps_en.html"
    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        when (item.itemId) {
            MENU_RESET -> {
                showHideAppDialog()
                return true
            }
            else -> return super.onContextItemSelected(item)
        }
    }

    val MENU_RESET = Menu.FIRST
    override fun onCreateOptionsMenu(menu: Menu, inflater: MenuInflater) {
        menu.add(0, MENU_RESET, 0, R.string.reset)

                .setIcon(R.drawable.ic_reset)
                //  .setTitle(R.string.reset)
                //.setIcon(R.drawable.ic_reset)
                .setShowAsAction(MenuItem.SHOW_AS_ACTION_ALWAYS)
    }
    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? =
            inflater.inflate(R.layout.layout_applictions, container, false)


    @SuppressLint("InflateParams", "NewApi")
    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {

            processBarDialog = ProgressBarDialog(this.context!!)
        val name: String
        val url: String
        if (Utils.isLunarSetting() == true) {
            name = appshelp
            url = appsurl
        } else {
            name = appshelpEN
            url = appsurlEN
        }
        WebDialog(activity, name,url,APP_APPS,false )
        val tabHost = view.findViewById(R.id.blacklist_tabhost) as TabHost
        tabHost.setup()
        tabHost.addTab(tabHost.newTabSpec("tab_1").setContent(R.id.tab_apps_user).setIndicator(getString(R.string.use_apps)))
        tabHost.addTab(tabHost.newTabSpec("tab_2").setContent(R.id.tab_apps_system).setIndicator(getString(R.string.system_apps)))
        tabHost.addTab(tabHost.newTabSpec("tab_3").setContent(R.id.tab_apps_backuped).setIndicator(getString(R.string.backups_apps)))
      //  tabHost.addTab(tabHost.newTabSpec("tab_3").setContent(R.id.tab_apps_helper).setIndicator(getString(R.string.help_apps)))
        tabHost.currentTab = 3
        setHasOptionsMenu(true)
        apps_userlist.addHeaderView(this.layoutInflater.inflate(R.layout.app_list_headerview, null))
        apps_systemlist.addHeaderView(this.layoutInflater.inflate(R.layout.app_list_headerview, null))
        apps_backupedlist.addHeaderView(this.layoutInflater.inflate(R.layout.app_list_headerview, null))

        val onItemLongClick = AdapterView.OnItemLongClickListener { parent, _, position, id ->
            if (position < 1)
                return@OnItemLongClickListener true
            val adapter = (parent.adapter as HeaderViewListAdapter).wrappedAdapter
            val app = adapter.getItem(position - 1) as AppInfo
            DialogSingleAppOptions(context!!, app, myHandler).showSingleAppOptions()
            true
        }

        apps_userlist.onItemLongClickListener = onItemLongClick
        apps_systemlist.onItemLongClickListener = onItemLongClick
        apps_backupedlist.onItemLongClickListener = onItemLongClick

        fab_apps_user.setOnClickListener({
            getSelectedAppShowOptions(AppInfo.AppType.USER)
        })
        fab_apps_system.setOnClickListener({
            getSelectedAppShowOptions(AppInfo.AppType.SYSTEM)
        })
        fab_apps_backuped.setOnClickListener({
            getSelectedAppShowOptions(AppInfo.AppType.BACKUPFILE)
        })

        appListHelper = AppListHelper(context!!)
        setList()
        apps_search_box.setOnEditorActionListener({ _, actionId, _ ->
            if (actionId == EditorInfo.IME_ACTION_DONE || actionId == EditorInfo.IME_ACTION_NEXT) {
                setList()
            }
            false
        })
        apps_search_box.addTextChangedListener(SearchTextWatcher(Runnable {
            searchApp()
        }))

    }

    @SuppressLint("ApplySharedPref")
    private fun showHideAppDialog() {
        val spf = context!!.getSharedPreferences(APP_HIDE_HISTORY_SPF, Context.MODE_PRIVATE)
        val all = spf.all
        val apps = ArrayList<String>()
        val selected = ArrayList<Boolean>()
        for (item in all.values) {
            apps.add(item as String)
            selected.add(false)
        }
        AlertDialog.Builder(context).setTitle(context.getString(R.string.apps_hide_record))
                .setMultiChoiceItems(apps.toTypedArray(), selected.toBooleanArray(), { dialog, which, isChecked ->
                    selected[which] = isChecked
                })
                .setPositiveButton(android.R.string.ok, { dialog, which ->
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
                    if (cmds.length > 0) {
                        processBarDialog.showDialog(context.getString(R.string.apps_recover))
                        Thread(Runnable {
                            KeepShellSync.doCmdSync(cmds.toString())
                            myHandler.post {
                                processBarDialog.hideDialog()
                                setList()
                                edit.commit()
                            }
                        }).start()
                    }
                })
                .create().show()
    }

    private fun getSelectedAppShowOptions(apptype: AppInfo.AppType) {
        var adapter: Adapter? = null
        when (apptype) {
            AppInfo.AppType.USER -> adapter = apps_userlist.adapter
            AppInfo.AppType.SYSTEM -> adapter = apps_systemlist.adapter
            AppInfo.AppType.BACKUPFILE -> adapter = apps_backupedlist.adapter
            else -> {
            }
        }
        if (adapter == null)
            return
        adapter = (adapter as HeaderViewListAdapter).wrappedAdapter
        val selectedItems = (adapter as AppListAdapter).getSelectedItems()
        if (selectedItems.size == 0) {
            Snackbar.make(this.view!!, getString(R.string.app_selected_none), Snackbar.LENGTH_SHORT).show()
            return
        }

        when (apptype) {
            AppInfo.AppType.SYSTEM ->
                DialogAppOptions(context!!, selectedItems, myHandler).selectSystemAppOptions()
            AppInfo.AppType.USER ->
                DialogAppOptions(context!!, selectedItems, myHandler).selectUserAppOptions()
            AppInfo.AppType.BACKUPFILE ->
                DialogAppOptions(context!!, selectedItems, myHandler).selectBackupOptions()
            else -> {
            }
        }
    }

    private fun searchApp() {
        setListData(installedList, apps_userlist )
        setListData(systemList, apps_systemlist )
        setListData(backupedList, apps_backupedlist )
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

    private fun setListData(dl: ArrayList<AppInfo>?, lv: OverScrollListView) {
        if (dl == null)
            return
        myHandler.post {
            try {
                if (isDetached) {
                    return@post
                }
                processBarDialog.hideDialog()
                val adapter = AppListAdapter(context!!, dl, apps_search_box.text.toString().toLowerCase())
                lv.adapter = adapter
                lv.onItemClickListener = OnItemClickListener { list, itemView, postion, _ ->
                    if (postion == 0) {
                        val checkBox = itemView.findViewById(R.id.select_state_all) as CheckBox
                        checkBox.isChecked = !checkBox.isChecked
                        adapter.setSelecteStateAll(checkBox.isChecked)
                        adapter.notifyDataSetChanged()
                    } else {
                        val checkBox = itemView.findViewById(R.id.select_state) as CheckBox
                        checkBox.isChecked = !checkBox.isChecked
                        val all = lv.findViewById<CheckBox>(R.id.select_state_all)
                        all.isChecked = adapter.getIsAllSelected()
                    }
                }
                val all = lv.findViewById<CheckBox>(R.id.select_state_all)
                all.isChecked = false
            } catch (ex: Exception) {
            }
        }
    }

    override fun onDetach() {
        processBarDialog.hideDialog()
        super.onDetach()
    }


}




