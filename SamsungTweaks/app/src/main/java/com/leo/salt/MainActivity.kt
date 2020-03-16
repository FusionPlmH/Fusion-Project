package com.fusionleo.salt

import android.annotation.SuppressLint
import android.app.Activity
import android.app.ActivityManager
import android.content.*
import android.database.ContentObserver

import android.graphics.Typeface
import android.graphics.drawable.Drawable
import android.net.Uri
import android.os.Bundle
import android.os.Handler
import android.preference.PreferenceManager

import android.provider.Settings
import android.support.annotation.Nullable
import android.support.design.internal.BottomNavigationItemView
import android.support.design.internal.BottomNavigationMenuView
import android.support.design.widget.BottomNavigationView
import android.support.design.widget.FloatingActionButton
import android.support.v4.app.Fragment
import android.support.v4.content.ContextCompat
import android.support.v4.view.ViewPager
import android.support.v7.app.AlertDialog
import android.view.KeyEvent
import android.view.View
import android.support.design.widget.NavigationView
import android.support.v4.view.GravityCompat
import android.support.v4.widget.DrawerLayout
import android.support.v7.app.ActionBarDrawerToggle
import android.support.v7.widget.Toolbar
import android.text.TextUtils
import android.util.Log
import android.view.Menu
import android.view.MenuItem
import android.view.ViewGroup
import android.widget.*

import com.facebook.drawee.backends.pipeline.Fresco
import com.facebook.drawee.backends.pipeline.PipelineDraweeController
import com.facebook.drawee.drawable.ScalingUtils
import com.facebook.drawee.generic.GenericDraweeHierarchyBuilder
import com.facebook.drawee.view.SimpleDraweeView
import com.facebook.imagepipeline.common.ResizeOptions
import com.facebook.imagepipeline.request.ImageRequestBuilder
import com.fusionleo.salt.base.BaseActivity
import com.fusionleo.salt.donate.DonateActivity
import com.fusionleo.salt.extrainfo.ExtraInfoFragment
import com.fusionleo.salt.service.RebootReceiver
import com.fusionleo.salt.ui.AboutMenuFragment
import com.fusionleo.salt.ui.AssistMenuFragment
import com.fusionleo.salt.ui.LeoRomAdvancedMenuFragment
import com.fusionleo.salt.update.DownloadActivity
import com.fusionleo.salt.utils.AndroidUtils
import com.fusionleo.salt.utils.Constants
import com.fusionleo.salt.utils.root.Helpers
import com.fusionleo.salt.widget.LogDialog
import com.fusionleo.salt.widget.WebDialog
import java.util.ArrayList
import android.widget.Toast.LENGTH_SHORT
import com.fusionleo.salt.R.id.clear_ram
import com.fusionleo.salt.activity.*
import com.fusionleo.salt.extrainfo.ExtraInfo.getCarrier
import com.fusionleo.salt.extrainfo.ExtraInfo.getCurrentNetType
import com.fusionleo.salt.service.BackupRestoreService


import com.fusionleo.salt.utils.Constants.*
import com.fusionleo.salt.utils.NetUtils.hasNetWork
import com.fusionleo.salt.utils.Utils.*
import com.fusionleo.salt.utils.Weather.isWeatherTrue
import com.fusionleo.salt.utils.Weather.updateLeoWeatherDetail
import com.fusionleo.salt.utils.Weather.updateLeoWeatherLocation
import com.fusionleo.salt.utils.Weather.updateWeatherAlertDialog

import com.fusionleo.salt.utils.root.Verify
import com.fusionleo.salt.widget.BackupsDialog
import com.fusionleo.salt.widget.DialogUtil.Promptdonate
import com.fusionleo.salt.widget.DialogUtil.followUS
import com.fusionleo.salt.widget.SourceDialog

import kotlinx.android.synthetic.main.app_bar_main.*
import java.io.*

