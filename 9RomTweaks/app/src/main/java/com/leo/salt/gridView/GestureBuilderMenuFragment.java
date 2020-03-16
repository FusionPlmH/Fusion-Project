package com.leo.salt.gridView;




import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.app.Fragment;
import android.support.design.widget.Snackbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.widget.LineGridView;

import static com.leo.salt.tweaks.FragSettingActivity.FragmentType.*;

import static com.leo.salt.tweaks.FragSubActivity.FragmentType.*;
import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.PACKAGE_SYSTEMUI;
import static com.leo.salt.tweaks.resource.Resource.appICON;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;

import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.SamsungGoodLock;
import static com.leo.salt.utils.PrefUtils.SettingMenuService;
import static com.leo.salt.utils.PrefUtils.SubMenuService;


public class GestureBuilderMenuFragment extends Fragment  {
    private LineGridView mKyesGridView;
    private TextView mKyesName;
    public Context mContext;
    private View mView;

    private LineGridView mScreenGridView;
    private TextView mScreenName;
    private LineGridView mOtherGridView;
    private TextView mOtherName;
    public String GridTextView(String STR){
        return getStringIdentifier(getContext(),STR);
    }
        public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        mView= inflater.inflate(R.layout.system_gesture_meun, container, false);
            mContext=getActivity();
            initValues(mView);
            initGridView(mView);
        return  mView;
    }

    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }

    private void initValues(View v) {
        mKyesName = (TextView) v.findViewWithTag("grid_keypress_title");
        mKyesName.setText( GridTextView("grid_keypress_title"));
        mScreenName= (TextView) v.findViewWithTag("grid_screen_title");
        mScreenName.setText( GridTextView("grid_screen_title"));
        mOtherName= (TextView) v.findViewWithTag("grid_other_title");
        mOtherName.setText( GridTextView("grid_other_title"));
    }
    private void initGridView(View v) {
        mKyesGridView = (LineGridView) v.findViewWithTag("grid_keypress");
        mKyesGridView.setAdapter(new GestureBuilderGridAdapter(getActivity()));
        mKyesGridView.setOnItemClickListener(new GestureBuilderGridViewOnClick());
        mScreenGridView = (LineGridView) v.findViewWithTag("grid_screen");
        mScreenGridView.setAdapter(new GestureScreenGridAdapter(getActivity()));
        mScreenGridView.setOnItemClickListener(new GestureScreenGridViewOnClick());

        mOtherGridView = (LineGridView) v.findViewWithTag("grid_other");
        mOtherGridView.setAdapter(new GestureOtherGridAdapter(getActivity()));
        mOtherGridView.setOnItemClickListener(new GestureOtherGridViewOnClick());
    }


    public class GestureBuilderGridViewOnClick implements AdapterView.OnItemClickListener {

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 关机

                    SubMenuService(mContext,Bixby);
                    break;
                case 1:// 关机

                    SubMenuService(mContext,Power);
                    break;
                case 2:// 关机

                    SubMenuService(mContext,Fingerprint);
                    break;
                case 3:// 关机


                    SettingMenuService(mContext,HWKWYS);
                    break;

            }

        }

    }


    public class  GestureBuilderGridAdapter extends BaseAdapter {

        private static final int COUNT =4;
        Drawable[] Icon = {
                appICON("com.samsung.android.app.spage"),
                getCustomArrayDrawable("android","tw_ic_do_poweroff"),
                getCustomArrayDrawable("com.android.settings","se10_wipe_fingerprint"),
                getCustomArrayDrawable("android","menu_ic_assistant_menu")


        };
        private String[] itemName = {
                GridTextView("keypress_bixby_title"),
                GridTextView("keypress_power_title"),
                GridTextView("keypress_fingerprint_title"),
                GridTextView("keypress_navigation_title")
        };
        private LayoutInflater inflater;
        public  GestureBuilderGridAdapter(Context context){
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


    public class GestureScreenGridViewOnClick implements AdapterView.OnItemClickListener {

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 关机

                    SettingMenuService(mContext,GlobalGestures);
                    break;
                case 1:// 关机


                    SettingMenuService(mContext,GesturesLauncher);
                    break;

            }

        }

    }


    public class  GestureScreenGridAdapter extends BaseAdapter {

        private static final int COUNT =2;
        Drawable[] Icon = {
                getCustomArrayDrawable("android","sem_resolver_deviceshare_sc_ic"),
                appICON("com.sec.android.app.launcher")


        };
        private String[] itemName = {
                GridTextView("grid_screen_three_title"),
                GridTextView("grid_screen_home_title"),


        };
        private LayoutInflater inflater;
        public  GestureScreenGridAdapter(Context context){
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
    public class GestureOtherGridViewOnClick implements AdapterView.OnItemClickListener {

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 关机

                    SettingMenuService(mContext,StatusBarAction);
                    break;
                case 1:// 关机


                    SubMenuService(mContext,KeyguardAction);
                    break;
                case 2:// 关机

                    SettingMenuService(mContext,FloatBall);
                    break;
                case 3:// 关机


                    SettingMenuService(mContext,MiniPOP);
                    break;
            }

        }

    }


    public class  GestureOtherGridAdapter extends BaseAdapter {

        private static final int COUNT =4;
        Drawable[] Icon = {
                appICON(PACKAGE_SYSTEMUI ),
                appICON(PACKAGE_SYSTEMUI ),
                Resource.getCustomDrawable(mContext,"ball_2"),
                Resource.getCustomDrawable(mContext,"ic_pop_path"),
        };
        private String[] itemName = {
                GridTextView("grid_other_statusbar_title"),
                GridTextView("grid_keyguard_gesture"),
                GridTextView("grid_floatball"),
                GridTextView("grid_minipop")

        };
        private LayoutInflater inflater;
        public  GestureOtherGridAdapter(Context context){
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
}