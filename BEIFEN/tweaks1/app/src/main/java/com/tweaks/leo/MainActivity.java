package com.tweaks.leo;




import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.provider.MediaStore;
import android.provider.Settings;
import android.support.annotation.NonNull;
import android.support.design.internal.BottomNavigationItemView;
import android.support.design.internal.BottomNavigationMenuView;
import android.support.design.widget.BottomNavigationView;
import android.support.design.widget.Snackbar;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.EditText;
import android.widget.ImageView;
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
import com.tweaks.leo.activity.SubActivity;
import com.tweaks.leo.activity.SystemappActivity;
import com.tweaks.leo.activity.WebViewActivity;
import com.tweaks.leo.activity.WifiPasswordActivity;
import com.tweaks.leo.base.BaseActivity;
import com.tweaks.leo.donate.DonateActivity;
import com.tweaks.leo.extrainfo.ExtraInfo;
import com.tweaks.leo.extrainfo.ExtraInfoFragment;

import com.tweaks.leo.service.RebootReceiver;
import com.tweaks.leo.ui.AboutMenuFragment;
import com.tweaks.leo.ui.AssistMenuFragment;
import com.tweaks.leo.ui.LeoRomAdvancedMenuFragment;
import com.tweaks.leo.ui.list.ListAboutMenuFragment;
import com.tweaks.leo.ui.list.ListLeoRomAdvancedMenuFragment;
import com.tweaks.leo.utils.AndroidUtils;
import com.tweaks.leo.utils.Constants;
import com.tweaks.leo.utils.root.Helpers;
import com.tweaks.leo.utils.root.RootUtils;
import com.tweaks.leo.widget.EulaDialog;
import com.tweaks.leo.widget.LogDialog;

import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import static android.widget.Toast.LENGTH_SHORT;
import static com.tweaks.leo.LeoApp.mContext;
import static com.tweaks.leo.extrainfo.ExtraInfo.getCurrentNetType;
import static com.tweaks.leo.utils.AndroidUtils.getCustomDateSystemVersion;
import static com.tweaks.leo.utils.Utils.killPackage;
import static com.tweaks.leo.utils.Weather.getCurrentTemperature;
import static com.tweaks.leo.utils.Weather.getTempScale;
import static com.tweaks.leo.utils.Weather.isWeatherTrue;
import static com.tweaks.leo.utils.Weather.updateLeoWeatherLocation;
import static com.tweaks.leo.utils.Weather.updateLeoWeatherLocation2;

import static com.tweaks.leo.utils.root.Helpers.CODE;
import static com.tweaks.leo.utils.root.Helpers.GoogleDisabled;
import static com.tweaks.leo.utils.root.Helpers.GoogleEnabled;
import static com.tweaks.leo.utils.root.Helpers.LeoRestartMeun;

import static com.tweaks.leo.widget.DialogUtil.Promptdonate;


public class MainActivity extends BaseActivity implements View.OnClickListener{


    RebootReceiver reboot;
    private Toolbar mToolbar;
    @Override
    protected int initLayout() {
        return R.layout.activity_main;

    }

