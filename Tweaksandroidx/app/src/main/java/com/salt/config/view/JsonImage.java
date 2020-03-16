package com.salt.config.view;

import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;

import androidx.viewpager.widget.ViewPager;

import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.salt.frame.saltview.GradientColorTextView;
import com.salt.config.MainActivity;
import com.salt.config.R;

import com.salt.setting.SaltSetting;
import com.youth.banner.Banner;
import com.youth.banner.BannerConfig;
import com.youth.banner.Transformer;


import org.json.JSONException;
import org.json.JSONObject;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;


import static com.salt.base.SaltActivity.LightStatusBar;
import static com.salt.base.SaltActivity.UPDATE_UI;
import static com.salt.frame.LeadFrame.getCustomDrawable;
import static com.salt.frame.utils.SaltUtils.SaltSettings.getLeoInt;
import static com.salt.frame.utils.SaltUtils.SaltSettings.getLeoUri;
import static com.salt.config.tweaks.fragment.AppsSetting.mCarouselAnimationKey;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.shareMsg;
import static com.salt.utils.utils.APP_UPDATE;


public class JsonImage implements  View.OnClickListener {
    private String LinKing;
    private ImageView imageView;
    public GradientColorTextView mTextView;
    private MainActivity mContext;
    private SaltSetting mSaltSetting;
    private Banner banner;
    private FloatingActionButton mFab;
    public JsonImage(MainActivity context){
        mContext=context;
        sendRequestWithHttpURLConnection();
        getLinKingView();

    }
  public   List images;
   public void loadData(AppBarLayout mAppBarLayout){
       mSaltSetting=new SaltSetting(mContext);
       LinearLayout mLinearLayout = (LinearLayout) mContext.findViewById(R.id.CollapsingToolbarLayoutText);
       mFab= (FloatingActionButton) mContext.findViewById(R.id.fab);
       mFab.setOnClickListener(this);
       mTextView = (GradientColorTextView) mContext.findViewById(R.id.CollapsingToolbarLayoutSubText);
       imageView  = (ImageView) mContext.findViewById(R.id.leo_rom_logo);
       imageView.setImageDrawable(getCustomDrawable(mContext,"leologo"));
       banner = (Banner)  mContext.findViewById(R.id.banner);
       banner.setIndicatorGravity(BannerConfig.RIGHT);
       mTextView.setVisibility(View.VISIBLE);
       mTextView.setOnClickListener(this);
       imageView.setVisibility(View.VISIBLE);
       updateSetting();
       IntentFilter intentFilter = new IntentFilter();
       intentFilter.addAction(APP_UPDATE);
       mContext.registerReceiver(mSaltAppsReceiver,intentFilter);
       banner.setImageLoader(new GlideImageLoader());
       mAppBarLayout.addOnOffsetChangedListener(new AppBarStateChangeListener() {
           @Override
           public void onStateChanged(AppBarLayout appBarLayout,State state) {
               if( state ==State.EXPANDED ) {
                   mContext.setAndroidNativeLightStatusBar(false);
                   mLinearLayout.setVisibility(View.VISIBLE);
                   mContext.setTitle("");

                   initValues( imageView);
                   sendRequestWithHttpURLConnection();
                   getLinKingView();
               }else if(state == State.COLLAPSED){
                   imageView.setVisibility(View.GONE);
                   mLinearLayout.setVisibility(View.GONE);
                   mContext.setTitle(R.string.app_name);
                   if(LightStatusBar==false){
                       mContext.setAndroidNativeLightStatusBar(false);
                   } else {
                       mContext.setAndroidNativeLightStatusBar(true);
                   }
               }else {
                   if( LightStatusBar){
                       mContext.setAndroidNativeLightStatusBar(false);
                   } else {
                       mContext.setAndroidNativeLightStatusBar(true);
                   }
                   mContext.setTitle("");
                   mLinearLayout.setVisibility(View.VISIBLE);
               }
           }
       });

    }
    public void slideshowStyle(Banner banner,int style){
      Class<? extends ViewPager.PageTransformer> Acwcordion ;
         if(style==0){
             Acwcordion=Transformer.Accordion;
         }else if(style==1){
             Acwcordion= Transformer.FlipVertical;
         }else if(style==2){
             Acwcordion=Transformer.BackgroundToForeground;
         }else if(style==3){
             Acwcordion= Transformer.ZoomOutSlide;
         }else if(style==4){
             Acwcordion= Transformer.CubeIn;
         }else if(style==5){
             Acwcordion= Transformer.CubeOut;
         }else if(style==6){
             Acwcordion= Transformer.DepthPage;
         }else if(style==7){
             Acwcordion= Transformer.FlipHorizontal;
         }else if(style==8){
             Acwcordion= Transformer.ForegroundToBackground;
         }else if(style==9){
             Acwcordion= Transformer.RotateDown;
         }else if(style==10){
             Acwcordion= Transformer.RotateUp;
         }else if(style==11){
             Acwcordion= Transformer.ScaleInOut;
         }else if(style==12){
             Acwcordion=Transformer.Stack;
         }else if(style==13){
             Acwcordion=Transformer.Tablet;
         }else if(style==14){
             Acwcordion= Transformer.ZoomOut;
         }else if(style==15){
             Acwcordion= Transformer.ZoomIn;
         }else {
             Acwcordion= Transformer.Default;
         }
        banner.setBannerAnimation(Acwcordion);
    }
    public void updateSetting(){
        mSaltSetting.SettingSalt();
        slideshowStyle(banner,getLeoInt(mContext,
                mCarouselAnimationKey, 15));
        int mms=3;
        banner.setDelayTime(mms* 1000);
       // HideNavigationBar();
    }
    public  void HideNavigationBar(){
        //   KeepShellPublic.INSTANCE.doCmdSync("pm grant com.salt.config.tweaks android.permission.WRITE_SECURE_SETTINGS");
        boolean z=mSaltSetting.hideStatusBar;
        String s=mSaltSetting.hideStatusBarString;
        String str = ",-";
        Settings.Global.putString(mContext.getContentResolver(), "policy_control", z ?    "immersive.status=apps"+str+s: "null");
    }
    private void initValues(View v) {
        //创建一个AnimationSet对象
        AnimationSet animationSet = new AnimationSet(true);
        //创建一个AlphaAnimation对象,1表示完全不透明，0表示透明，从不透明到完全透明
        AlphaAnimation alphaAnimation = new AlphaAnimation(0, 1);
        //设置动画执行的时间（单位：毫秒）
        alphaAnimation.setDuration(2500);
        //将AlphaAnimation对象添加到AnimationSet当中
        animationSet.addAnimation(alphaAnimation);
        //使用ImageView的startAnimation方法开始执行动画
        imageView.startAnimation(animationSet);
    }
    public void loadJsonImage(String jsonData) {
        try {
            JSONObject jsonObject=new JSONObject(jsonData);
            images = new ArrayList();
            String str=jsonObject.getString("img");
            images.add(str);
            images.add(jsonObject.getString("img1"));
            images.add(jsonObject.getString("img2"));
            images.add(jsonObject.getString("img3"));
            images.add(jsonObject.getString("img4"));
            //设置图片集合
            banner.setImages(images);
            mTextView.setText(LinKing);
            banner.start();
        } catch (JSONException e1) {
            e1.printStackTrace();
        }
    }
    public static void copyToClipboard(Context context, CharSequence content) {
        ClipboardManager clipboard = (ClipboardManager) context.getSystemService(Context.CLIPBOARD_SERVICE);
        if (clipboard != null) {
            clipboard.setPrimaryClip(ClipData.newPlainText(null, content));//参数一：标签，可为空，参数二：要复制到剪贴板的文本
            if (clipboard.hasPrimaryClip()) {
                clipboard.getPrimaryClip().getItemAt(0).getText();
            }
        }
    }

