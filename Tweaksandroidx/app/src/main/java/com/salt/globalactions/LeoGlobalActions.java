package com.salt.globalactions;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.salt.config.R;
import java.io.File;
import static com.salt.frame.LeadFrame.PACKAGE_SYSTEMUI;
import static com.salt.frame.LeadFrame.getCustomDrawable;
import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.globalactions.Utils.PowerMenuAction;
import static com.salt.globalactions.Utils.PowerMenuActionSimplify;
import static com.salt.globalactions.Utils.appICON;
import static com.salt.globalactions.Utils.getLeoCustomString;
import static com.salt.globalactions.Utils.setLeoFonts;
import static com.salt.config.SaltApp.getContext;
import static com.salt.utils.SaltProper.getCustomArray;
import static com.salt.utils.SaltProper.getCustomArrayDrawable;


public abstract class LeoGlobalActions extends Activity {
    public Context mContext;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mContext = this;
        final Window win = getWindow();
        win.addFlags(WindowManager.LayoutParams.FLAG_SHOW_WHEN_LOCKED
                | WindowManager.LayoutParams.FLAG_DISMISS_KEYGUARD
                | WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON
                | WindowManager.LayoutParams.FLAG_TURN_SCREEN_ON);
        if(Build.VERSION.SDK_INT >= 21) {
            hideStatusBar();
            View decorView = getWindow().getDecorView();
            //设置让应用主题内容占据状态栏和导航栏
            int option = View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN|View.SYSTEM_UI_FLAG_LAYOUT_STABLE;
            decorView.setSystemUiVisibility(option);
            //设置状态栏和导航栏颜色为透明
            getWindow().setStatusBarColor(Color.TRANSPARENT);
            getWindow().setNavigationBarColor(Color.TRANSPARENT);
        }
        if(initLayout()>0){
            setContentView(initLayout());
        }

    }

    public void setLeoTheme(){
            setTheme(R.style.Light_NoActionBar);
    }
    private void hideStatusBar() {
        if(Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_hidestatusbar", 0)==1){
            WindowManager.LayoutParams attrs = getWindow().getAttributes();
            attrs.flags |= WindowManager.LayoutParams.FLAG_FULLSCREEN;
            getWindow().setAttributes(attrs);
        }
    }
     Bitmap bitmapWallpaper;
    Drawable BlurDrawable;
    public  Bitmap mBitmap;
    public void Background(){

          View  decorView;
            int Blur=Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_blur", 15);
            if(Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_bg", 0)==1){
                String str=Settings.System.getString(getApplicationContext().getContentResolver(), "leo_salt_power_menu_bg_wallpaper_url");
                if (str != null) {
                    File backgroundwallpaper = new File(Uri.parse(str).getPath());
                    if (backgroundwallpaper != null) {
                        bitmapWallpaper = BitmapFactory.decodeFile(backgroundwallpaper.getAbsolutePath());

                        Bitmap finalBitmap =LeoGlobalBlur.with(mContext)
                                .bitmap(bitmapWallpaper)
                                .radius(Blur)
                                .scale(8)
                                .blur();
                        BlurDrawable= new BitmapDrawable(mContext.getResources(), finalBitmap);
                    }
                }
                decorView = getWindow().getDecorView();
                decorView.setBackground( BlurDrawable);
            }else{

                mBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.bg);
                Bitmap finalBitmap = LeoGlobalBlur.with(mContext)
                        .bitmap(mBitmap)
                        .radius(Blur)
                        .scale(8)
                        .blur();
                BlurDrawable= new BitmapDrawable(mContext.getResources(), finalBitmap);
                //decorView.setBackgroundColor(Color.parseColor("#9d000000"));
                // View decorView = getWindow().getDecorView();
               decorView = getWindow().getDecorView();
                decorView.setBackground( BlurDrawable);
            }




    }
    protected abstract int initLayout();
    public   void initAction(int style){
        PowerMenuAction(this,style,Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_affirm", 0)==1);

    };
    public   void initActionSimplify(int style){
        PowerMenuActionSimplify(this,style,Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_affirm", 0)==1);

    };
    @Override
    protected void onResume() {
        super.onResume();

    }
    @TargetApi(Build.VERSION_CODES.LOLLIPOP)
    public void hideNavKey(Context context) {
        if (Build.VERSION.SDK_INT > 11 && Build.VERSION.SDK_INT < 19) {
            View v = ((Activity) context).getWindow().getDecorView();
            v.setSystemUiVisibility(View.GONE);
        } else if (Build.VERSION.SDK_INT >= 19) {
            //for new api versions.
            View decorView = ((Activity) context).getWindow().getDecorView();
            int uiOptions = View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                    | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY;
            decorView.setSystemUiVisibility(uiOptions);
            getWindow().setStatusBarColor(Color.TRANSPARENT);
        }
    }


    public  Drawable[] Icon = { getCustomArrayDrawable("android","tw_ic_do_poweroff"),
            getCustomArrayDrawable("android","tw_ic_do_restart"),
          getCustomDrawable(getContext(),"tw_leo_quickboot"),
            getCustomDrawable(getContext(),"tw_leo_download"),
          getCustomDrawable(getContext(),"tw_leo_recovery"),
            appICON(getContext(),PACKAGE_SYSTEMUI ),
            getCustomArrayDrawable("android","tw_ic_do_mobiledata"),
          getCustomDrawable(getContext(),"tw_leo_airplane"),
            getCustomDrawable(getContext(),"tw_leo_flashlight"),
         getCustomDrawable(getContext(),"tw_leo_outdoors"),
          getCustomDrawable(getContext(),"tw_leo_floating"),
          getCustomDrawable(getContext(),"tw_leo_mipop"),
          getCustomDrawable(getContext(),"tw_leo_screenshot"),
           getCustomDrawable(getContext(),"tw_leo_screenrecord"),
          getCustomDrawable(getContext(),"tw_leo_tweaks"),
           getCustomDrawable(getContext(),"tw_leo_wifi"),
            getCustomArrayDrawable("android","tw_ic_do_lockdown"),
         getCustomDrawable(getContext(),"clear")

    };
    public  String[] itemName =getCustomArray("powermeun_style_values");



    public int COUNT =17;

    public String dialog(){

        String str;
        if(Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_dialog_title", 0)==1){
            str=getLeoCustomString(Settings.System.getString(getApplicationContext().getContentResolver(), "leo_salt_power_menu_dialog_title_string"));
        } else {
            str=getStringIdentifier(mContext,"dialog_powermenu_title");
        }

        return str;
    }
    public void DialogTheme(){
        if( Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_night_theme", 0)==1){
            setTheme(R.style.Theme_Dialog_Dark);
        } else {
            setTheme(R.style.Theme_Dialog);
        }
    }
    public void setdialog(){
        TextView textView=findViewById(R.id.grid_about_title);
        textView.setText(dialog());
    }
    @Override
    public void onBackPressed() {
        finish();
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
    public void  GridViewNumber(){

              COUNT=Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_item_quantity", COUNT );
    }


    public void setViewSize(ImageView icon) {
        int IconSize=Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_icon_size", 130);
        LinearLayout.LayoutParams params = (LinearLayout.LayoutParams) icon.getLayoutParams();
        params.width = IconSize;
        params.height = IconSize;
        icon.setLayoutParams(params);
    }

    public void setTextStyele(TextView textView) {
        textView.setTextSize(Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_text_size", 15));
        int  font=Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_textfont", 0);

        textView.setTypeface(setLeoFonts(getApplicationContext(),font,"sec-roboto-light",Typeface.NORMAL));
    }
    public void setTextReminderStyele(TextView textView) {
        int  font=Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_textfont", 0);

        textView.setTypeface(setLeoFonts(getApplicationContext(),font,"sec-roboto-light",Typeface.NORMAL));
        textView.setTextColor(Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_textcolor", Color.WHITE));
    }
    public void setTextStyeleColor(TextView textView) {
        textView.setTextColor(Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_textcolor", Color.WHITE));
    }



}
