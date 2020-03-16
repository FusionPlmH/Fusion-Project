package com.salt.globalactions;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;

import android.provider.Settings;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.salt.frame.saltview.OverScrollListView;
import com.salt.config.R;

import static com.salt.frame.LeadFrame.getCustomDrawable;
import static com.salt.globalactions.Utils.setLeoNavKeypressAction;


public class ListViewDialogPowerMenu extends LeoGlobalActions implements View.OnClickListener {

    private OverScrollListView mOverScrollGridView;

    private ImageView mSound_selector;
    private ImageView mVibration_selector;
    private ImageView mSilence_selector;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        DialogTheme();
        super.onCreate(savedInstanceState);
        if(Build.VERSION.SDK_INT >= 21) {
            hideStatusBar();
            View decorView = getWindow().getDecorView();
            //让应用主题内容占用系统状态栏的空间,注意:下面两个参数必须一起使用 stable 牢固的
            int option = View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN|View.SYSTEM_UI_FLAG_LAYOUT_STABLE;
            decorView.setSystemUiVisibility(option);
            //设置状态栏颜色为透明
            getWindow().setStatusBarColor(Color.TRANSPARENT);
            getWindow().setNavigationBarColor(Color.TRANSPARENT);
        }


        mOverScrollGridView = (OverScrollListView)findViewById(R.id.list_power);
        mOverScrollGridView.setAdapter(new setAdapterView(this));
        mOverScrollGridView.setOnItemClickListener(new GridViewItemOnClick());
        mOverScrollGridView.setMaxOverScrollY(Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_scroll_number", 400));

        mSound_selector=findViewById(R.id.sound_selector);
        mSound_selector.setImageDrawable(getCustomDrawable(mContext,"sound_selector"));
        mVibration_selector=findViewById(R.id.vibration_selector);
        mVibration_selector.setImageDrawable(getCustomDrawable(mContext,"vibration_selector"));
        mSilence_selector=findViewById(R.id.silence_selector);
        mSilence_selector.setImageDrawable(getCustomDrawable(mContext,"silence_selector"));
        setdialog();
        GridViewNumber();
        mSound_selector.setOnClickListener(this);

        mVibration_selector.setOnClickListener(this);
        mSilence_selector.setOnClickListener(this);
    }

    @Override
    protected int initLayout() {
        return R.layout.grid_power_meun_list;
    }

    private void hideStatusBar() {
        WindowManager.LayoutParams attrs = getWindow().getAttributes();
        attrs.flags |= WindowManager.LayoutParams.FLAG_FULLSCREEN;
        getWindow().setAttributes(attrs);
    }

    @Override
    public void onClick(View v) {
        int id = v.getId();
        switch (id) {
            case R.id.sound_selector:
                setLeoNavKeypressAction(mContext,225);
                break;
            case R.id.vibration_selector:
                setLeoNavKeypressAction(mContext,227);
                break;

            case R.id.silence_selector:
                setLeoNavKeypressAction(mContext,226);
                break;

        }
    }
    public class setAdapterView extends BaseAdapter {



        private LayoutInflater inflater;
        public setAdapterView(Context context){
            inflater = LayoutInflater.from(context);
        }

        public int getCount() {
            GridViewNumber();
            return COUNT;
        }


        public Object getItem(int position) {
            return null;
        }


        public long getItemId(int position) {
            return position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            View view = inflater.inflate(R.layout.power_list_items, null);
            ImageView iv = (ImageView) view.findViewById(R.id.menu_img);
            iv.setImageDrawable(Icon[position]);
            TextView name = (TextView) view.findViewById(R.id.menu_name);
            name.setText(itemName[position]);
            setTextStyele( name);
            return view;
        }
    }

    public class GridViewItemOnClick implements AdapterView.OnItemClickListener {

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            initAction(position);
        }

    }




}