    private LeoRomObserver mLeoRomObserver;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);


        BottomNavigationView navigation = (BottomNavigationView) findViewById(R.id.navigation);
        BottomNavigationViewHelper.disableShiftMode(navigation);
        navigation.setOnNavigationItemSelectedListener(mOnNavigationItemSelectedListener);
        initFragment();
        mLeoRomObserver=new LeoRomObserver(new Handler());
        mLeoRomObserver.observe();
        GetHeadView();
        new ToolbarHeadView();
        new EulaDialog(this);
        reboot = new RebootReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Constants.REBOOT_DEVICE);
        mContext.registerReceiver(reboot, intentFilter);
    }
    public static String getLeoCustomString (String str2)
    {
        String str ="";
        if (!TextUtils.isEmpty(str2)) {
            str=(str2);
        } else {
            str=(TextUtils.isEmpty(str)? "不忘初心,方能始终": str);
        }
        return str;
    }
    protected TextView loe_tools_View;



    public void GetHeadView (){
        ContentResolver LeoSettings = mContext.getContentResolver();
        mToolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(mToolbar);
        mToolbar.setTitle(R.string.app_name);
        String anavigation;
        int navigation=Settings.System.getInt(LeoSettings,
                "leo_tweaks_switch_anavigation" ,0);
        if (navigation== 0) {
            RootUtils.runCommand("wm overscan reset;settings put global policy_control null;");
            Settings.System.putInt(LeoSettings,
                    "leo_tweaks_launcher_icon_sink",0);
        } else if ( navigation == 1) {
            if (AndroidUtils.getCustomOTA().equals(CODE)) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("wm overscan 0,0,0,-");
                stringBuilder.append(Helpers.navigation(mContext));
                stringBuilder.append(';');
                anavigation= stringBuilder.toString();
                RootUtils.runCommand( anavigation);
                Settings.System.putInt(LeoSettings,
                        "leo_tweaks_launcher_icon_sink",1);
            }else {
                Promptdonate(this);
            }

        }



        int   Carrierstyle =Settings.System.getInt(LeoSettings,
                "leo_tweaks_switch_weather" ,0);

        if ( Carrierstyle == 0) {

                mToolbar.setSubtitle(getCurrentTemperature(mContext,getTempScale(mContext))+ " ℃"+" "+updateLeoWeatherLocation(mContext)+" "+updateLeoWeatherLocation2(mContext));

        } else if ( Carrierstyle == 1) {
            mToolbar.setSubtitle(getLeoCustomString(Settings.System.getString(LeoSettings,
                    "leo_tweaks_weather_label")));

        }
        mStyle = Settings.System.getInt(LeoSettings,"leo_tweaks_ui_style", 0);

        mToolbar.setSubtitleTextAppearance(this,R.style.Toolbar_SubTitleText);
        loe_tools_View= (TextView) findViewById(R.id. loe_tools_View);
        loe_tools_View.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(mContext, SubActivity.class);
                intent.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.Tools);
                mContext.startActivity(intent);
            }
        });
     //   imageview= (ImageView) findViewById(R.id. imageview);

      //  imageview.setBackgroundResource(ImageArray[randomImage]);
        initView();
        initEvent();
        imageStart();

    }


    protected FragmentManager mFragmentManager;
    private BottomNavigationView.OnNavigationItemSelectedListener mOnNavigationItemSelectedListener
            = new BottomNavigationView.OnNavigationItemSelectedListener() {

        @Override
        public boolean onNavigationItemSelected(@NonNull MenuItem item) {
            switch (item.getItemId()) {
                case R.id.navigation_home:
                    if (lastfragment != 0) {
                        switchFragment(lastfragment, 0);
                        lastfragment = 0;

                    }
                    return true;
                case R.id.navigation_tools:

                    return true;
                case R.id.navigation_devices:

                    return true;
            }
            return false;
        }

    };

    private int mStyle;
    private AboutMenuFragment Home;

    private void UIstyle(){
        if (mStyle == 0) {
            if (lastfragment != 1) {
                switchFragment(lastfragment, 1);
                lastfragment = 1;

            }
        } else if(mStyle == 1) {
            if (lastfragment != 4) {
                switchFragment(lastfragment, 4);
                lastfragment = 4;

            }
        }
    }

    private void initFragment(){
        mFragmentManager =  getSupportFragmentManager();
        Home= new AboutMenuFragment();

           lastfragment =0;
           fragments = new Fragment[]{Home};
            getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,Home).show(Home).commit();
    //  }
    }



    @Override
    protected void onResume() {
        super.onResume();
        //动态注册广播
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Constants.REBOOT_DEVICE);
        registerReceiver(reboot, intentFilter);


    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        //注销动态广播
        unregisterReceiver(reboot);
      //   unregisterReceiver(mLeoWeatherReceiver);
    }


    private void switchFragment(int lastfragment, int index) {
        FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
        transaction.hide(this.fragments[lastfragment]);
        if (!this.fragments[index].isAdded()) {
            transaction.add(R.id.fragment_container, this.fragments[index]);
        }
        transaction.show(this.fragments[index]).commitAllowingStateLoss();

    }
    private int lastfragment;
    private Fragment[] fragments;



    public static  class BottomNavigationViewHelper {
        @SuppressLint("RestrictedApi")
        public static void disableShiftMode(BottomNavigationView view) {
            BottomNavigationMenuView menuView = (BottomNavigationMenuView) view.getChildAt(0);
            try {
                Field shiftingMode = menuView.getClass().getDeclaredField("mShiftingMode");
                shiftingMode.setAccessible(true);
                shiftingMode.setBoolean(menuView, false);
                shiftingMode.setAccessible(false);
                for (int i = 0; i < menuView.getChildCount(); i++) {
                    BottomNavigationItemView item = (BottomNavigationItemView) menuView.getChildAt(i);
                    //noinspection RestrictedApi
                    item.setShiftingMode(false);
                    // set once again checked value, so view will be updated
                    //noinspection RestrictedApi
                    item.setChecked(item.getItemData().isChecked());
                }
            } catch (NoSuchFieldException e) {
                Log.e("BNVHelper", "Unable to get shift mode field", e);
            } catch (IllegalAccessException e) {
                Log.e("BNVHelper", "Unable to change value of shift mode", e);
            }
        }
    }
    public  class ToolbarHeadView {
        public LinearLayout donate;

        public LinearLayout power;
        public LinearLayout log;
        public LinearLayout assist;
        public LinearLayout share;
        public ToolbarHeadView() {

            donate= (LinearLayout) findViewById(R.id. toobar_donate);
            donate.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    startActivity(new Intent(mContext,DonateActivity.class));
                }
            });

            power= (LinearLayout) findViewById(R.id. toobar_power);
            power.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    setPower();
                }
            });

            log= (LinearLayout) findViewById(R.id. toobar_log);
            log.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    new LogDialog(mContext,update_url);
                }
            });

            assist= (LinearLayout) findViewById(R.id. toobar_assist);
            assist.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    startInstructions(mContext);
                }
            });

            share= (LinearLayout) findViewById(R.id. toobar_share);
            share.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    startShare(mContext);
                }
            });

        }
        private String update_url="http://www.leorom.cc/os/Changelog.txt";
        public void startShare(Context context) {
            Intent intent = new Intent();
            intent.setAction(Intent.ACTION_SEND);
            intent.setType("text/plain");
            intent.putExtra(Intent.EXTRA_TEXT, String.format(
                    context.getString(R.string.share_message)));
            context. startActivity(Intent.createChooser(intent, context.getString(R.string.share_chooser_title)));
        }
        public void startInstructions(Context context) {
            Intent webViewIntent = new Intent(context.getApplicationContext(), WebViewActivity.class);
            webViewIntent.putExtra("url", "file:///android_asset/all_leo.html");
            context.startActivity(webViewIntent);
        }
        public void setPower()  {

            AlertDialog dialog = new AlertDialog.Builder(mContext)
                    .setTitle(R.string.toolbar_navigation_power)//设置对话框的标题
                    .setItems(R.array.power_items, new DialogInterface.OnClickListener() {

                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            switch (i) {
                                case 0:
                                    LeoRestartMeun(mContext,5);
                                    break;
                                case 1:
                                    LeoRestartMeun(mContext,1);
                                    break;
                                case 2:
                                    LeoRestartMeun(mContext,2);
                                    break;
                                case 3:
                                    LeoRestartMeun(mContext,4);
                                    break;
                                case 4:
                                    LeoRestartMeun(mContext,3);
                                    break;
                                case 5:
                                    LeoRestartMeun(mContext,0);
                                    break;

                            }
                        }
                    })
                    .create();
            dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
            dialog.show();
        }
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        //当按下键盘上返回按钮，给出退出对话框
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            // System.exit(0);
            //直接退出程序
             /*Intent setIntent = new Intent(Intent.ACTION_MAIN);
              setIntent.addCategory(Intent.CATEGORY_HOME);
              setIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
              startActivity(setIntent);
             */
            onBackPressed();

            //不退出程序仅仅返回桌面
            return false;
        } else {
            return super.onKeyDown(keyCode, event);
        }
    }



    public void onBackPressed() {
            Intent setIntent = new Intent(Intent.ACTION_MAIN);
            setIntent.addCategory(Intent.CATEGORY_HOME);
            setIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            startActivity(setIntent);


    }



    class LeoRomObserver extends ContentObserver {
        LeoRomObserver(Handler handler) {
            super(handler);
        }
        ContentResolver contentResolver ;
        void observe() {
            contentResolver= mContext.getContentResolver();
            contentResolver.registerContentObserver(Settings.System.getUriFor("leo_tweaks_weather_label"), false,this);
            contentResolver.registerContentObserver(Settings.System.getUriFor("leo_tweaks_switch_weather"), false,this);
            contentResolver.registerContentObserver(Settings.System.getUriFor("leo_tweaks_ui_style"), false,this);
            contentResolver.registerContentObserver(Settings.System.getUriFor("leo_tweaks_switch_anavigation"), false,this);
        }

        @Override
        public void onChange(boolean selfChange) {
            GetHeadView();
        }


    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {

        int id = item.getItemId();
        switch (id) {
            case R.id.action_ota:
                ota();
                break;
            case R.id.action_layout_style:
                isMiPopModel(mContext);
                reload();
                break;
        }


        return super.onOptionsItemSelected(item);
    }
    public static  void  isMiPopModel(Context ctx) {
        int Styel;
        Styel  = Settings.System.getInt(ctx.getContentResolver(), "leo_tweaks_ui_style", 0) ^ 1;

        Settings.System.putInt(ctx.getContentResolver(), "leo_tweaks_ui_style", Styel);
        if (Styel== 0){
            Toast.makeText(ctx, "九宫格风格", LENGTH_SHORT).show();

        }else if(Styel== 1){
            Toast.makeText(ctx, "列表风格", LENGTH_SHORT).show();
        }
    }
    public  void ota( ) {
        if (AndroidUtils.getCustomOTA().equals(CODE)) {
            Intent ota = new Intent(mContext, SubActivity.class);
            ota.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.update);
            mContext.startActivity(ota);

      }else {
            Promptdonate(mContext);
        }

    }


    // 图片轮播控件
    private ViewPager mViewPager;
    private TextView mTvPagerTitle;
    private LinearLayout mLineLayoutDot;
    private ImageCarousel imageCarousel;
    private List<View> dots;//小点

    // 图片数据，包括图片标题、图片链接、数据、点击要打开的网站（点击打开的网页或一些提示指令）
    private List<ImageInfo> imageInfoList;
    /**
     * 初始化事件
     */
    private void initEvent() {
        imageInfoList = new ArrayList<>();
        imageInfoList.add(new ImageInfo(1, "ROM官网", null, "http://leorom.cc/os/c_leo.jpg", null));
        imageInfoList.add(new ImageInfo(1,mContext.getResources().getString( R.string.assist_grid_wifi), null, "http://leorom.cc/os/d_leo.jpg", null));
        imageInfoList.add(new ImageInfo(1, mContext.getResources().getString( R.string.assist_grid_autostart), null, "http://leorom.cc/os/leo_a.jpg", null));
        imageInfoList.add(new ImageInfo(1, mContext.getResources().getString( R.string.assist_grid_apps), null, "http://leorom.cc/os/leo_b.jpg", null));
        imageInfoList.add(new ImageInfo(1, mContext.getResources().getString(R.string.assist_grid_log), null, "http://leorom.cc/os/leo_c.jpg", null));
    }

    /**
     * 初始化控件
     */
    private void initView() {

        mViewPager = findViewById(R.id.image_viewPager);
        mTvPagerTitle = findViewById(R.id.tv_pager_title);
        mLineLayoutDot = findViewById(R.id.lineLayout_dot);

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
    private  Intent mIntent;
    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.pager_image1:

                mIntent = new Intent(mContext.getApplicationContext(), WebViewActivity.class);
                mIntent.putExtra("url", "http://www.leorom.cc/");
                mContext.startActivity(mIntent);

                break;
            case R.id.pager_image2:
                startActivity(new Intent(mContext,WifiPasswordActivity.class));
                break;
            case R.id.pager_image3:
                mIntent = new Intent(mContext, SubActivity.class);
                mIntent.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.Autostart);
                mContext.startActivity(mIntent);
                break;
            case R.id.pager_image4:
                startActivity(new Intent(mContext,SystemappActivity.class));
                break;
            case R.id.pager_image5:
                if (AndroidUtils.getCustomOTA().equals(CODE)) {
                    mIntent = new Intent(mContext, SubActivity.class);
                    mIntent.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.Log);
                    mContext.startActivity(mIntent);

                }else {
                    Promptdonate(mContext);
                }

                break;
        }

    }

    /**
     * 动态添加一个点
     *
     * @param linearLayout 添加到LinearLayout布局
     * @param backgount    设置
     * @return 小点的Id
     */
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


    /**
     * 资源图片转Drawable
     *
     * @param context 上下文
     * @param resId   资源ID
     * @return 返回Drawable图像
     */
    public static Drawable fromResToDrawable(Context context, int resId) {
        return ContextCompat.getDrawable(context, resId);
        //return context.getResources().getDrawable(resId);
    }

    /**
     * 添加多个轮播小点到横向线性布局
     *
     * @param linearLayout 线性横向布局
     * @param backgount    小点资源图标
     * @param number       数量
     * @return 返回小点View集合
     */
    private List<View> addDots(final LinearLayout linearLayout, Drawable backgount, int number) {
        List<View> dots = new ArrayList<>();
        for (int i = 0; i < number; i++) {
            int dotId = addDot(linearLayout, backgount);
            dots.add(findViewById(dotId));

        }
        return dots;
    }

}


