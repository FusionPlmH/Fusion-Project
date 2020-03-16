package com.leo.salt.tweaks;


import android.app.Activity;

import android.app.Fragment;

import android.app.FragmentTransaction;
import android.content.ContentResolver;
import android.content.Context;

import android.content.Intent;

import android.database.ContentObserver;
import android.graphics.Bitmap;

import android.graphics.Color;

import android.graphics.Point;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;

import android.support.annotation.NonNull;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.BottomNavigationView;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.ViewDragHelper;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.widget.Toolbar;
import android.util.Base64;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;

import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;

import android.widget.ListView;
import android.widget.TextView;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

import com.bumptech.glide.Glide;
import com.bumptech.glide.util.Util;
import com.leo.salt.gridView.GestureBuilderMenuFragment;
import com.leo.salt.gridView.SystemCustomMenuFragment;

import com.leo.salt.gridView.AboutMenuFragment;
import com.leo.salt.gridView.OtherMenuFragment;


import com.leo.salt.tools.service.BackupRestoreService;
import com.leo.salt.tweaks.amber.DonateActivity;
import com.leo.salt.tweaks.amber.WebViewActivity;
import com.leo.salt.tweaks.base.AppBarStateChangeListener;
import com.leo.salt.tweaks.base.BaseActivity;

import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.updates.UpdatesMessage;
import com.leo.salt.tweaks.updates.jQuery;
import com.leo.salt.tweaks.view.LeoNavigationDrawer;
import com.leo.salt.tweaks.view.widget.BackupsDialog;
import com.leo.salt.tweaks.view.widget.WeatherView;;
import com.leo.salt.user.info.UserUsingHelpActivity;



import org.json.JSONException;
import org.json.JSONObject;



import static com.leo.salt.tools.service.NotificationUtil.showOTANotification;
import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.*;
import static com.leo.salt.tweaks.view.widget.DialogView.*;

import static com.leo.salt.utils.PrefUtils.*;
import static com.leo.salt.utils.PrefUtils.DayNight;


