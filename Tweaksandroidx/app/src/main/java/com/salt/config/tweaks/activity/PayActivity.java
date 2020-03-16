package com.salt.config.tweaks.activity;

import android.annotation.SuppressLint;
import android.app.Activity;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;

import android.content.Context;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.salt.config.R;
import com.salt.config.adapter.RecyclerViewGridAdapter;
import com.salt.config.bean.DataBean;
import com.salt.widget.LineGridView;

import java.util.ArrayList;

import static com.salt.frame.LeadFrame.getCustomDrawable;
import static com.salt.utils.SaltProper.getCustomArray;
import static com.salt.utils.startUtils.WeChatScan;
import static com.salt.utils.startUtils.toAliPayCode;


public class PayActivity extends Activity {
    private Context mContext;
    LineGridView mGridView;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        final Window win = getWindow();
        win.addFlags(WindowManager.LayoutParams.FLAG_SHOW_WHEN_LOCKED
                | WindowManager.LayoutParams.FLAG_DISMISS_KEYGUARD
                | WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON
                | WindowManager.LayoutParams.FLAG_TURN_SCREEN_ON);
        hideBottomUIMenu();
        mContext = this;
        setContentView(R.layout.activity_pay);
        mGridView = (LineGridView)findViewById(R.id.grid_pay);

        mGridView.setAdapter(new PayGridViewAdapter(mContext));
        mGridView.setOnItemClickListener(new GridViewItemOnClick());

    }

    public class PayGridViewAdapter extends BaseAdapter {

        private static final int COUNT =6;
        Drawable[] Icon = {getCustomDrawable(mContext,"ic_alipay_pay_icon"),
               getCustomDrawable(mContext,"ic_alipay_collection_icon"),
                getCustomDrawable(mContext,"ic_alipay_scan_icon"),
             getCustomDrawable(mContext,"ic_wechat_pay_icon"),
              getCustomDrawable(mContext,"ic_wechat_collect_icon"),
                getCustomDrawable(mContext,"ic_wechat_scan_icon"),

        };
        private String[] itemName = getCustomArray("pay_style");
        private LayoutInflater inflater;
        public PayGridViewAdapter(Context context){
            inflater = LayoutInflater.from(context);
        }

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
            View view = inflater.inflate(R.layout.grid_item, null);
            ImageView iv = (ImageView) view.findViewById(R.id.grid_item_icon);
            iv.setImageDrawable(Icon[position]);
            TextView name = (TextView) view.findViewById(R.id.grid_item_name);
            name.setText(itemName[position]);
            return view;
        }
    }
    public class GridViewItemOnClick implements AdapterView.OnItemClickListener {

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 支付宝付款码
                    finish();
                    toAliPayCode(mContext,"20000056");

                    break;
                case 1:// 支付宝收款码
                    finish();
                    toAliPayCode(mContext,"20000123");

                    break;
                case 2:// 支付宝扫一扫
                    finish();
                   toAliPayCode(mContext,"10000007");

                    break;
                case 3:// 微信付款码
                    finish();
                    WeChatScan(mContext,"offline.ui.WalletOfflineCoinPurseUI");
                    break;
                case 4:// 微信收款码
                    finish();
                    WeChatScan(mContext,"collect.ui.CollectMainUI");
                    break;
                case 5:// 微信扫一扫
                    finish();
                    WeChatScan(mContext,"scanner.ui.BaseScanUI");
                    break;
            }

        }

    }
    protected void hideBottomUIMenu() {
        if (Build.VERSION.SDK_INT > 11 && Build.VERSION.SDK_INT < 19) {
            View v = this.getWindow().getDecorView();
            v.setSystemUiVisibility(View.GONE);
        } else if (Build.VERSION.SDK_INT >= 19) {
            View decorView = getWindow().getDecorView();
            int uiOptions = View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                    | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY | View.SYSTEM_UI_FLAG_FULLSCREEN;
            decorView.setSystemUiVisibility(uiOptions);
        }
    }
}