class MainActivity : BaseActivity(),
        BackupsDialog.OnDialogFragmentListener, View.OnClickListener  {

    private var drawerLayout: DrawerLayout? = null
    private var bottomNavigationView: BottomNavigationView? = null
    private var navigationView: NavigationView? = null
    private var mAbout: MenuItem? = null
    private var mReset: MenuItem? = null
    private var mDonate: MenuItem? = null
    private var mPowerItem: MenuItem? = null
    private var mChangelog: MenuItem? = null
    private var mHelp: MenuItem? = null
    private var mShare: MenuItem? = null
    private var mViewPager: ViewPager? = null
    private var mTvPagerTitle: TextView? = null
    private var mLineLayoutDot: LinearLayout? = null
    private var imageCarousel: ImageCarousel? = null
    private var dots: List<View>? = null//小点
    private var imageInfoList: MutableList<ImageInfo>? = null
    private var mWeather: TextView? = null
    private var mHeaderWeather: TextView? = null
    private val mEulaName =getEulatitle()
    private val mEulaKey = "leo_os_eula_key"
    private val mEulaUrl = getEulaUrl()
    private var mCarrier: TextView? = null
    private var mLeoSet: TextView? = null
    private var mSystemUpdate: TextView? = null
    private var reboot: RebootReceiver? = null
    private val mUI_STYLE_KEY = "leo_tweaks_ui_style"
    private var mAboutMenu: AboutMenuFragment? = null
    private var mRomAdvanced: LeoRomAdvancedMenuFragment? = null
    private var mAssistMenu: AssistMenuFragment? = null
    private var mExtraInfo: ExtraInfoFragment? = null

    private var mFragments: Array<Fragment>? = null
    private var mLastfragment: Int = 0
    private var mToolbar: Toolbar? = null
    private var mFloatingActionButton : FloatingActionButton? = null
    private var mLeoRomObserver: LeoObserver? = null
    private val FAB_DISABIED_KEY = "leo_tweaks_fab_style"
    override fun initLayout(): Int {
        return R.layout.activity_main
    }
    override fun initStatusBarColor(): Boolean {
        return false
    }
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        mToolbar = findViewById<View>(R.id.toolbar) as Toolbar
        setSupportActionBar( mToolbar)
        initView()
    }

    fun LeoNetWork() {
        if (hasNetWork(mContext) == 0) {
            val dialog = AlertDialog.Builder(mContext)
                    .setTitle(R.string.copyright_no_network_status)
                    .setMessage(R.string.copyright_no_network_status_suarry)//设置对话框的内容
                    //设置对话框的按钮
                    .setPositiveButton(R.string.copyright_no_network_status_ok) { dialog, which ->
                        // TODO Auto-generated method stub
                        System.exit(0)
                        finish()
                        dialog.dismiss()
                    }
                    .create()
            dialog.show()
            dialog.setCanceledOnTouchOutside(false)
            dialog.setCancelable(false)
            dialog.window!!.setBackgroundDrawableResource(R.drawable.dialog_bg)

        }
    }

    fun initView() {

        navigationView = findViewById(R.id.navigationView)
        drawerLayout = findViewById<View>(R.id.drawerLayout) as DrawerLayout
        bottomNavigationView = findViewById(R.id.navigation)
        mViewPager = findViewById(R.id.image_viewPager)
        mTvPagerTitle = findViewById(R.id.tv_pager_title)
        mLineLayoutDot = findViewById(R.id.lineLayout_dot)
        mWeather = findViewById(R.id.current_weather)
        mLeoSet = findViewById(R.id.tools_set)
        mSystemUpdate = findViewById(R.id.tools_ota)
        if (AndroidUtils.getCustomOTA() == safety) run {
            Verify.get(mContext)
            LeoNetWork()
        }else{
            Toast.makeText(this, this.getResources().getString(R.string.no_app_name_donate), LENGTH_SHORT).show()
        }
        mHeaderWeather = navigationView!!.getHeaderView(0).findViewById(R.id.weather)
        mCarrier = navigationView!!.getHeaderView(0).findViewById(R.id.carrier)
        initBottomNavigationView()
        initNavigationView()
        if (isLunarSetting() == true) {
            initEvent()
        }else {
            initEventEN()
        }

        imageStart()
        DrawerBottomView()
        HeaderTextView()
        reboot = RebootReceiver()
        val intentFilter = IntentFilter()
        intentFilter.addAction(Constants.REBOOT_DEVICE)
        mContext.registerReceiver(reboot, intentFilter)
        WebDialog(mContext, mEulaName, mEulaUrl, mEulaKey, true)
        initFragment()
        GetHeadView();
        mLeoRomObserver = LeoObserver(Handler())
        mLeoRomObserver!!.observe()

    }
    private fun initFragment() {
        mAboutMenu = AboutMenuFragment()
        mRomAdvanced = LeoRomAdvancedMenuFragment()
        mAssistMenu = AssistMenuFragment()
        mExtraInfo = ExtraInfoFragment()

        mFragments = arrayOf<Fragment>(mAboutMenu!!, mRomAdvanced!!, mAssistMenu!!, mExtraInfo!!)
        mLastfragment = 0
        supportFragmentManager.beginTransaction().replace(R.id.fragment_container, mAboutMenu!!).show(mAboutMenu!!).commit()
    }

    private fun switchFragment(lastfragment: Int, index: Int) {
        val transaction = supportFragmentManager.beginTransaction()
        transaction.hide(mFragments!![lastfragment])//隐藏上个Fragment
        if (mFragments!![index].isAdded == false) {
            transaction.add(R.id.fragment_container, mFragments!![index])
        }
        transaction.show(mFragments!![index]).commitAllowingStateLoss()
    }
    fun GetHeadView() {
        mFloatingActionButton = findViewById(R.id.fab_drawer)

        val LeoSettings = mContext.contentResolver
        val Carrierstyle = Settings.System.getInt(LeoSettings,
                "leo_tweaks_switch_subtitle", 0)
        if (Carrierstyle == 0) {
            mToolbar!!.setSubtitle(R.string.app_name_sumarry);
        } else if (Carrierstyle == 1) {
            mToolbar!!.subtitle = getLeoCustomString(Settings.System.getString(LeoSettings,
                    "leo_tweaks_subtitle_label"))
        }
        mToolbar!!.setSubtitleTextAppearance(this, R.style.Toolbar_SubTitleText)
        val isShowing = Settings.System.getInt(LeoSettings,
                FAB_DISABIED_KEY, 1) == 1
        mFloatingActionButton!!.setOnClickListener( {
            drawerLayout!!.openDrawer(GravityCompat.START);
        });
        if (isShowing) {
            mFloatingActionButton!!.setVisibility(View.VISIBLE);
        } else {
            mFloatingActionButton!!.setVisibility(View.GONE);
        }
    }
    internal inner class LeoObserver(handler: Handler) : ContentObserver(handler) {
        lateinit var contentResolver: ContentResolver
        fun observe() {
            contentResolver = mContext.contentResolver
            contentResolver.registerContentObserver(Settings.System.getUriFor("leo_tweaks_switch_subtitle"), false, this)
            contentResolver.registerContentObserver(Settings.System.getUriFor("leo_tweaks_subtitle_label"), false, this)
            contentResolver.registerContentObserver(Settings.System.getUriFor("leo_tweaks_ui_style"), false, this)
            contentResolver.registerContentObserver(Settings.System.getUriFor(FAB_DISABIED_KEY), false, this)
        }

        override fun onChange(selfChange: Boolean) {
            GetHeadView()
        }


    }
    private fun DrawerBottomView() {
        mSystemUpdate!!.typeface = Typeface.defaultFromStyle(Typeface.BOLD)
        mSystemUpdate!!.setOnClickListener {
            if (AndroidUtils.getCustomOTA() == Constants.safety) {
                StartActivity(250, mContext, DownloadActivity::class.java)
            } else {
                Promptdonate(mContext)
            }
            drawerLayout!!.closeDrawer(GravityCompat.START)
        }
        mLeoSet!!.typeface = Typeface.defaultFromStyle(Typeface.BOLD)
        mLeoSet!!.setOnClickListener {
            mIntent = Intent(mContext, SubActivity::class.java)
          mIntent.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.Tools);
            mContext.startActivity(mIntent)
        }
        mWeather!!.typeface = Typeface.defaultFromStyle(Typeface.BOLD)
        if (isWeatherTrue(this)) {
            mWeather!!.text = updateLeoWeatherLocation(this)
            mWeather!!.visibility = Enabled
            mWeather!!.setOnClickListener { updateWeatherAlertDialog(mContext) }
        }
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
        unregisterReceiver(reboot)
    }

    fun isViewModel(ctx: Context) {
        val Styel: Int
        Styel = Settings.System.getInt(ctx.contentResolver, mUI_STYLE_KEY, 0) xor 1
        Settings.System.putInt(ctx.contentResolver, mUI_STYLE_KEY, Styel)
        if (Styel == 0) {
            Toast.makeText(ctx, "九宫格风格", LENGTH_SHORT).show()
        } else if (Styel == 1) {
            Toast.makeText(ctx, "列表风格", LENGTH_SHORT).show()
        }
    }

    private fun HeaderTextView() {
        mCarrier!!.typeface = Typeface.defaultFromStyle(Typeface.BOLD)
        mCarrier!!.text = getCarrier(mContext) + " " + getCurrentNetType(mContext)
        mHeaderWeather!!.typeface = Typeface.defaultFromStyle(Typeface.BOLD)
        if (isWeatherTrue(this)) {
            mHeaderWeather!!.text = updateLeoWeatherDetail(this)
            mHeaderWeather!!.visibility = Enabled
        }
    }

    private fun initBottomNavigationView() {
        BottomNavigationViewHelper.disableShiftMode( bottomNavigationView!!)
        bottomNavigationView!!.setOnNavigationItemSelectedListener(BottomNavigationView.OnNavigationItemSelectedListener { item ->
            val i = item.itemId
            if (i == R.id.navigation_home) {
                if (mLastfragment != 0) {
                    switchFragment(mLastfragment, 0)
                    mLastfragment = 0
                }
                return@OnNavigationItemSelectedListener true
            } else if (i == R.id.navigation_tools) {
                if (mLastfragment != 1) {
                    switchFragment(mLastfragment, 1)
                    mLastfragment = 1
                }
                return@OnNavigationItemSelectedListener true
            } else if (i == R.id.nav_assist) {
                if (mLastfragment != 2) {
                    switchFragment(mLastfragment, 2)
                    mLastfragment = 2
                }
                return@OnNavigationItemSelectedListener true
            } else if (i == R.id.navigation_devices) {
                if (mLastfragment != 3) {
                    switchFragment(mLastfragment, 3)
                    mLastfragment = 3
                }
                return@OnNavigationItemSelectedListener true
            }
            false
        })
    }


    override fun onKeyDown(keyCode: Int, event: KeyEvent): Boolean {
        val drawer = findViewById<View>(R.id.drawerLayout) as DrawerLayout
        if (drawer.isDrawerOpen(GravityCompat.START)) {
            drawer.closeDrawer(GravityCompat.START)
        } else if (keyCode == KeyEvent.KEYCODE_BACK) {
            onBackPressed()
            return false
        } else {
            return super.onKeyDown(keyCode, event)
        }
        return false
    }


    override fun onBackPressed() {
        val setIntent = Intent(Intent.ACTION_MAIN)
        setIntent.addCategory(Intent.CATEGORY_HOME)
        setIntent.flags = Intent.FLAG_ACTIVITY_NEW_TASK
        startActivity(setIntent)
    }

    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        menuInflater.inflate(R.menu.main, menu)
        return true
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        val id = item.itemId
        if (id == R.id.action_style) {
            isViewModel(mContext)
            reload()
            return true
        }
        return super.onOptionsItemSelected(item)
    }

    private fun initNavigationView() {

        mAbout = navigationView!!.menu.findItem(R.id.nav_source_library)
        mDonate = navigationView!!.menu.findItem(R.id.nav_donate)
        mPowerItem = navigationView!!.menu.findItem(R.id.nav_power_meun)
        mChangelog = navigationView!!.menu.findItem(R.id.nav_changelog)
        mHelp = navigationView!!.menu.findItem(R.id.nav_help)
        mShare = navigationView!!.menu.findItem(R.id.nav_share)
        mReset = navigationView!!.menu.findItem(R.id.nav_reset)
        val toggle = object : ActionBarDrawerToggle(
                this, drawerLayout, R.string.navigation_drawer_open, R.string.navigation_drawer_close) {
            override fun onDrawerSlide(drawerView: View, slideOffset: Float) {
                val mContent = drawerLayout!!.getChildAt(0)
                val scale = 1 - slideOffset
                val endScale = 0.8f + scale * 0.2f
                val startScale = 1 - 0.3f * scale
                drawerView.scaleX = startScale
                drawerView.scaleY = startScale
                //设置菜单透明度
                drawerView.alpha = 0.6f + 0.4f * (1 - scale)
                //设置内容界面水平和垂直方向偏转量
                //在滑动时内容界面的宽度为 屏幕宽度减去菜单界面所占宽度
                mContent.translationX = drawerView.measuredWidth * (1 - scale)
                //设置内容界面操作无效（比如有button就会点击无效）
                mContent.invalidate()
                //设置右边菜单滑动后的占据屏幕大小
                mContent.scaleX = endScale
                mContent.scaleY = endScale
            }

        }

        toggle.syncState()
        drawerLayout!!.addDrawerListener(toggle)
        navigationView!!.setNavigationItemSelectedListener { item ->
            if (item === mAbout) {
                if (isLunarSetting() == true) {
                    SourceDialog(mContext,  PPPS+"license_cn.html")
                }else {
                    SourceDialog(mContext, PPPS+"license.html")
                }
                drawerLayout!!.closeDrawer(GravityCompat.START)
            } else if (item === mDonate) {
                StartActivity(200, mContext, DonateActivity::class.java)
                drawerLayout!!.closeDrawer(GravityCompat.START)
            } else if (item === mPowerItem) {
                setPower()
                drawerLayout!!.closeDrawer(GravityCompat.START)
            } else if (item === mChangelog) {
                LogDialog(mContext, mChangelogUrl)
                drawerLayout!!.closeDrawer(GravityCompat.START)
            } else if (item === mHelp) {
                StartWebActivity(200, mContext, HelpUrl)
                drawerLayout!!.closeDrawer(GravityCompat.START)
            } else if (item === mShare) {
              shareText(mContext.resources.getString(R.string.share_chooser_title), "Hello", mContext.resources.getString(R.string.share_message) + mContext.resources.getString(R.string.share_message_content))
              //  getFragmentManager().beginTransaction().add(BackupsDialog.newInstance(Constants.BACKUP_OR_RESTORE_DIALOG_REQUEST_CODE), "backup_restore").commit();
                drawerLayout!!.closeDrawer(GravityCompat.START)
            }else if (item === mReset) {
                //  shareText(mContext.resources.getString(R.string.share_chooser_title), "Hello", mContext.resources.getString(R.string.share_message) + mContext.resources.getString(R.string.share_message_content))
                //    showBackupDialog()
                getFragmentManager().beginTransaction().add(BackupsDialog.newInstance(Constants.BACKUP_OR_RESTORE_DIALOG_REQUEST_CODE), "backup_restore").commit();
                drawerLayout!!.closeDrawer(GravityCompat.START)
            }
            true
        }
////////////////
        toggle.setDrawerIndicatorEnabled(false);
        toolbar.setNavigationIcon(R.drawable.ic_drawer);
        toolbar.setNavigationOnClickListener({
            drawerLayout!!.openDrawer(GravityCompat.START);
        });
    }




    fun setPower() {
        val dialog = AlertDialog.Builder(mContext)
                .setTitle(R.string.toolbar_navigation_power)//设置对话框的标题
                .setItems(R.array.power_items) {  _, i ->
                    when (i) {
                        0 -> Helpers.LeoRestartMeun(mContext, 5)
                        1 -> Helpers.LeoRestartMeun(mContext, 1)
                        2 -> Helpers.LeoRestartMeun(mContext, 2)
                        3 -> Helpers.LeoRestartMeun(mContext, 4)
                        4 -> Helpers.LeoRestartMeun(mContext, 3)
                        5 -> Helpers.LeoRestartMeun(mContext, 0)
                    }
                }
                .create()
        dialog.window!!.setBackgroundDrawableResource(R.drawable.dialog_bg)
        dialog.show()
    }


    private fun shareText(dlgTitle: String?, subject: String?, content: String?) {
        if (content == null || "" == content) {
            return
        }
        val intent = Intent(Intent.ACTION_SEND)
        intent.type = "text/plain"
        if (subject != null && "" != subject) {
            intent.putExtra(Intent.EXTRA_SUBJECT, subject)
        }
        intent.putExtra(Intent.EXTRA_TEXT, content)

        // 设置弹出框标题
        if (dlgTitle != null && "" != dlgTitle) { // 自定义标题
            startActivity(Intent.createChooser(intent, dlgTitle))
        } else { // 系统默认标题
            startActivity(intent)
        }
    }

    private fun initEvent() {
        imageInfoList = ArrayList()
        imageInfoList!!.add(ImageInfo(1, this.resources.getString(R.string.website), null, IMG0Url, null))
        imageInfoList!!.add(ImageInfo(1, this.resources.getString(R.string.assist_grid_wifi), null, IMG1Url, null))
        imageInfoList!!.add(ImageInfo(1, this.resources.getString(R.string.assist_grid_autostart), null, IMG2Url, null))
        imageInfoList!!.add(ImageInfo(1, this.resources.getString(R.string.assist_grid_apps), null, IMG3Url, null))
        imageInfoList!!.add(ImageInfo(1, this.resources.getString(R.string.assist_grid_log), null, IMG4Url, null))
    }
    private fun initEventEN() {
        imageInfoList = ArrayList()
        imageInfoList!!.add(ImageInfo(1, this.resources.getString(R.string.website), null, IMG0UrlEN, null))
        imageInfoList!!.add(ImageInfo(1, this.resources.getString(R.string.assist_grid_wifi), null, IMG1UrlEN, null))
        imageInfoList!!.add(ImageInfo(1, this.resources.getString(R.string.assist_grid_autostart), null, IMG2UrlEN, null))
        imageInfoList!!.add(ImageInfo(1, this.resources.getString(R.string.assist_grid_apps), null, IMG3UrlEN, null))
        imageInfoList!!.add(ImageInfo(1, this.resources.getString(R.string.assist_grid_log), null, IMG4UrlEN, null))
    }

    private fun imageStart() {
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

    @SuppressLint("NewApi")
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

    private fun addDots(linearLayout: LinearLayout?, backgount: Drawable?, number: Int): List<View> {
        val dots = ArrayList<View>()
        for (i in 0 until number) {
            val dotId = addDot(linearLayout, backgount)
            dots.add(findViewById(dotId))

        }
        return dots
    }


    override fun onClick(v: View) {
        when (v.id) {
            R.id.pager_image1 -> {
                mIntent = Intent(mContext.applicationContext, WebViewActivity::class.java)
                mIntent!!.putExtra("url", "http://www.leorom.cc/")
                mContext.startActivity(mIntent)
            }
            R.id.pager_image2 -> {
                startActivity(Intent(mContext, WifiPasswordActivity::class.java))
            }
            R.id.pager_image3 -> {
                mIntent = Intent(mContext, SubActivity::class.java)
                mIntent!!.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.Autostart)
                mContext.startActivity(mIntent)
            }
            R.id.pager_image4 -> {
                if (AndroidUtils.getCustomOTA() == safety) {
                    VipDATA(mContext)
                    VipDATA(mContext)
                    mIntent = Intent(mContext, SubActivity::class.java)
                    mIntent.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.Apps)
                    mContext.startActivity(mIntent)
                } else {
                    Promptdonate(mContext)
                }
            }
            R.id.pager_image5 -> {
                if (AndroidUtils.getCustomOTA() == safety) {
                    VipDATA(mContext)
                    mIntent = Intent(mContext, SubActivity::class.java)
                    mIntent!!.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.Log)
                    mContext.startActivity(mIntent)

                } else {
                    Promptdonate(mContext)
                }
            }
        }

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

    companion object {
        val mChangelogUrl = getChangelogUrl()

        fun getLeoCustomString(str2: String): String {
            var str = ""
            if (!TextUtils.isEmpty(str2)) {
                str = str2
            } else {
                str = if (TextUtils.isEmpty(str)) "输入任意文本字符" else str
            }
            return str
        }
        fun fromResToDrawable(context: Context, resId: Int): Drawable? {
            return ContextCompat.getDrawable(context, resId)
        }
    }



    override fun onRestoreRequested(filePath: String, isConfirmed: Boolean) {
        if (isConfirmed) {
            launchBackupRestoreService(1, filePath)
        } else {
            fragmentManager.beginTransaction().add(BackupsDialog.backupRestoreInstance(Constants.RESTORE_FILE_SELECTOR_DIALOG_REQUEST_CODE, true, filePath), "restore_confirm").commit()
        }
    }


    override fun onBackupRestoreResult(which: Int) {
        when (which) {
            0 -> launchBackupRestoreService(which, null.toString())
            1 -> getFragmentManager().beginTransaction().add(BackupsDialog.newInstance(Constants.RESTORE_FILE_SELECTOR_DIALOG_REQUEST_CODE), "restore_selector").commit()
        }
    }

    private fun launchBackupRestoreService(which: Int, filePath: String) {
        val action: String?
        val intent = Intent(this, BackupRestoreService::class.java)
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
}