public class
MainActivity extends BaseActivity implements UpdatesMessage.OnOTAListener, BackupsDialog.OnDialogFragmentListener{


    private  Toolbar toolbar;
    private static final String TAG = "Leo_Settings";
  public   intSettings mintSettings;
    public LeoNavigationDrawer mLeoNavigationDrawer;

    @Override
    protected int initLayout() {
        return R.layout.activity_main;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }
    private BottomNavigationView mBottomNavigationView;

    public WeatherView.WeatherClient mWeatherRec;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        setTitle(R.string.app_name);
        mLeoNavigationDrawer= new LeoNavigationDrawer(mContext);
        setUpMenu();
        DrawerLayoutView();
        BottomNavigationView();
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
        mintSettings= new intSettings();
        initDirs();
        mWeatherRec=new WeatherView.WeatherClient();
        copyAssetFolder();
        createSDCardDupdateirimg();
        AppPackage( mContext);


    }


    ListView mListView;
  public DrawerLayout drawerLayout;
    public jQuery mjQuery;
    public void DrawerLayoutView(){

        mListView = (ListView)findViewById(R.id.list_home);
        mListView.setOnItemClickListener( new ListViewItemOnClick());
        mListView.setAdapter(new ListAdapter(mContext));

       drawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(
                this, drawerLayout, toolbar, 0, 0);
        //初始化状态
        drawerLayout.addDrawerListener(toggle);
        //toggle.syncState();
        setDrawerLeftEdgeSize(this,drawerLayout,0.2f);
        //蒙层颜色
        drawerLayout.setScrimColor(Color.TRANSPARENT);
        drawerLayout.addDrawerListener(new DrawerLayout.DrawerListener() {
            @Override
            public void onDrawerStateChanged(int newState) {

            }

            @Override
            public void onDrawerSlide(@NonNull View drawerView, float slideOffset) {
                // 滑动的过程中执行 slideOffset：从0到1
                //主页内容
                View content = drawerLayout.getChildAt(0);
                //侧边栏
                View menu = drawerView;

                float scale = 1 - slideOffset;
                float leftScale = (float) (1 - 0.3 * scale);
                float rightScale = (float) (0.7f + 0.3 * scale);
                menu.setScaleY(leftScale);
                content.setScaleY(rightScale);
                content.setTranslationX(menu.getMeasuredWidth() * slideOffset);
            }

            @Override
            public void onDrawerOpened(@NonNull View drawerView) {

                mBottomNavigationView.setVisibility(View.VISIBLE);
            }

            @Override
            public void onDrawerClosed(@NonNull View drawerView) {

                mBottomNavigationView.setVisibility(View.VISIBLE);
            }
        });
    }
    private void setDrawerLeftEdgeSize (Activity activity, DrawerLayout drawerLayout,float displayWidthPercentage) {
        if (activity == null || drawerLayout == null)
            return;
        try {
            Field leftDraggerField =
                    drawerLayout.getClass().getDeclaredField("mLeftDragger");//Right
            leftDraggerField.setAccessible(true);
            ViewDragHelper leftDragger = (ViewDragHelper) leftDraggerField.get(drawerLayout);
            Field edgeSizeField = leftDragger.getClass().getDeclaredField("mEdgeSize");
            edgeSizeField.setAccessible(true);
            int edgeSize = edgeSizeField.getInt(leftDragger);
            Point displaySize = new Point();
            activity.getWindowManager().getDefaultDisplay().getSize(displaySize);
            edgeSizeField.setInt(leftDragger, Math.max(edgeSize, (int) (displaySize.x *
                    displayWidthPercentage)));
        } catch (NoSuchFieldException e) {
        } catch (IllegalArgumentException e) {
        } catch (IllegalAccessException e) {
        }
    }
    public  class ListViewItemOnClick implements AdapterView.OnItemClickListener {
        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            new Handler().postDelayed(() -> {
                PositionStyle(position);
            },300);
            DrawerLayout  drawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
            drawerLayout.closeDrawer(GravityCompat.START);
        }

        public  void PositionStyle(int position){

            switch (position) {
                case 0:

                   startActivity(new Intent(mContext, DonateActivity.class));
                    break;
                case 1:
                    String str2;
                    if(isChineseLanguage()){
                        str2="file:///android_asset/FusionLeo_CN.html";
                    }else {
                        str2="file:///android_asset/FusionLeo_EN.html";
                    }
                    WebDialog(mContext,str2,getStringIdentifier(getContext(),"team_thankyou"));
                    break;
                case 2:
                    intCodeViewDialog(mContext,getStringIdentifier(getContext(),"leo_slide_meun_code"));
                    break;

                case 3:
                    String LOG;
                    if(isChineseLanguage()){
                        LOG="https://www.leorom.cc/index.php/Changelog-CN.html";
                    }else {
                        LOG="https://www.leorom.cc/index.php/Changelog-EN.html";
                    }
                    Intent webViewIntent = new Intent(mContext.getApplicationContext(), WebViewActivity.class);
                    webViewIntent.putExtra("url", LOG);
                    mContext.startActivity(webViewIntent);
                    break;
                case 4:
                    startActivity(new Intent(mContext, UserUsingHelpActivity.class));
                    break;
                case 5:
                    shareMsg(mContext,getStringIdentifier(getContext(),"share_info2"),getStringIdentifier(getContext(),"share"),getStringIdentifier(getContext(),"share_info"),null);
                    break;
                case 6:
                    getFragmentManager().beginTransaction().add(BackupsDialog.newInstance(BACKUP_OR_RESTORE_DIALOG_REQUEST_CODE), "backup_restore").commit();
                    break;
            }
        }

    }

    public class ListAdapter extends BaseAdapter {

        private LayoutInflater inflater;
        Drawable[] Icon = {
                Resource.getCustomDrawable(mContext,"ic_donate"),
                Resource.getCustomDrawable(mContext,"leo_team"),
                Resource.getCustomDrawable(mContext,"ic_code"),
                Resource.getCustomDrawable(mContext,"ic_changelog"),
                Resource.getCustomDrawable(mContext,"ic_help"),
                Resource.getCustomDrawable(mContext,"ic_share"),
                Resource.getCustomDrawable(mContext,"ic_backup")
        };

        private String[] itemName = getCustomArray("home_meun_values");


        public ListAdapter(Context context){


            inflater = LayoutInflater.from(context);
        }
        private static final int COUNT =7;
        public int getCount() {
            return COUNT;
        }
        public Object getItem(int position) {
            return null;
        }

        public long getItemId(int position) {
            return position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            View view = inflater.inflate(R.layout.mian_meun_items, null);
            ImageView iv = (ImageView) view.findViewById(R.id.meunIcon);
            iv.setImageDrawable(Icon[position]);
            TextView name = (TextView) view.findViewById(R.id.meunName);
            name.setText(itemName[position]);
            return view;
        }
    }



    public void BottomNavigationView(){

        mBottomNavigationView = findViewById(R.id.navigation);
        // 添加监听
        mBottomNavigationView.setOnNavigationItemSelectedListener(item -> {
            onNavigationItem(item.getItemId());
            toolbar. setSubtitle(item.getTitle().toString());

           // mBottomNavigationView.setSelectedItemId( mBottomNavigationView.getMenu().getItem(0).getItemId());
            return true;
        });

        getFragmentManager().beginTransaction().replace(R.id.fragment_container,mAboutMenuFragment).commit();
    }
    public void onNavigationItem(int itemId) {

        Fragment fragment = null;
        switch (itemId) {
            case R.id.navigation_home:
            default:
                fragment = mFragments[0];
                break;
            case R.id.navigation_ui:
                fragment = mFragments[1];
                break;
            case R.id.nav_display:
                fragment = mFragments[2];
                break;
            case R.id.navigation_action:
                fragment = mFragments[3];
                break;


        }

        if (fragment != null) {
            getFragmentManager().beginTransaction().replace(R.id.fragment_container, fragment).commit();
        }

    }

    private Fragment mAboutMenuFragment = new AboutMenuFragment();
    private Fragment mSystemCustomMenuFragment = new SystemCustomMenuFragment();
    private Fragment mGestureBuilderMenuFragment = new GestureBuilderMenuFragment();
    private Fragment mOtherMenuFragment = new OtherMenuFragment();

    private Fragment[] mFragments = new Fragment[]{mAboutMenuFragment,mSystemCustomMenuFragment,
            mGestureBuilderMenuFragment, mOtherMenuFragment};




    private void setUpMenu() {
        AppSetting();
    }
    @Override
    public void OTACheck(String jsonData) {
        try {
            JSONObject jsonObject=new JSONObject(jsonData);
            String otamessage = jsonObject.getString("message");
            String version = jsonObject.getString("versionName");
            if (DonatePermission()) {
                if(ota(mContext)){
                    if (otamessage .equals("1")) {
                        if(getLeoBuild("ro.build.display.id").equals(version)){
                            Log.v(TAG ,"Not push");
                        }else {
                            showOTANotification(mContext,getStringIdentifier(getContext(),"ota_state_info_leo")+version,getStringIdentifier(getContext(),"ota_state_info_leo_summary"),getStringIdentifier(getContext(),"ota_state_info_usable"));
                        }
                    }else {
                        Log.v(TAG ,"Not push");
                    }
                }else {
                    Log.v(TAG ,"NO enable system update detection");
                }
            }
        } catch (JSONException e1) {
            e1.printStackTrace();
        }
    }

    public void AppSetting(){


        mjQuery=new  jQuery();
        mjQuery.rollingPicture(this,mContext,mAppBarLayout);
        mCheckUpdates=new UpdatesMessage(this,mHandler,UPDATE_UI);
        GradientBgStyle=Settings.System.getInt(mContext.getContentResolver(), "leo_salt_global_power_globala_ctionsStyle_style", 0);
        drawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
        if(DrawerBlur(mContext)){
            applyBlur();
        }else {
            drawerLayout.setBackground(null);
        }
        FloatingActionButton fab = findViewById(R.id.home_fab);
        fab.setOnClickListener(v -> {
            if (DonatePermission()) {
                int style=GradientBgStyle;
                if(style==0){
                    PowerMenuService(mContext,"com.leo.ACTION_POWER_SIMPLIFY");
                } if(style==1){
                    PowerMenuService(mContext,"com.leo.ACTION_POWER_A");
                }else  if(style==2){
                    PowerMenuService(mContext,"com.leo.ACTION_POWER_B");
                }else  if(style==3){
                    PowerMenuService(mContext,"com.leo.ACTION_POWER_C");
                }else  if(style==4){
                    PowerMenuService(mContext,"com.leo.ACTION_POWER_D");
                }
            }else {
                PowerMenuService(mContext,"com.leo.ACTION_POWER_SIMPLIFY");
            }
        });

    }


    private void applyBlur() {
        drawerLayout.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
            @Override
            public boolean onPreDraw() {
                drawerLayout.getViewTreeObserver().removeOnPreDrawListener(this);
                drawerLayout
                .buildDrawingCache();

                Bitmap bmp = drawerLayout.getDrawingCache();
                blur(drawerLayout,bmp);
                return true;
            }
        });
    }

    @Override
    public void onBackPressed() {

        if(drawerLayout.isDrawerOpen(GravityCompat.START)){  //如果打开了DrawerLayout则返回键是关闭
            drawerLayout.closeDrawers();
        } else{
            Intent setIntent = new Intent(Intent.ACTION_MAIN);
            setIntent.addCategory(Intent.CATEGORY_HOME);
            setIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
           startActivity(setIntent);
        }

    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        //当按下键盘上返回按钮，给出退出对话框
        if (keyCode == KeyEvent.KEYCODE_BACK) {
                onBackPressed();
            return false;
        } else {
            return super.onKeyDown(keyCode, event);
        }
    }
    public int GradientBgStyle;
    private LeoObserver mLeoObserver;
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }
        void observe() {
            ContentResolver contentResolver= mContext.getContentResolver();
            contentResolver.registerContentObserver(getLeoUri("leo_salt_blur_shadow"), false,this);
            contentResolver.registerContentObserver(getLeoUri("leo_salt_power_menu_style"), false,this);
            contentResolver.registerContentObserver(getLeoUri("leo_salt_global_power_globala_ctionsStyle_style"), false,this);

            AppSetting();
        }

        @Override
        public void onChange(boolean selfChange) {
            AppSetting();
        }
    }

    public  class intSettings{
        public  intSettings(){

            CollapsingToolbarLayout mCollapsingToolbarLayout = findViewById(R.id.toolbar_layout);
            mAppBarLayout.addOnOffsetChangedListener(new AppBarStateChangeListener() {
                @Override
                public void onStateChanged(AppBarLayout appBarLayout, State state) {
                    if( state == State.EXPANDED ) {
                        mCollapsingToolbarLayout.setExpandedTitleColor(Color.WHITE);
                        mCollapsingToolbarLayout.setTitle(ROMNAME);
                        setAndroidNativeLightStatusBar(false);
                        mCollapsingToolbarLayout.setTitleEnabled(true);
                    }else if(state == State.COLLAPSED){
                        if(LightStatusBar==false){
                            setAndroidNativeLightStatusBar(false);
                        } else {
                            setAndroidNativeLightStatusBar(true);

                        }
                        mCollapsingToolbarLayout.setTitleEnabled(false);
                    }else {

                        mBottomNavigationView.setVisibility(View.VISIBLE);
                        if( LightStatusBar){
                            setAndroidNativeLightStatusBar(false);
                            // reload();
                        } else {
                            setAndroidNativeLightStatusBar(true);
                            //  reload();
                        }

                    }
                }
            });
        }

        public  void setAndroidNativeLightStatusBar( boolean dark) {
            int oldSystemUiFlags = getWindow().getDecorView().getSystemUiVisibility();
            int newSystemUiFlags = oldSystemUiFlags;
            if (dark) {
                newSystemUiFlags |= View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR;
            } else {
                newSystemUiFlags &= ~(View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
            }
            if (newSystemUiFlags != oldSystemUiFlags) {
                getWindow().getDecorView().setSystemUiVisibility(newSystemUiFlags);
            }
        }



    }


    @Override
    public void onRestoreRequested(String filePath, boolean isConfirmed) {
        if (isConfirmed) {
            launchBackupRestoreService(1, filePath);
        } else {
            getFragmentManager().beginTransaction().add(BackupsDialog.backupRestoreInstance(RESTORE_FILE_SELECTOR_DIALOG_REQUEST_CODE, true, filePath), "restore_confirm").commit();
        }
    }


    @Override
    public void onBackupRestoreResult(int which) {
        switch (which) {
            case 0:
                launchBackupRestoreService(which, null);
                break;
            case 1:
                getFragmentManager().beginTransaction().add(BackupsDialog.newInstance(RESTORE_FILE_SELECTOR_DIALOG_REQUEST_CODE), "restore_selector").commit();
                break;
        }
    }

    private void launchBackupRestoreService(int which, String filePath) {
        String action;
        Intent intent = new Intent(this, BackupRestoreService.class);
        switch (which) {
            case 0:
                action =SERVICE_INTENT_ACTION_BACKUP;
                break;
            case 1:
                action = SERVICE_INTENT_ACTION_RESTORE;
                intent.putExtra(BACKUP_FILE_PATH_EXTRA_KEY, filePath);
                break;
            default:
                action = null;
        }
        if (action != null) {
            intent.setAction(action);
            startService(intent);
            if (which == 1) {
                finish();
            }
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {

        switch (item.getItemId()){
            case android.R.id.home:
                onBackPressed();
                break;
        }
        return super.onOptionsItemSelected(item);
    }
}
