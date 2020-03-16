package com.leo.salt.tweaks.view;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.provider.Settings;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;

import android.widget.TextView;

import com.leo.salt.tools.constants.KeepShellPublic;
import com.leo.salt.tweaks.MainActivity;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.amber.UserActivity;
import com.leo.salt.tweaks.resource.Resource;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.LeoGlobalLunar.getToday;
import static com.leo.salt.tweaks.view.widget.DialogView.InternetCheckView;
import static com.leo.salt.utils.ExtraInfo.getOperator;
import static com.leo.salt.utils.PrefUtils.DrawerCard;
import static com.leo.salt.utils.PrefUtils.DrawerCardView;
import static com.leo.salt.utils.PrefUtils.DrawerCarrier;
import static com.leo.salt.utils.PrefUtils.DrawerCarrierString;
import static com.leo.salt.utils.PrefUtils.getLeoCustomString;
import static com.leo.salt.utils.PrefUtils.getLeoUri;
import static com.leo.salt.utils.PrefUtils.getLeoWallpaper;

public class LeoNavigationDrawer extends FrameLayout {
    public ImageView mbgCardView;
    public Context mContext;
    public MainActivity mActivity;
    public LeoNavigationDrawer(Context context) {
        super(context);
        mContext=context;
    }

    public LeoNavigationDrawer(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContext=context;

    }

    public TextView mDATE;
    public TextView mCarrier;
    protected void onFinishInflate() {
        super.onFinishInflate();
        mActivity=new MainActivity();
        mCarrier= findViewById(R.id.app_carrier);


        mbgCardView= findViewById(R.id.app_cardvgView);

        mDATE=  findViewById(R.id.app_date);



        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();

        initView();
    }

    public void  initView(){

        HideNavigationBar();
        mDATE.setText(getToday(getContext()));

        setCardView(DrawerCard(mContext),DrawerCardView(mContext));
        if (DrawerCarrier(mContext)){
            mCarrier.setText(getLeoCustomString(DrawerCarrierString(mContext)));
        } else {
            mCarrier.setText(getOperator());
        }

    }


    public void setCardView(boolean isVisible,String str) {
        if (isVisible){
            mbgCardView.setBackground(getLeoWallpaper(getContext(),str));
        } else {
            mbgCardView.setBackground(Resource.getCustomDrawable(getContext(),"leo_timg"));
        }

    }

    private LeoObserver mLeoObserver;
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver contentResolver= mContext.getContentResolver();

            contentResolver.registerContentObserver(getLeoUri("leo_salt_drawer_carrier"), false,this);
            contentResolver.registerContentObserver(getLeoUri("leo_salt_drawer_carrier_string"), false,this);
            contentResolver.registerContentObserver(getLeoUri("leo_salt_drawer_card_wallpaper_url"), false,this);
            contentResolver.registerContentObserver(getLeoUri("leo_salt_drawer_card"), false,this);
            contentResolver.registerContentObserver(getLeoUri("leo_salt_hide_statusbar"), false,this);
            contentResolver.registerContentObserver(getLeoUri("leo_salt_hide_statusbar_whitelist"), false,this);
        }

        @Override
        public void onChange(boolean selfChange) {
            initView();
        }
    }
    public  void HideNavigationBar(){
     //   KeepShellPublic.INSTANCE.doCmdSync("pm grant com.leo.salt.tweaks android.permission.WRITE_SECURE_SETTINGS");
        boolean z=Settings.System.getInt(getContext().getContentResolver(), "leo_salt_hide_statusbar", 0) == 1;
        String s="leo_salt_hide_statusbar_whitelist";
        String str = ",-";
        Settings.Global.putString(getContext().getContentResolver(), "policy_control", z ?    "immersive.status=apps"+str+Settings.System.getString(getContext().getContentResolver(), s): "null");
    }

}