    private void getLinKingView(){
        new Thread(() -> {
            try {
                URL url = new URL("http://api.guaqb.cn/v1/onesaid/");
                //2.  HttpURLConnection
                HttpURLConnection conn=(HttpURLConnection)url.openConnection();
                //3.  set(GET)
                conn.setRequestMethod("GET");
                //4.  getInputStream
                InputStream is = conn.getInputStream();
                //5.  解析is，获取responseText，这里用缓冲字符流
                BufferedReader reader = new BufferedReader(new InputStreamReader(is));
                StringBuilder sb = new StringBuilder();
                String line = null;
                while((line=reader.readLine()) != null){
                    sb.append(line);
                }
               LinKing=sb.toString();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }).start();
    }
    Handler mHandler= new Handler() {
        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case UPDATE_UI:
                    String response = (String) msg.obj;
                    loadJsonImage(response);
            }
        }
    };


    public void sendRequestWithHttpURLConnection() {
        //开启线程来发起网络请求
        new Thread(() -> {
            HttpURLConnection connection;
            try {
                URL url = new URL("http://os.leorom.cc/json/jQuery.json");
                connection = (HttpURLConnection) url .openConnection();
                connection.setRequestMethod("GET");
                connection.setConnectTimeout(1000);
                connection.setReadTimeout(1000);
                InputStream inputStream = connection.getInputStream();
                //下面对获取到的输入流读取
                BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
                StringBuilder response = new StringBuilder();
                String line;
                while ((line = reader.readLine()) != null) {
                    response.append(line);
                }
                Message message = new Message();
                message.what =UPDATE_UI;
                //将服务器返回的结果存放到message中
                message.obj = response.toString();
                mHandler.sendMessage(message);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }).start();
    }


   public void onStart() {
        banner.startAutoPlay();
    }


   public void onStop() {
        banner.stopAutoPlay();
    }

    @Override
    public void onClick(View v) {

        int id = v.getId();
        doNormal(id);
    }
    private void doNormal(int id) {
        switch (id) {
            case R.id.fab:
                Intent intent = new Intent();
                intent.setAction("com.leo.ACTION_GLOBALACTIONS");
                mContext.startActivity(intent);

                break;
            case R.id.CollapsingToolbarLayoutSubText:
                if(getLeoInt(mContext, "leo_home_share_linking", 1) == 1){
                    String str1;
                    if(getLeoInt(mContext, "leo_home_linking_info", 0) == 1){
                        str1 =LinKing;
                    }else{
                        str1 =LinKing+" 来自 "+getApksStringInt(R.string.app_name);

                    }
                    copyToClipboard(mContext, str1);
                    shareMsg(mContext,"一言分享",str1);
                    mContext.showSnackn("复制分享:"+"\n"+"["+LinKing+"]",mContext);
                }
                break;


        }
    }
    private final BroadcastReceiver mSaltAppsReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals(APP_UPDATE)) {
                updateSetting();
            }
        }
    };
}
