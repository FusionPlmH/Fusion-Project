package com.leo.global.tweaks

import android.annotation.SuppressLint
import android.app.Activity

import android.content.*
import android.graphics.Color
import android.graphics.PorterDuff
import android.graphics.Typeface
import android.graphics.drawable.Drawable
import android.net.Uri
import android.os.Bundle
import android.provider.Settings
import android.support.design.widget.*
import android.app.Fragment
import android.app.FragmentManager
import android.support.v4.view.GravityCompat
import android.support.v4.widget.DrawerLayout
import android.support.v7.app.ActionBarDrawerToggle
import android.support.v7.app.AppCompatActivity
import android.support.v7.widget.Toolbar

import android.widget.*


import com.leo.global.tweaks.base.BaseActivity


import kotlinx.android.synthetic.main.app_bar_main.*
import java.io.*
import java.util.*
import android.support.v4.app.FragmentTransaction
import android.support.v4.content.ContextCompat
import android.support.v4.view.PagerAdapter
import android.support.v4.view.ViewPager
import android.text.TextUtils
import android.util.Log
import android.view.*
import android.view.View.SYSTEM_UI_FLAG_LAYOUT_STABLE
import android.view.View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR
import com.facebook.drawee.backends.pipeline.Fresco
import com.facebook.drawee.backends.pipeline.PipelineDraweeController
import com.facebook.drawee.drawable.ScalingUtils
import com.facebook.drawee.generic.GenericDraweeHierarchyBuilder
import com.facebook.drawee.view.SimpleDraweeView
import com.facebook.imagepipeline.common.ResizeOptions
import com.facebook.imagepipeline.request.ImageRequestBuilder
import com.leo.global.donate.DonateActivity
import com.leo.global.download.DownloadActivity

import com.leo.global.tools.deviceinfo.ExtraInfoFragment
import com.leo.global.tweaks.base.AppBarStateChangeListener
import com.leo.global.utils.Build.*
import com.leo.global.utils.Constants
import com.leo.global.view.gridmenu.AboutMenuFragment
import com.leo.global.view.gridmenu.AboutMenuFragment.getOperator
import com.leo.global.view.gridmenu.AssistMenuFragment


import com.leo.global.view.widget.DialogView
import com.leo.global.view.widget.DialogView.initMessageDialogView
import com.leo.global.view.widget.DialogView.initWeatherDialogView
import com.leo.global.view.widget.LeoTextview


