package com.leoamber.powerservice;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;



import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import static android.content.ContentValues.TAG;
import static com.android.leo.global.LeoGlobalUtils.LeoGlobalActiong;
import static com.android.leo.global.LeoGlobalUtils.LeoHitomiActiong;
import static com.android.leo.global.LeoGlobalUtils.getLeoCustomString;
import static com.android.leo.global.LeoGlobalUtils.getLeoUri;
import static com.android.leo.global.LeoGlobalValues.getAPPNAME;
import static com.android.leo.global.LeoGlobalValues.getLeoPowerMenuTitleCustom;
import static com.android.leo.global.LeoGlobalValues.getLeoPowerMenuTitleCustomString;
import static com.android.leo.global.LeoGlobalValues.getLeoPowerRestartMenuEnabled;
import static com.android.leo.global.LeoGlobalValues.hitomiA;
import static com.android.leo.global.LeoGlobalValues.hitomiB;
import static com.android.leo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.leo.statusbar.LeoStatusbarSettings.setLeoUesrPowerMenuTitleCustom;
import static com.android.leo.statusbar.LeoStatusbarSettings.setLeoUesrPowerMenuTitleCustomString;
import static com.android.leo.statusbar.LeoStatusbarSettings.setLeoUesrPowerRestartMenuEnabled;

public class Globalactions extends Activity implements android.widget.AdapterView.OnItemClickListener {
    public Context mContext;

    public TextView mTextView;
    private int[] images={R.drawable.tw_ic_do_poweroff,
            R.drawable.tw_ic_do_restart,
            R.drawable.quick_reboot,
            R.drawable.ui,
            R.drawable.download,
            R.drawable.recovery,
            R.drawable.outdoors,
            R.drawable.flashlight,
            R.drawable.screenrecord,
            R.drawable.screenshot,
            R.drawable.mobiledata,
            R.drawable.mipop,
            R.drawable.floating,
            R.drawable.airplane,
            R.drawable.leo,
            R.drawable.wifi};

    @Override

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mContext=this;
        setContentView(R.layout.activity_main);
        final Window win = getWindow();
        win.addFlags(WindowManager.LayoutParams.FLAG_SHOW_WHEN_LOCKED
                | WindowManager.LayoutParams.FLAG_DISMISS_KEYGUARD
                | WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON
                | WindowManager.LayoutParams.FLAG_TURN_SCREEN_ON);
      String[] menuNames = {mContext.getResources().getString(R.string.hitomi_power_menu_shutdown),
              mContext.getResources().getString(R.string.hitomi_power_menu_restart),
              mContext.getResources().getString(R.string.hitomi_power_menu_quick_reboot),
              "SystemUI",
              mContext.getResources().getString(R.string.hitomi_power_menu_download),
              mContext.getResources().getString(R.string.hitomi_power_menu_recovery),
              mContext.getResources().getString(R.string.hitomi_power_menu_outdoors),
              mContext.getResources().getString(R.string.hitomi_power_menu_flashlight),
              mContext.getResources().getString(R.string.hitomi_power_menu_screenrecord),
              mContext.getResources().getString(R.string.hitomi_power_menu_screenshot),

              mContext.getResources().getString(R.string.hitomi_power_menu_mobiledata),
              mContext.getResources().getString(R.string.hitomi_power_menu_mipop),
              mContext.getResources().getString(R.string.hitomi_power_menu_floating),
              mContext.getResources().getString(R.string.hitomi_power_menu_airplane),
              "LeoTweaks",
              mContext.getResources().getString(R.string.hitomi_power_menu_wifi)};

