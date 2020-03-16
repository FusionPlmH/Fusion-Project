package com.tweaks.leo


import android.annotation.SuppressLint
import android.app.Activity
import android.content.ContentResolver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.database.ContentObserver
import android.graphics.drawable.Drawable
import android.net.Uri
import android.os.Handler
import android.provider.Settings
import android.support.design.internal.BottomNavigationItemView
import android.support.design.internal.BottomNavigationMenuView
import android.support.design.widget.BottomNavigationView
import android.support.v4.content.ContextCompat
import android.support.v4.view.ViewPager
import android.support.v7.app.AlertDialog
import android.os.Bundle
import android.support.v7.widget.Toolbar
import android.text.TextUtils
import android.util.Log
import android.view.KeyEvent
import android.view.Menu
import android.view.MenuItem
import android.view.View
import android.view.ViewGroup
import android.widget.AbsListView
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast

import com.facebook.drawee.backends.pipeline.Fresco
import com.facebook.drawee.backends.pipeline.PipelineDraweeController
import com.facebook.drawee.drawable.ScalingUtils
import com.facebook.drawee.generic.GenericDraweeHierarchyBuilder
import com.facebook.drawee.view.SimpleDraweeView
import com.facebook.imagepipeline.common.ResizeOptions
import com.facebook.imagepipeline.request.ImageRequestBuilder
import com.tweaks.leo.activity.SubActivity
import com.tweaks.leo.activity.SystemappActivity
import com.tweaks.leo.activity.WebViewActivity
import com.tweaks.leo.activity.WifiPasswordActivity
import com.tweaks.leo.base.BaseActivity
import com.tweaks.leo.donate.DonateActivity
import com.tweaks.leo.extrainfo.ExtraInfoFragment

import com.tweaks.leo.service.RebootReceiver
import com.tweaks.leo.ui.AboutMenuFragment
import com.tweaks.leo.ui.AssistMenuFragment
import com.tweaks.leo.ui.LeoRomAdvancedMenuFragment
import com.tweaks.leo.ui.list.ListLeoRomAdvancedMenuFragment
import com.tweaks.leo.utils.AndroidUtils
import com.tweaks.leo.utils.Constants
import com.tweaks.leo.utils.root.Helpers

import com.tweaks.leo.widget.EulaDialog
import com.tweaks.leo.widget.LogDialog

import java.util.ArrayList

import android.widget.Toast.LENGTH_SHORT
import com.tweaks.leo.utils.Weather.getCurrentTemperature
import com.tweaks.leo.utils.Weather.getTempScale
import com.tweaks.leo.utils.Weather.updateLeoWeatherLocation
import com.tweaks.leo.utils.Weather.updateLeoWeatherLocation2


import com.tweaks.leo.widget.DialogUtil.Promptdonate
import android.support.v4.app.*
import com.tweaks.leo.utils.AlertDialogFragment
import com.tweaks.leo.utils.ktshell.KeepShellSync
import com.tweaks.leo.utils.root.BackupRestoreIntentService
import com.tweaks.leo.utils.root.Helpers.Companion.CODE
import com.tweaks.leo.utils.root.Helpers.Companion.LeoRestartMeun

open class MainActivity : BaseActivity(), View.OnClickListener , AlertDialogFragment.OnDialogFragmentListener{
    override fun getDecorView(): View {

        return getWindow().getDecorView();
    }

    override fun onDialogResult(requestCode: Int) {

    }

    override fun onRestoreRequested(filePath: String?, isConfirmed: Boolean) {
        if (isConfirmed) {
            launchBackupRestoreService(1, filePath);
        } else {
            getFragmentManager().beginTransaction().add(AlertDialogFragment.backupRestoreInstance(Constants.RESTORE_FILE_SELECTOR_DIALOG_REQUEST_CODE, true, filePath), "restore_confirm").commit();
        }
    }


    internal lateinit var reboot: RebootReceiver
    private var mToolbar: Toolbar? = null

    private var mLeoRomObserver: LeoRomObserver? = null
    protected lateinit var loe_tools_View: TextView


