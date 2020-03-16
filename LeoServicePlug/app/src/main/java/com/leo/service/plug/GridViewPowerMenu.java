package com.leo.service.plug;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.provider.Settings;
import android.renderscript.Allocation;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.leo.service.plug.OverScrollGridView;
import com.leo.service.plug.R;
import com.leo.service.plug.Resource;

import java.io.File;

import static com.leo.service.plug.LeoApp.getContext;
import static com.leo.service.plug.Utils.getLeoUri;
import static com.leo.service.plug.Utils.setLeoNavKeypressAction;


public class GridViewPowerMenu extends LeoGlobalActions implements View.OnClickListener {

    private OverScrollGridView mOverScrollGridView;
    private ImageView mSound_selector;
    private ImageView mVibration_selector;
    private ImageView mSilence_selector;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        setLeoTheme();
        super.onCreate(savedInstanceState);


        Background();
        mOverScrollGridView = (OverScrollGridView)findViewById(R.id.grid_about);
        mOverScrollGridView.setAdapter(new setAdapterView(this));
        mOverScrollGridView.setOnItemClickListener(new GridViewItemOnClick());
        mOverScrollGridView.setNumColumns(Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_item_number", 3));
        mOverScrollGridView.setMaxOverScrollY(Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_scroll_number", 300));
        TextView reminder=(TextView)findViewById(R.id.reminder);
        setTextReminderStyele(reminder);
        mSound_selector=findViewById(R.id.sound_selector);
        mSound_selector.setImageDrawable(Resource.getCustomDrawable(mContext,"sound_selector"));
        mVibration_selector=findViewById(R.id.vibration_selector);
        mVibration_selector.setImageDrawable(Resource.getCustomDrawable(mContext,"vibration_selector"));
        mSilence_selector=findViewById(R.id.silence_selector);
        mSilence_selector.setImageDrawable(Resource.getCustomDrawable(mContext,"silence_selector"));
        mSound_selector.setOnClickListener(this);

        mVibration_selector.setOnClickListener(this);
        mSilence_selector.setOnClickListener(this);

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

    @Override
    protected int initLayout() {
        return R.layout.grid_power_meun;
    }

    public class setAdapterView extends BaseAdapter {

        private LayoutInflater inflater;
        public setAdapterView(Context context){
            GridViewNumber();
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
            View view = inflater.inflate(R.layout.grid_item_power, null);
            ImageView iv = (ImageView) view.findViewById(R.id.grid_item_icon);
            iv.setImageDrawable(Icon[position]);
            setViewSize(   iv);
            TextView name = (TextView) view.findViewById(R.id.grid_item_name);
            name.setText(itemName[position]);
          setTextStyele( name);

           // name.setTypeface(Typeface.createFromFile(Environment.getExternalStorageDirectory().toString()+"/LeoTweaks/fonts/LeoHitomi.ttf"));
            setTextStyeleColor(name);
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