class MainActivity : BaseActivity(),
        View.OnClickListener  {
    private var bottomNavigationView: BottomNavigationView? = null
    private var  mNightMode:TextView? = null
    val LEO_WEATHER_PACKAGE = "com.amber.leoservice"
    val LEO_WEATHER_PACKAGE_NEME = "com.amber.leoservice.weather.WeatherWidgetService"
    private var mWeatherDetailedLocation: String? = null
    val LEO_ACTION_WEATHER = "com.leo.weather.service"
    private var mWeatherLowTemp: String? = null
    private var mWeatherHighTemp: String? = null
    private var mWeatherDetail: String? = null
    private var mWeatherAQI: String? = null
    private var mWeatherState: String? = null
    private var mWeatherLocation: String? = null
    private var mWeatherCurrentTemp: String? = null
    private var mWeatherRealFeel: String? = null
    private var imageInfoList: MutableList<ImageInfo>? = null
    private var drawerLayout: DrawerLayout? = null
    private var mHeaderWeather: TextView? = null
    private var mCarrier: LeoTextview? = null
    private var navigationView: NavigationView? = null
    private var mAbout: MenuItem? = null
    private var mWeather: TextView? = null
    private var VerifySafety :LeoTextview? = null
    private var mDonate: MenuItem? = null
    private var mPowerItem: MenuItem? = null
    private var mChangelog: MenuItem? = null
    private var mHelp: MenuItem? = null
    private var mShare: MenuItem? = null
    private var mToolbar:Toolbar?=null
    private var mFloatingActionButton : FloatingActionButton? = null
    private var mViewPager: ViewPager? = null
    private var mTvPagerTitle: TextView? = null
    private var mLineLayoutDot: LinearLayout? = null
    private var imageCarousel: ImageCarousel? = null
    private var dots: List<View>? = null//小点
    private var mSystemUpdate: TextView? = null
    private var mHeadsBackground: LinearLayout? = null
    override fun initLayout(): Int {
        return R.layout.activity_main
    }
    override fun initAppBarLayout(): Int {
        return R.id.app_bar
    }
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        mToolbar = findViewById<View>(R.id.toolbar) as Toolbar
        setSupportActionBar( mToolbar)
        window = this.getWindow()
        //使用CollapsingToolbarLayout必须把title设置到CollapsingToolbarLayout上，设置到Toolbar上则不会显示
    //    AppsListDialog(mContext, "")
        mCollapsingToolbarLayout = findViewById(R.id.toolbar_layout)
            //  mCollapsingToolbarLayout!!.title = "CollapsingToolbarLayout"
        //通过CollapsingToolbarLayout修改字体颜色
        mCollapsingToolbarLayout!!.setExpandedTitleColor(Color.WHITE)//设置还没收缩时状态下字体颜色
        initView()


    }

    fun setTheme() {
        mNightMode = findViewById(R.id.tools_night)
        mNightMode!!.setOnClickListener {
                val Styel: Int
                Styel = Settings.System.getInt(mContext.contentResolver, "leo_night_theme", 0) xor 1
                Settings.System.putInt(mContext.contentResolver, "leo_night_theme", Styel)
                if (Styel == 0) {
                    reload()
                } else if (Styel == 1) {
                    reload()
                }
        }
        mAppBarLayout.addOnOffsetChangedListener(object : AppBarStateChangeListener() {
            override fun onStateChanged(appBarLayout: AppBarLayout, state: AppBarStateChangeListener.State) {
                Log.d("STATE", state.name)
                if (state == AppBarStateChangeListener.State.EXPANDED) {
                    if(Constants.DayNight(getApplicationContext())){
                        window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or SYSTEM_UI_FLAG_LAYOUT_STABLE
                        initLightMode()
                    }else {
                        window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or SYSTEM_UI_FLAG_LAYOUT_STABLE
                        initLightMode()
                    }


                } else if (state == AppBarStateChangeListener.State.COLLAPSED) {
                    if(Constants.DayNight(getApplicationContext())){
                        window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or SYSTEM_UI_FLAG_LAYOUT_STABLE
                        initLightMode()
                    }else {
                        initDayNightMode()
                        window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or SYSTEM_UI_FLAG_LIGHT_STATUS_BAR
                    }


                } else {

                    //中间状态

                }
            }
        })

    }


    fun initView() {
        mViewPager = findViewById(R.id.image_viewPager)
        mTvPagerTitle = findViewById(R.id.tv_pager_title)
        mLineLayoutDot = findViewById(R.id.lineLayout_dot)
        navigationView = findViewById(R.id.navigationView)
        drawerLayout = findViewById<View>(R.id.drawerLayout) as DrawerLayout
        VerifySafety = navigationView!!.getHeaderView(0).findViewById(R.id.donate_user)
        mNightMode = findViewById(R.id.tools_night)
        mCarrier = navigationView!!.getHeaderView(0).findViewById(R.id.carrier)
        mFloatingActionButton = findViewById(R.id.fab_drawer)
        mSystemUpdate = findViewById(R.id.tools_ota)
        mHeadsBackground = navigationView!!.getHeaderView(0).findViewById(R.id.heads_background)
        initNavigationView()
        initEvent()
        imageStart()
        HeaderTextView()
        bottomNavigationView = findViewById(R.id.navigation)
        initBottomNavigationView()
        setTheme();
        mFloatingActionButton!!.setOnClickListener( {
            drawerLayout!!.openDrawer(GravityCompat.START);
        });

        initFragment()
        mSystemUpdate!!.setOnClickListener {

                StartActivity(250, mContext, DownloadActivity::class.java)

            drawerLayout!!.closeDrawer(GravityCompat.START)
        }
    }



    fun  WeatherService() {
        mHeaderWeather = navigationView!!.getHeaderView(0).findViewById(R.id.weather)
        mWeather = findViewById(R.id.current_weather)
        mHeaderWeather!!.setText(mWeatherLocation+" "+mWeatherCurrentTemp+" "+mWeatherRealFeel)
        mWeather!!.setText(mWeatherCurrentTemp+"\n"+mWeatherLocation)
        mWeather!!.setOnClickListener {   initWeatherDialogView(mContext,mWeatherDetailedLocation+"\n"+mWeatherState+"("+mWeatherCurrentTemp+")"+" "+mWeatherRealFeel+"\n"+mWeatherLowTemp+"/"+mWeatherHighTemp+" "+mWeatherAQI+"\n"+mWeatherDetail)}

    }


    override fun onResume() {
        super.onResume()
        val intent = Intent()
        val componentName = ComponentName(LEO_WEATHER_PACKAGE, LEO_WEATHER_PACKAGE_NEME)
        intent.component = componentName
        mContext.startForegroundService(intent)
        val intentFilter = IntentFilter()
        intentFilter.addAction(LEO_ACTION_WEATHER)
        mContext.registerReceiver(mWeatherServiceReceiver, intentFilter)
        WeatherService()
    }

    override fun onDestroy() {
        super.onDestroy()
        mContext.unregisterReceiver(mWeatherServiceReceiver)
    }



    private fun HeaderTextView() {
        WeatherService()
        VerifySafety!!.setText(getLeoSafetyData())
        VerifySafety!!.typeface = Typeface.defaultFromStyle(Typeface.BOLD)
        VerifySafety!!.setTextSize(18F)
        mCarrier!!.setText(getOperator())
      //  var mDrawable: Drawable? =null ;
       // mDrawable=getCustomDrawable(mContext,"leo_timg","drawable")
       mHeadsBackground!!.setBackground(getCustomDrawable(mContext,"leo_timg","drawable"))

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


    private fun initNavigationView() {

        mAbout = navigationView!!.menu.findItem(R.id.nav_source_library)
        mDonate = navigationView!!.menu.findItem(R.id.nav_donate)
        mPowerItem = navigationView!!.menu.findItem(R.id.nav_power_meun)
        mChangelog = navigationView!!.menu.findItem(R.id.nav_changelog)
        mHelp = navigationView!!.menu.findItem(R.id.nav_help)
        mShare = navigationView!!.menu.findItem(R.id.nav_share)

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
                drawerLayout!!.closeDrawer(GravityCompat.START)
            } else if (item === mDonate) {
                StartActivity(200, mContext, DonateActivity::class.java)
                    drawerLayout!!.closeDrawer(GravityCompat.START)
            } else if (item === mPowerItem) {
                drawerLayout!!.closeDrawer(GravityCompat.START)
            } else if (item === mChangelog) {

                drawerLayout!!.closeDrawer(GravityCompat.START)
            } else if (item === mHelp) {

                drawerLayout!!.closeDrawer(GravityCompat.START)
            } else if (item === mShare) {

                drawerLayout!!.closeDrawer(GravityCompat.START)
            }
            true
        }
        getSupportActionBar()!!.setHomeButtonEnabled(true); //设置返回键可用
        getSupportActionBar()!!.setDisplayHomeAsUpEnabled(true);

        toolbar.setNavigationOnClickListener({
            drawerLayout!!.openDrawer(GravityCompat.START);
        });

    }

    private fun initDayNightMode() {

        upArrow = ContextCompat.getDrawable(this, R.drawable.ic_drawer_night)
        if(getSupportActionBar() != null) {
            getSupportActionBar()!!.setHomeAsUpIndicator(upArrow);
        }
    }

    private  fun initLightMode() {

        upArrow = ContextCompat.getDrawable(this, R.drawable.ic_drawer)
        if(getSupportActionBar() != null) {
            getSupportActionBar()!!.setHomeAsUpIndicator(upArrow);
        }
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
        imageInfoList!!.add(ImageInfo(1, this.resources.getString(R.string.website), null,"http://os.leorom.cc/img/img_0.jpg", null))
        imageInfoList!!.add(ImageInfo(1, this.resources.getString(R.string.assist_grid_wifi), null,"http://os.leorom.cc/img/img_1.jpg", null))
        imageInfoList!!.add(ImageInfo(1, this.resources.getString(R.string.assist_grid_autostart), null,"http://os.leorom.cc/img/img_2.jpg", null))
        imageInfoList!!.add(ImageInfo(1, this.resources.getString(R.string.assist_grid_apps), null,"http://os.leorom.cc/img/img_3.jpg", null))
        imageInfoList!!.add(ImageInfo(1, this.resources.getString(R.string.assist_grid_log), null,"http://os.leorom.cc/img/img_3.jpg", null))
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
                    .setPlaceholderImage(getCustomDrawable(mContext,"leo_timg","drawable"), ScalingUtils.ScaleType.CENTER_CROP).build()
            simpleDraweeView.hierarchy = hierarchy
            simpleDraweeView.layoutParams = AbsListView.LayoutParams(AbsListView.LayoutParams.MATCH_PARENT, AbsListView.LayoutParams.WRAP_CONTENT)

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

    override fun onClick(v: View) {
        when (v.id) {
            R.id.pager_image1 -> {

            }
            R.id.pager_image2 -> {

            }
            R.id.pager_image3 -> {

            }
            R.id.pager_image4 -> {

            }
            R.id.pager_image5 -> {

            }
        }

    }

    private  fun setWeatherServiceView() {
        HeaderTextView()
    }
    private val mWeatherServiceReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context, intent: Intent) {
            val action = intent.action
            if (action == LEO_ACTION_WEATHER) {
                mWeatherCurrentTemp = intent.getStringExtra("WEATHERCURRENTTEMP")
                mWeatherRealFeel = intent.getStringExtra("WEATHERREALFEEL")
                mWeatherHighTemp = intent.getStringExtra("WEATHERHIGH")
               mWeatherLowTemp = intent.getStringExtra("WEATHERLOW")
                mWeatherLocation = intent.getStringExtra("WEATHERLOCATION")
              mWeatherAQI = intent.getStringExtra("WEATHERAQI")
              mWeatherState = intent.getStringExtra("WEATHERSTATE")
                mWeatherDetail = intent.getStringExtra("WEATHERDATAIL")
                mWeatherDetailedLocation = intent.getStringExtra("WEATHERLOCATIONDATAILED")

            }
            WeatherService()
        }
    }

    private var mFragments: Array<Fragment>? = null
    private var mLastfragment: Int = 0
     var mExtraInfoFragment: ExtraInfoFragment? = null
    var mAssistMenuFragment: AssistMenuFragment? = null
    var  mAboutMenuFragment: AboutMenuFragment? = null
    private fun initFragment() {

        mAssistMenuFragment= AssistMenuFragment()


        mFragments = arrayOf<Fragment>( mAssistMenuFragment!!)
        mLastfragment = 0
        fragmentManager.beginTransaction().replace(R.id.fragment_container, mAssistMenuFragment!!).show(mAssistMenuFragment!!).commit()
    }

    private fun switchFragment(lastfragment: Int, index: Int) {
        val transaction = fragmentManager.beginTransaction()
        transaction.hide(mFragments!![lastfragment])//隐藏上个Fragment
        if (mFragments!![index].isAdded == false) {
            transaction.add(R.id.fragment_container, mFragments!![index])
        }
        transaction.show(mFragments!![index]).commitAllowingStateLoss()
    }
    private fun initBottomNavigationView() {
         
        //   BottomNavigationViewHelper.disableShiftMode( bottomNavigationView!!)
        bottomNavigationView!!.setOnNavigationItemSelectedListener(BottomNavigationView.OnNavigationItemSelectedListener { item ->
            val fragment: Fragment? = null
            val i = item.itemId
            if (i == R.id.navigation_home) {

                return@OnNavigationItemSelectedListener true
            } else if (i == R.id.navigation_tools) {

                return@OnNavigationItemSelectedListener true
            } else if (i == R.id.nav_assist) {

                return@OnNavigationItemSelectedListener true
            } else if (i == R.id.navigation_devices) {

                return@OnNavigationItemSelectedListener true
            }

            false

        })

    }

    var currentFragment: Fragment? = null
}


