   // protected lateinit var mFragmentManager: FragmentManager
    private val mOnNavigationItemSelectedListener = BottomNavigationView.OnNavigationItemSelectedListener { item ->
        when (item.itemId) {
            R.id.navigation_home -> {
                if (lastfragment != 0) {
                    switchFragment(lastfragment, 0)
                    lastfragment = 0

                }
                return@OnNavigationItemSelectedListener true
            }
            R.id.navigation_tools -> {

                UIstyle()
                return@OnNavigationItemSelectedListener true
            }
            R.id.navigation_apps -> {
                if (lastfragment != 2) {
                    switchFragment(lastfragment, 2)
                    lastfragment = 2
                }
                return@OnNavigationItemSelectedListener true
            }
            R.id.navigation_devices -> {
                if (lastfragment != 3) {
                    switchFragment(lastfragment, 3)
                    lastfragment = 3
                }
                return@OnNavigationItemSelectedListener true
            }
        }
        false
    }

    private var mStyle: Int = 0
    private var ListLeoRom: ListLeoRomAdvancedMenuFragment? = null
    private var Home: AboutMenuFragment? = null
    private var LeoRom: LeoRomAdvancedMenuFragment? = null
    private var Assist: AssistMenuFragment? = null
    private var Devices: ExtraInfoFragment? = null
    private var lastfragment: Int = 0
    private var fragments: Array<Fragment>? = null


    // 图片轮播控件
    private var mViewPager: ViewPager? = null
    private var mTvPagerTitle: TextView? = null
    private var mLineLayoutDot: LinearLayout? = null
    private var imageCarousel: ImageCarousel? = null
    private var dots: List<View>? = null//小点

    // 图片数据，包括图片标题、图片链接、数据、点击要打开的网站（点击打开的网页或一些提示指令）
    private var imageInfoList: MutableList<ImageInfo>? = null
    private var mIntent: Intent? = null
    override fun initLayout(): Int {
        return R.layout.activity_main

    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)


        val navigation = findViewById<View>(R.id.navigation) as BottomNavigationView
        BottomNavigationViewHelper.disableShiftMode(navigation)
        navigation.setOnNavigationItemSelectedListener(mOnNavigationItemSelectedListener)

