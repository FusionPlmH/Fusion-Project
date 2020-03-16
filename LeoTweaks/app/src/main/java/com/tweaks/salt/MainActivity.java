package com.tweaks.salt;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.ImageDecoder;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.internal.BottomNavigationItemView;
import android.support.design.internal.BottomNavigationMenuView;
import android.support.design.widget.BottomNavigationView;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.View;
import android.support.design.widget.NavigationView;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.backends.pipeline.PipelineDraweeController;
import com.facebook.drawee.drawable.ScalingUtils;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.facebook.drawee.generic.GenericDraweeHierarchyBuilder;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.common.ResizeOptions;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.tweaks.salt.base.BaseActivity;
import com.tweaks.salt.donate.DonateActivity;
import com.tweaks.salt.utils.Weather;
import com.tweaks.salt.widget.LogDialog;
import com.tweaks.salt.widget.WebDialog;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

import static com.tweaks.salt.utils.Constants.ChangelogUrl;
import static com.tweaks.salt.utils.Constants.Enabled;
import static com.tweaks.salt.utils.Constants.EulaUrl;
import static com.tweaks.salt.utils.Constants.IMG0Url;
import static com.tweaks.salt.utils.Constants.IMG1Url;
import static com.tweaks.salt.utils.Constants.IMG2Url;
import static com.tweaks.salt.utils.Constants.IMG3Url;
import static com.tweaks.salt.utils.Constants.IMG4Url;
import static com.tweaks.salt.utils.Constants.mNewline;
import static com.tweaks.salt.utils.Weather.getCurrentTemperature;
import static com.tweaks.salt.utils.Weather.getLocation;
import static com.tweaks.salt.utils.Weather.getTempScale;
import static com.tweaks.salt.utils.Weather.getTempScaleText;
import static com.tweaks.salt.utils.Weather.isWeatherTrue;
import static com.tweaks.salt.utils.Weather.updateLeoWeatherDetail;
import static com.tweaks.salt.utils.Weather.updateLeoWeatherLocation;
import static com.tweaks.salt.utils.Weather.updateLeoWeatherLocationProvince;
import static com.tweaks.salt.utils.Weather.updateWeatherAlertDialog;

public class MainActivity extends BaseActivity implements View.OnClickListener{
    private DrawerLayout drawerLayout;
    private BottomNavigationView bottomNavigationView;
    private NavigationView navigationView;
    private MenuItem mAbout;
    private MenuItem mDonate;
    private MenuItem mPowerItem;
    private MenuItem mChangelog;
    private MenuItem mHelp;
    private MenuItem mShare;
    private ViewPager mViewPager;
    private TextView mTvPagerTitle;
    private LinearLayout mLineLayoutDot;
    private ImageCarousel imageCarousel;
    private List<View> dots;//小点
    private List<ImageInfo> imageInfoList;
    private TextView mWeather;
    private TextView mHeaderWeather;
    private String mEulaName="使用须知";
    private String mEulaKey="leo_os_eula_key";
    private String mEulaUrl=EulaUrl;
    public final static String mChangelogUrl=ChangelogUrl;

    @Override
    protected int initLayout() {
        return R.layout.activity_main;
    }

    @Override
    protected boolean initStatusBarColor() {
        return false;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        initView();


    }
    public void initView() {
        drawerLayout = (DrawerLayout) findViewById(R.id.drawerLayout);
        bottomNavigationView =  findViewById(R.id.navigation);
        navigationView =  findViewById(R.id.navigationView);
        mViewPager = findViewById(R.id.image_viewPager);
        mTvPagerTitle = findViewById(R.id.tv_pager_title);
        mLineLayoutDot = findViewById(R.id.lineLayout_dot);
        mWeather =findViewById(R.id.current_weather);
        mHeaderWeather=  navigationView.getHeaderView(0).findViewById(R.id.weather);
        initBottomNavigationView();
        initNavigationView();
        initEvent();
        imageStart();
        DrawerBottomView();
        HeaderTextView();
        new WebDialog(mContext,mEulaName,mEulaUrl,mEulaKey,true);
    }