             List<Map<String, Object>> listItems = new ArrayList<Map<String, Object>>();
              for (int i = 0; i < menuNames.length; i++ ) {
                   Map<String, Object> listItem = new HashMap<String, Object>();
                    listItem.put("img", images[i]);
                     listItem.put("name", menuNames[i]);
                    listItems.add(listItem);
              }
        SimpleAdapter sampleAdapter = new SimpleAdapter(this
                               , listItems
                               , R.layout.menu_items
                                , new String[] {"img", "name"}
                          , new int[] { R.id.menu_img, R.id.menu_name}
                     );
        listview = (OverScrollListView)findViewById(R.id.listview);
        listview.setAdapter(sampleAdapter);
        listview.setOnItemClickListener(this);
        mTextView=(TextView)findViewById(R.id.name);
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
        setdd();
        listview.setMaxOverScrollY(300);
    }
    public  void setAudioMode(Context ctx,int style) {
        AudioManager audioManager = (AudioManager) ctx.getSystemService("audio");
        switch (audioManager.getRingerMode()) {
            case 0:
                audioManager.setRingerMode(style);
                Toast.makeText(ctx,  mContext.getResources().getString(R.string.hitomi_power_menu_silence), Toast.LENGTH_LONG).show();
                return;
            case 1:
                audioManager.setRingerMode(style);
                Toast.makeText(ctx,  mContext.getResources().getString(R.string.hitomi_power_menu_vibration), Toast.LENGTH_LONG).show();
                return;
            case 2:
                audioManager.setRingerMode(style);
                Toast.makeText(ctx,  mContext.getResources().getString(R.string.hitomi_power_menu_sound), Toast.LENGTH_LONG).show();
                return;
            default:
                return;
        }
    }
    public void onSound(View view){
        setAudioMode(mContext,2);
        finish();
    }
    public void onVibration(View view){
        setAudioMode(mContext,1);
        finish();
    }
    public void onSilence(View view){
        setAudioMode(mContext,0);
        finish();
    }
    private LeoObserver mLeoObserver;
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }
        ContentResolver contentResolver ;
        void observe() {
            contentResolver= mContext.getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(getLeoPowerRestartMenuEnabled()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoPowerMenuTitleCustom()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoPowerMenuTitleCustomString()), false,this);
        }

        @Override
        public void onChange(boolean selfChange) {
            setdd();
        }



    }
    public String Name;
    public void setdd(){
        LeoStatusSettings(mContext);

        if(setLeoUesrPowerMenuTitleCustom){
            Name=getLeoCustomString(setLeoUesrPowerMenuTitleCustomString);
        }else {
            int str=R.string.hitomi_power_menu_name;
            if(getAPPNAME().equals(hitomiA())){
                Name=mContext.getResources().getString(str);
            }else if(getAPPNAME().equals(hitomiB())){
                Name=mContext.getResources().getString(str);
            }else {
                Name=mContext.getResources().getString(R.string.hitomi_power_menu_leo);
            }
        }
        mTextView.setText(Name);

        mTextView.setTypeface(Typeface.defaultFromStyle(Typeface.BOLD));



        style=setLeoUesrPowerRestartMenuEnabled;
    }
        private OverScrollListView listview;
       boolean style=true;

    @Override
    public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id) {
        Context context=mContext;
        switch (position) {
            case 0:// 关机
                LeoHitomiActiong(context,0);

                break;
            case 1://重启
                if(style){
                   RestartMenu(mContext,Name); //四键重启   listview.setVisibility(View.GONE);

                } else{
                    LeoHitomiActiong(context,1); //重新启动

                }
                break;
            case 2://快速重启
                LeoHitomiActiong(context,2);

                break;
            case 3://户外模式
                LeoHitomiActiong(context,6);
                finish();
                break;
            case 4://卡刷
                LeoHitomiActiong(context,4);
                break;
            case 5://线刷
                LeoHitomiActiong(context,3);

                break;
            case 6://户外模式
                LeoGlobalActiong(context,127,null);
                finish();
                break;
            case 7://手电
                LeoGlobalActiong(context,130,null);
                finish();
                break;
            case 8://录制屏幕
                LeoGlobalActiong(context,114,null);
                finish();
                break;
            case 9://截图
                LeoGlobalActiong(context,112,null);
                finish();
                break;

            case 10://移动数据
                LeoGlobalActiong(context,105,null);
                finish();
                break;
            case 11://悬浮球
                LeoGlobalActiong(context,131,null);
                finish();
                break;
            case 12://屏幕助手
                LeoGlobalActiong(context,132,null);
                break;
            case 13://飞机
                LeoGlobalActiong(context,122,null);
                finish();
                break;
            case 14://飞机
                LeoGlobalActiong(context,126,null);
                finish();
                break;
            case 15://飞机
                LeoGlobalActiong(context,120,null);
                finish();
                break;
        }

    }


    public   void RestartMenu(Context context,String STR){
        AlertDialog dialog = new AlertDialog.Builder(this)
                .setTitle(STR)//设置对话框的标题
                .setItems(R.array.leo_reboot_name, (dialog1, which) -> {
                    switch (which) {
                        case 0:
                            LeoHitomiActiong(context,1);
                            break;
                        case 1:
                            LeoHitomiActiong(context,2);
                            break;
                        case 2:
                            LeoHitomiActiong(context,3);
                            break;
                        case 3:
                            LeoHitomiActiong(context,4);
                            break;
                    }
                    dialog1.dismiss();
                }).create();
        dialog.setCanceledOnTouchOutside(true);
        //dialog.getWindow().setType(2003);
       dialog.show();
    }

}