        mLeoRomObserver = LeoRomObserver(Handler())
        mLeoRomObserver!!.observe()
        GetHeadView()
        ToolbarHeadView()
        initFragment()
        EulaDialog(this)
  //      checkUseState()
        reboot = RebootReceiver()
        val intentFilter = IntentFilter()
        intentFilter.addAction(Constants.REBOOT_DEVICE)
        mContext.registerReceiver(reboot, intentFilter)
    }

    fun GetHeadView() {
        val LeoSettings = mContext.contentResolver
        mToolbar = findViewById<View>(R.id.toolbar) as Toolbar
        setSupportActionBar(mToolbar)
        mToolbar!!.setTitle(R.string.app_name)
        val anavigation: String
        val navigation = Settings.System.getInt(LeoSettings,
                "leo_tweaks_switch_anavigation", 0)
        if (navigation == 0) {
            KeepShellSync.doCmdSync("wm overscan reset;settings put global policy_control null;")
            Settings.System.putInt(LeoSettings,
                    "leo_tweaks_launcher_icon_sink", 0)
        } else if (navigation == 1) {
            if (AndroidUtils.getCustomOTA() == CODE) {
                val stringBuilder = StringBuilder()
                stringBuilder.append("wm overscan 0,0,0,-")
                stringBuilder.append(Helpers.navigation(mContext))
                stringBuilder.append(';')
                anavigation = stringBuilder.toString()
                KeepShellSync.doCmdSync(anavigation)
                Settings.System.putInt(LeoSettings,
                        "leo_tweaks_launcher_icon_sink", 1)
            } else {
                Promptdonate(this)
            }

        }


        val Carrierstyle = Settings.System.getInt(LeoSettings,
                "leo_tweaks_switch_weather", 0)

        if (Carrierstyle == 0) {

            mToolbar!!.setSubtitle(getCurrentTemperature(mContext,getTempScale(mContext))+ " ℃"+" "+updateLeoWeatherLocation(mContext)+" "+updateLeoWeatherLocation2(mContext));
        } else if (Carrierstyle == 1) {
            mToolbar!!.subtitle = getLeoCustomString(Settings.System.getString(LeoSettings,
                    "leo_tweaks_weather_label"))

        }
        mStyle = Settings.System.getInt(LeoSettings, "leo_tweaks_ui_style", 0)

        mToolbar!!.setSubtitleTextAppearance(this, R.style.Toolbar_SubTitleText)
        loe_tools_View = findViewById<View>(R.id.loe_tools_View) as TextView
        loe_tools_View.setOnClickListener {
            val intent = Intent(mContext, SubActivity::class.java)
            intent.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.Tools)
            mContext.startActivity(intent)
        }
        //   imageview= (ImageView) findViewById(R.id. imageview);

        //  imageview.setBackgroundResource(ImageArray[randomImage]);
        initView()
        initEvent()
        imageStart()

    }

    private fun UIstyle() {
        if (mStyle == 0) {
            if (lastfragment != 1) {
                switchFragment(lastfragment, 1)
                lastfragment = 1

            }
        } else if (mStyle == 1) {
            if (lastfragment != 4) {
                switchFragment(lastfragment, 4)
                lastfragment = 4

            }
        }
    }

    private fun initFragment() {

        Home = AboutMenuFragment()
        LeoRom = LeoRomAdvancedMenuFragment()
        Assist = AssistMenuFragment()
        Devices = ExtraInfoFragment()

        ListLeoRom = ListLeoRomAdvancedMenuFragment()


        // lastfragment =0;

        // getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,Home).show(Home).commit();

        //  if (mStyle == 0) {
        //    lastfragment =0;
        //  fragments = new Fragment[]{Home,LeoRom,Assist,Devices,ListLeoRom,ListHome};
        //    getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,Home).show(Home).commit();
        //   } else if(mStyle == 1) {
        lastfragment = 0
        fragments = arrayOf<Fragment>(Home!!, LeoRom!!, Assist!!, Devices!!, ListLeoRom!!)
        supportFragmentManager.beginTransaction().replace(R.id.fragment_container, Home).show(Home).commit()
        //  }
    }


    override fun onResume() {
        super.onResume()
        //动态注册广播
        val intentFilter = IntentFilter()
        intentFilter.addAction(Constants.REBOOT_DEVICE)
        registerReceiver(reboot, intentFilter)


    }

    override fun onDestroy() {
        super.onDestroy()
        //注销动态广播
        unregisterReceiver(reboot)
        //   unregisterReceiver(mLeoWeatherReceiver);
    }


    private fun switchFragment(lastfragment: Int, index: Int) {
        val transaction = supportFragmentManager.beginTransaction()
        transaction.hide(this.fragments!![lastfragment])
        if (!this.fragments!![index].isAdded) {
            transaction.add(R.id.fragment_container, this.fragments!![index])
        }
        transaction.show(this.fragments!![index]).commitAllowingStateLoss()

    }


    object BottomNavigationViewHelper {
        @SuppressLint("RestrictedApi")
        fun disableShiftMode(view: BottomNavigationView) {
            val menuView = view.getChildAt(0) as BottomNavigationMenuView
            try {
                val shiftingMode = menuView.javaClass.getDeclaredField("mShiftingMode")
                shiftingMode.isAccessible = true
                shiftingMode.setBoolean(menuView, false)
                shiftingMode.isAccessible = false
                for (i in 0 until menuView.childCount) {
                    val item = menuView.getChildAt(i) as BottomNavigationItemView

                    item.setShiftingMode(false)
                    // set once again checked value, so view will be updated

                    item.setChecked(item.itemData.isChecked)
                }
            } catch (e: NoSuchFieldException) {
                Log.e("BNVHelper", "Unable to get shift mode field", e)
            } catch (e: IllegalAccessException) {
                Log.e("BNVHelper", "Unable to change value of shift mode", e)
            }

        }
    }

    inner class ToolbarHeadView {
        var donate: LinearLayout

        var power: LinearLayout
        var log: LinearLayout
        var assist: LinearLayout
        var share: LinearLayout
        private val update_url = "http://www.leorom.cc/os/Changelog.txt"

        init {

            donate = findViewById<View>(R.id.toobar_donate) as LinearLayout
            donate.setOnClickListener { startActivity(Intent(mContext, DonateActivity::class.java)) }

            power = findViewById<View>(R.id.toobar_power) as LinearLayout
            power.setOnClickListener { setPower() }

            log = findViewById<View>(R.id.toobar_log) as LinearLayout
            log.setOnClickListener { LogDialog(mContext, update_url) }

            assist = findViewById<View>(R.id.toobar_assist) as LinearLayout
            assist.setOnClickListener { startInstructions(mContext) }

            share = findViewById<View>(R.id.toobar_share) as LinearLayout
            share.setOnClickListener { startShare(mContext) }

        }

        fun startShare(context: Context) {
            val intent = Intent()
            intent.action = Intent.ACTION_SEND
            intent.type = "text/plain"
            intent.putExtra(Intent.EXTRA_TEXT, String.format(
                    context.getString(R.string.share_message)))
            context.startActivity(Intent.createChooser(intent, context.getString(R.string.share_chooser_title)))
        }

        fun startInstructions(context: Context) {
            val webViewIntent = Intent(context.applicationContext, WebViewActivity::class.java)
            webViewIntent.putExtra("url", "file:///android_asset/all_leo.html")
            context.startActivity(webViewIntent)
        }

        fun setPower() {

            val dialog = AlertDialog.Builder(mContext)
                    .setTitle(R.string.toolbar_navigation_power)//设置对话框的标题
                    .setItems(R.array.power_items) { dialogInterface, i ->
                        when (i) {
                            0 -> LeoRestartMeun(mContext, 5)
                            1 -> LeoRestartMeun( mContext,1)
                            2 -> LeoRestartMeun( mContext,2)
                            3 -> LeoRestartMeun( mContext,4)
                            4 -> LeoRestartMeun(mContext, 3)
                            5 -> LeoRestartMeun(mContext,0)
                        }
                    }
                    .create()
            dialog.window!!.setBackgroundDrawableResource(R.drawable.dialog_bg)
            dialog.show()
        }
    }

    override fun onKeyDown(keyCode: Int, event: KeyEvent): Boolean {
        //当按下键盘上返回按钮，给出退出对话框
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            // System.exit(0);
            //直接退出程序
            /*Intent setIntent = new Intent(Intent.ACTION_MAIN);
              setIntent.addCategory(Intent.CATEGORY_HOME);
              setIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
              startActivity(setIntent);
             */
            onBackPressed()

            //不退出程序仅仅返回桌面
            return false
        } else {
            return super.onKeyDown(keyCode, event)
        }
    }


    override fun onBackPressed() {
        val setIntent = Intent(Intent.ACTION_MAIN)
        setIntent.addCategory(Intent.CATEGORY_HOME)
        setIntent.flags = Intent.FLAG_ACTIVITY_NEW_TASK
        startActivity(setIntent)


    }


    internal inner class LeoRomObserver(handler: Handler) : ContentObserver(handler) {
        lateinit var contentResolver: ContentResolver
        fun observe() {
            contentResolver = mContext.contentResolver
            contentResolver.registerContentObserver(Settings.System.getUriFor("leo_tweaks_weather_label"), false, this)
            contentResolver.registerContentObserver(Settings.System.getUriFor("leo_tweaks_switch_weather"), false, this)
            contentResolver.registerContentObserver(Settings.System.getUriFor("leo_tweaks_ui_style"), false, this)
            contentResolver.registerContentObserver(Settings.System.getUriFor("leo_tweaks_switch_anavigation"), false, this)
        }

        override fun onChange(selfChange: Boolean) {
            GetHeadView()
        }


    }

    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        menuInflater.inflate(R.menu.main, menu)
        return true
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {

        val id = item.itemId
        when (id) {
            R.id.action_ota -> ota()
            R.id.action_layout_style -> {
                isMiPopModel(mContext)
                reload()
            }
            R.id.action_backups -> getFragmentManager().beginTransaction().add(AlertDialogFragment.newInstance(Constants.BACKUP_OR_RESTORE_DIALOG_REQUEST_CODE), "backup_restore").commit();
        }


        return super.onOptionsItemSelected(item)
    }

    fun ota() {
        if (AndroidUtils.getCustomOTA() == CODE) {
            val ota = Intent(mContext, SubActivity::class.java)
            ota.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.update)
            mContext.startActivity(ota)

        } else {
            Promptdonate(mContext)
        }

    }

    /**
     * 初始化事件
     */
    private fun initEvent() {
        imageInfoList = ArrayList()
        imageInfoList!!.add(ImageInfo(1, "ROM官网", null, "http://leorom.cc/os/c_leo.jpg", null))
        imageInfoList!!.add(ImageInfo(1, mContext.resources.getString(R.string.assist_grid_wifi), null, "http://leorom.cc/os/d_leo.jpg", null))
        imageInfoList!!.add(ImageInfo(1, mContext.resources.getString(R.string.assist_grid_autostart), null, "http://leorom.cc/os/leo_a.jpg", null))
        imageInfoList!!.add(ImageInfo(1, mContext.resources.getString(R.string.assist_grid_apps), null, "http://leorom.cc/os/leo_b.jpg", null))
        imageInfoList!!.add(ImageInfo(1, mContext.resources.getString(R.string.assist_grid_log), null, "http://leorom.cc/os/leo_c.jpg", null))
    }

    /**
     * 初始化控件
     */
    private fun initView() {

        mViewPager = findViewById(R.id.image_viewPager)
        mTvPagerTitle = findViewById(R.id.tv_pager_title)
        mLineLayoutDot = findViewById(R.id.lineLayout_dot)

    }

    private fun imageStart() {
        //设置图片轮播
        val imgaeIds = intArrayOf(R.id.pager_image1, R.id.pager_image2, R.id.pager_image3, R.id.pager_image4, R.id.pager_image5, R.id.pager_image6, R.id.pager_image7, R.id.pager_image8)
        val titles = arrayOfNulls<String>(imageInfoList!!.size)
        val simpleDraweeViewList = ArrayList<SimpleDraweeView>()

        for (i in imageInfoList!!.indices) {
            titles[i] = imageInfoList!![i].title
            val simpleDraweeView = SimpleDraweeView(this)
            simpleDraweeView.aspectRatio = 1.78f
            // 设置一张默认的图片
            val hierarchy = GenericDraweeHierarchyBuilder(this.resources)
                    .setPlaceholderImage(ContextCompat.getDrawable(this, R.drawable.timg), ScalingUtils.ScaleType.CENTER_CROP).build()
            simpleDraweeView.hierarchy = hierarchy
            simpleDraweeView.layoutParams = AbsListView.LayoutParams(AbsListView.LayoutParams.MATCH_PARENT, AbsListView.LayoutParams.MATCH_PARENT)

            //加载高分辨率图片;
            val imageRequest = ImageRequestBuilder.newBuilderWithSource(Uri.parse(imageInfoList!![i].image))
                    .setResizeOptions(ResizeOptions(1280, 720))
                    .build()
            val controller = Fresco.newDraweeControllerBuilder()
                    //.setLowResImageRequest(ImageRequest.fromUri(Uri.parse(listItemBean.test_pic_low))) //在加载高分辨率图片之前加载低分辨率图片
                    .setImageRequest(imageRequest)
                    .setOldController(simpleDraweeView.controller)
                    .build() as PipelineDraweeController
            simpleDraweeView.controller = controller

            simpleDraweeView.id = imgaeIds[i]//给view设置id
            simpleDraweeView.tag = imageInfoList!![i]
            simpleDraweeView.setOnClickListener(this)
            titles[i] = imageInfoList!![i].title
            simpleDraweeViewList.add(simpleDraweeView)

        }

        dots = addDots(mLineLayoutDot, fromResToDrawable(this, R.drawable.ic_dot_focused), simpleDraweeViewList.size)
        imageCarousel = ImageCarousel(this, mViewPager, mTvPagerTitle, dots, 5000)
        imageCarousel!!.init(simpleDraweeViewList, titles)
                .startAutoPlay()
        imageCarousel!!.start()

    }

    override fun onClick(v: View) {
        when (v.id) {
            R.id.pager_image1 -> {

                mIntent = Intent(mContext.applicationContext, WebViewActivity::class.java)
                mIntent!!.putExtra("url", "http://www.leorom.cc/")
                mContext.startActivity(mIntent)
            }
            R.id.pager_image2 -> startActivity(Intent(mContext, WifiPasswordActivity::class.java))
            R.id.pager_image3 -> {
                mIntent = Intent(mContext, SubActivity::class.java)
                mIntent!!.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.Autostart)
                mContext.startActivity(mIntent)
            }
            R.id.pager_image4 -> startActivity(Intent(mContext, SystemappActivity::class.java))
            R.id.pager_image5 -> if (AndroidUtils.getCustomOTA() == CODE) {
                mIntent = Intent(mContext, SubActivity::class.java)
                mIntent!!.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.Log)
                mContext.startActivity(mIntent)

            } else {
                Promptdonate(mContext)
            }
        }

    }

    /**
     * 动态添加一个点
     *
     * @param linearLayout 添加到LinearLayout布局
     * @param backgount    设置
     * @return 小点的Id
     */
    private fun addDot(linearLayout: LinearLayout?, backgount: Drawable?): Int {
        val dot = View(this)
        val dotParams = LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT)
        dotParams.width = 16
        dotParams.height = 16
        dotParams.setMargins(4, 0, 4, 0)
        dot.layoutParams = dotParams
        dot.background = backgount
        dot.id = View.generateViewId()
        (this as Activity).runOnUiThread { linearLayout!!.addView(dot) }

        return dot.id
    }

    /**
     * 添加多个轮播小点到横向线性布局
     *
     * @param linearLayout 线性横向布局
     * @param backgount    小点资源图标
     * @param number       数量
     * @return 返回小点View集合
     */
    private fun addDots(linearLayout: LinearLayout?, backgount: Drawable?, number: Int): List<View> {
        val dots = ArrayList<View>()
        for (i in 0 until number) {
            val dotId = addDot(linearLayout, backgount)
            dots.add(findViewById(dotId))

        }
        return dots
    }

    companion object {
        fun getLeoCustomString(str2: String): String {
            var str = ""
            if (!TextUtils.isEmpty(str2)) {
                str = str2
            } else {
                str = if (TextUtils.isEmpty(str)) "不忘初心,方能始终" else str
            }
            return str
        }

        fun isMiPopModel(ctx: Context) {
            val Styel: Int
            Styel = Settings.System.getInt(ctx.contentResolver, "leo_tweaks_ui_style", 0) xor 1

            Settings.System.putInt(ctx.contentResolver, "leo_tweaks_ui_style", Styel)
            if (Styel == 0) {
                Toast.makeText(ctx, "九宫格风格", LENGTH_SHORT).show()

            } else if (Styel == 1) {
                Toast.makeText(ctx, "列表风格", LENGTH_SHORT).show()
            }
        }


        /**
         * 资源图片转Drawable
         *
         * @param context 上下文
         * @param resId   资源ID
         * @return 返回Drawable图像
         */
        fun fromResToDrawable(context: Context, resId: Int): Drawable? {
            return ContextCompat.getDrawable(context, resId)
            //return context.getResources().getDrawable(resId);
        }
    }


    private fun launchBackupRestoreService(which: Int, filePath: String?) {
        val action: String?
        val intent = Intent(this, BackupRestoreIntentService::class.java)
        when (which) {
            0 -> action = Constants.SERVICE_INTENT_ACTION_BACKUP
            1 -> {
                action = Constants.SERVICE_INTENT_ACTION_RESTORE
                intent.putExtra(Constants.BACKUP_FILE_PATH_EXTRA_KEY, filePath)
            }
            else -> action = null
        }
        if (action != null) {
            intent.action = action
            startService(intent)
            if (which == 1) {
                finish()
            }
        }
    }


    override fun onBackupRestoreResult(which: Int) {
        when (which) {
            0 -> launchBackupRestoreService(which, null)
            1 -> getFragmentManager().beginTransaction().add(AlertDialogFragment.newInstance(Constants.RESTORE_FILE_SELECTOR_DIALOG_REQUEST_CODE), "restore_selector").commit()
        }
    }

}