    private void DrawerBottomView() {
        mWeather.setTypeface(Typeface.defaultFromStyle(Typeface.BOLD));
        if (isWeatherTrue(this)) {
            mWeather.setText(updateLeoWeatherLocation(this));
            mWeather.setVisibility(Enabled);
            mWeather.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    updateWeatherAlertDialog(mContext);
                }
            });
        }

    }
    private void HeaderTextView() {
        mHeaderWeather.setTypeface(Typeface.defaultFromStyle(Typeface.BOLD));
        if (isWeatherTrue(this)) {
            mHeaderWeather.setText(updateLeoWeatherDetail(this));
            mHeaderWeather.setVisibility(Enabled);
        }
    }
    private void initBottomNavigationView() {
        bottomNavigationView.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem item) {
                int i = item.getItemId();
                if (i == R.id.navigation_home) {
                //    viewPager.setCurrentItem(0);
                    return true;
                } else if (i == R.id.navigation_tools) {
                  //  viewPager.setCurrentItem(1);
                    return true;
                } else if (i == R.id.nav_assist) {
                   // viewPager.setCurrentItem(2);
                    return true;
                } else if (i == R.id.navigation_devices) {
                  //  viewPager.setCurrentItem(3);
                    return true;
                }
                return false;
            }
        });
    }

    @Override
    public void onBackPressed() {
        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawerLayout);
        if (drawer.isDrawerOpen(GravityCompat.START)) {
            drawer.closeDrawer(GravityCompat.START);
        } else {
            super.onBackPressed();
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_style) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }

    private void initNavigationView() {
        //登录

        mAbout= navigationView.getMenu().findItem(R.id.nav_source_library);
        mDonate= navigationView.getMenu().findItem(R.id.nav_donate);
        mPowerItem = navigationView.getMenu().findItem(R.id.nav_power_meun);
        mChangelog= navigationView.getMenu().findItem(R.id.nav_changelog);
        mHelp= navigationView.getMenu().findItem(R.id.nav_help);
        mShare= navigationView.getMenu().findItem(R.id.nav_share);
        //通过actionbardrawertoggle将toolbar与drawablelayout关联起来
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(
                this, drawerLayout, R.string.navigation_drawer_open, R.string.navigation_drawer_close) {
            @Override
            public void onDrawerSlide(View drawerView, float slideOffset) {
                //可以重新侧滑方法,该方法实现侧滑动画,整个布局移动效果
                //获取mDrawerLayout中的第一个子布局，也就是布局中的RelativeLayout
                //获取抽屉的view
                View mContent = drawerLayout.getChildAt(0);
                float scale = 1 - slideOffset;
                float endScale = 0.8f + scale * 0.2f;
                float startScale = 1 - 0.3f * scale;

                //设置左边菜单滑动后的占据屏幕大小
                drawerView.setScaleX(startScale);
                drawerView.setScaleY(startScale);
                //设置菜单透明度
                drawerView.setAlpha(0.6f + 0.4f * (1 - scale));

                //设置内容界面水平和垂直方向偏转量
                //在滑动时内容界面的宽度为 屏幕宽度减去菜单界面所占宽度
                mContent.setTranslationX(drawerView.getMeasuredWidth() * (1 - scale));
                //设置内容界面操作无效（比如有button就会点击无效）
                mContent.invalidate();
                //设置右边菜单滑动后的占据屏幕大小
                mContent.setScaleX(endScale);
                mContent.setScaleY(endScale);
            }
        };

        toggle.syncState();
        drawerLayout.addDrawerListener(toggle);

        //设置图片为本身的颜色
       // navigationView.setItemIconTintList(null);
        //设置item的点击事件
        navigationView.setNavigationItemSelectedListener(new NavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem item) {
                if (item == mAbout) {

                    drawerLayout.closeDrawer(GravityCompat.START);
                } else if (item ==mDonate) {
                    Intent intent =  new Intent(MainActivity.this,DonateActivity.class);
                    startActivity(intent);
                    drawerLayout.closeDrawer(GravityCompat.START);
                } else if (item == mPowerItem) {

                    drawerLayout.closeDrawer(GravityCompat.START);
                } else if (item == mChangelog) {
                    new LogDialog(mContext,mChangelogUrl);
                    drawerLayout.closeDrawer(GravityCompat.START);
                }
                else if (item == mHelp) {
                    new LogDialog(mContext,mChangelogUrl);
                    drawerLayout.closeDrawer(GravityCompat.START);
                }
                else if (item ==  mShare) {
                    shareText(mContext.getResources().getString(R.string.share_chooser_title),"Hello",mContext.getResources().getString(R.string.share_message)+mContext.getResources().getString(R.string.share_message_content));
                    drawerLayout.closeDrawer(GravityCompat.START);
                }
                return true;
            }
        });


    }
    private void shareText(String dlgTitle, String subject, String content) {
        if (content == null || "".equals(content)) {
            return;
        }
        Intent intent = new Intent(Intent.ACTION_SEND);
        intent.setType("text/plain");
        if (subject != null && !"".equals(subject)) {
            intent.putExtra(Intent.EXTRA_SUBJECT, subject);
        }

        intent.putExtra(Intent.EXTRA_TEXT, content);

        // 设置弹出框标题
        if (dlgTitle != null && !"".equals(dlgTitle)) { // 自定义标题
            startActivity(Intent.createChooser(intent, dlgTitle));
        } else { // 系统默认标题
            startActivity(intent);
        }
    }
    private void initEvent() {
        imageInfoList = new ArrayList<>();
        imageInfoList.add(new ImageInfo(1, "ROM官网", null, IMG0Url, null));
        imageInfoList.add(new ImageInfo(1,this.getResources().getString( R.string.assist_grid_wifi), null, IMG1Url, null));
        imageInfoList.add(new ImageInfo(1, this.getResources().getString( R.string.assist_grid_autostart), null, IMG2Url , null));
        imageInfoList.add(new ImageInfo(1, this.getResources().getString( R.string.assist_grid_apps), null, IMG3Url , null));
        imageInfoList.add(new ImageInfo(1,this.getResources().getString(R.string.assist_grid_log), null, IMG4Url, null));
    }
    private void imageStart() {
        //设置图片轮播
        int[] imgaeIds = new int[]{R.id.pager_image1, R.id.pager_image2, R.id.pager_image3, R.id.pager_image4,
                R.id.pager_image5, R.id.pager_image6, R.id.pager_image7, R.id.pager_image8};
        String[] titles = new String[imageInfoList.size()];
        List<SimpleDraweeView> simpleDraweeViewList = new ArrayList<>();

        for (int i = 0; i < imageInfoList.size(); i++) {
            titles[i] = imageInfoList.get(i).getTitle();
            SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this);
            simpleDraweeView.setAspectRatio(1.78f);
            // 设置一张默认的图片
            GenericDraweeHierarchy hierarchy = new GenericDraweeHierarchyBuilder(this.getResources())
                    .setPlaceholderImage(ContextCompat.getDrawable(this, R.drawable.timg), ScalingUtils.ScaleType.CENTER_CROP).build();
            simpleDraweeView.setHierarchy(hierarchy);
            simpleDraweeView.setLayoutParams(new AbsListView.LayoutParams(AbsListView.LayoutParams.MATCH_PARENT, AbsListView.LayoutParams.MATCH_PARENT));

            //加载高分辨率图片;
            ImageRequest imageRequest = ImageRequestBuilder.newBuilderWithSource(Uri.parse(imageInfoList.get(i).getImage()))
                    .setResizeOptions(new ResizeOptions(1280, 720))
                    .build();
            PipelineDraweeController controller = (PipelineDraweeController) Fresco.newDraweeControllerBuilder()
                    //.setLowResImageRequest(ImageRequest.fromUri(Uri.parse(listItemBean.test_pic_low))) //在加载高分辨率图片之前加载低分辨率图片
                    .setImageRequest(imageRequest)
                    .setOldController(simpleDraweeView.getController())
                    .build();
            simpleDraweeView.setController(controller);

            simpleDraweeView.setId(imgaeIds[i]);//给view设置id
            simpleDraweeView.setTag(imageInfoList.get(i));
            simpleDraweeView.setOnClickListener(this);
            titles[i] = imageInfoList.get(i).getTitle();
            simpleDraweeViewList.add(simpleDraweeView);

        }

        dots = addDots(mLineLayoutDot, fromResToDrawable(this, R.drawable.ic_dot_focused), simpleDraweeViewList.size());
        imageCarousel = new ImageCarousel(this, mViewPager, mTvPagerTitle, dots, 5000);
        imageCarousel.init(simpleDraweeViewList, titles)
                .startAutoPlay();
        imageCarousel.start();

    }

    @SuppressLint("NewApi")
    private int addDot(final LinearLayout linearLayout, Drawable backgount) {
        final View dot = new View(this);
        LinearLayout.LayoutParams dotParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        dotParams.width = 16;
        dotParams.height = 16;
        dotParams.setMargins(4, 0, 4, 0);
        dot.setLayoutParams(dotParams);
        dot.setBackground(backgount);
        dot.setId(View.generateViewId());
        ((Activity) this).runOnUiThread(new Runnable() {
            @Override
            public void run() {
                linearLayout.addView(dot);
            }
        });

        return dot.getId();
    }


    public static Drawable fromResToDrawable(Context context, int resId) {
        return ContextCompat.getDrawable(context, resId);
        //return context.getResources().getDrawable(resId);
    }

    private List<View> addDots(final LinearLayout linearLayout, Drawable backgount, int number) {
        List<View> dots = new ArrayList<>();
        for (int i = 0; i < number; i++) {
            int dotId = addDot(linearLayout, backgount);
            dots.add(findViewById(dotId));

        }
        return dots;
    }
    private Intent mIntent;

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.pager_image1:


                break;
            case R.id.pager_image2:

                break;
            case R.id.pager_image3:

                break;
            case R.id.pager_image4:

                break;
            case R.id.pager_image5:


                break;
        }

    }
}
