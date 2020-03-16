package com.leo.salt.gridView;




import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.widget.LineGridView;
import com.leo.salt.tweaks.view.widget.ListViewAdapter;
import com.leo.salt.tweaks.view.widget.ScrollListView;

import static com.leo.salt.tweaks.FragSettingActivity.FragmentType.*;

import static com.leo.salt.tweaks.FragSubActivity.FragmentType.*;
import static com.leo.salt.tweaks.resource.Resource.PACKAGE_SYSTEMUI;
import static com.leo.salt.tweaks.resource.Resource.appICON;
import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;

import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getCustomDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.utils.PrefUtils.SettingMenuService;
import static com.leo.salt.utils.PrefUtils.SubMenuService;
import static com.os.salt.OSBuild.SystemUrl.Phonebootloader;


public class GestureBuilderMenuFragment extends Fragment  {
    private ScrollListView mKyesGridView;

    public Context mContext;
    private View mView;

    public String GridTextView(String STR){
        return getStringIdentifier(getContext(),STR);
    }
        public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        mView= inflater.inflate(R.layout.system_gesture_meun, container, false);
            mContext=getActivity();

            initGridView(mView);
        return  mView;
    }

    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }


    private void initGridView(View v) {
        Drawable[] Icon = {
                appICON("com.samsung.android.bixby.service"),
                getCustomArrayDrawable("android","tw_ic_do_poweroff"),
                getCustomArrayDrawable("android","menu_ic_assistant_menu"),
                getCustomArrayDrawable("android","sem_resolver_deviceshare_sc_ic"),
                appICON("com.sec.android.app.launcher"),
                appICON(PACKAGE_SYSTEMUI ),
                appICON(PACKAGE_SYSTEMUI ),
                Resource.getCustomDrawable(mContext,"ball_2"),
                Resource.getCustomDrawable(mContext,"ic_pop_path"),
                appICON("com.sec.android.app.soundalive"),
                getCustomArrayDrawable("com.android.settings","se10_wipe_fingerprint"),

        };
        String[] itemName = {
                GridTextView("keypress_bixby_title"),
                GridTextView("keypress_power_title"),
                GridTextView("keypress_navigation_title"),
                GridTextView("grid_screen_three_title"),
                GridTextView("grid_screen_home_title"),
                GridTextView("grid_other_statusbar_title"),
                GridTextView("grid_keyguard_gesture"),
                GridTextView("grid_floatball"),
                GridTextView("grid_minipop"),
                getApksStringInt(R.string.skip_tracks_category),
                GridTextView("keypress_fingerprint_title"),

        };
        mKyesGridView = (ScrollListView) v.findViewById(R.id.list_gesture);
        if (Phonebootloader(3).equals("G97")) {
            mKyesGridView.setAdapter(new ListViewAdapter(getActivity(),10, itemName,getCustomArray("gesture_summary"),Icon));
            mKyesGridView.setOnItemClickListener(new  G21estureBuilderGridViewOnClick());
        }else  {
            mKyesGridView.setAdapter(new ListViewAdapter(getActivity(),11, itemName,getCustomArray("gesture_summary"),Icon));
            mKyesGridView.setOnItemClickListener(new GestureBuilderGridViewOnClick());
        }
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
                    SettingMenuService(mContext,HWKWYS);
                    break;
                case 3:// 关机
                    SettingMenuService(mContext,GlobalGestures);
                    break;
                case 4:// 关机
                    SettingMenuService(mContext,GesturesLauncher);
                    break;
                case 5:// 关机
                    SubMenuService(mContext,StatusBarAction);
                    break;
                case 6:// 关机
                    SubMenuService(mContext,KeyguardAction);
                    break;
                case 7:// 关机
                    SettingMenuService(mContext,FloatBall);
                    break;
                case 8:// 关机
                    SettingMenuService(mContext,MiniPOP);
                    break;
                case 9:// 关机
                    SubMenuService(mContext,LockVolumeAction);
                case 10:// 关机
                    SubMenuService(mContext,Fingerprint);
                    break;
            }

        }

    }

    public class G21estureBuilderGridViewOnClick implements AdapterView.OnItemClickListener {
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
                    SettingMenuService(mContext,HWKWYS);
                    break;
                case 3:// 关机
                    SettingMenuService(mContext,GlobalGestures);
                    break;
                case 4:// 关机
                    SettingMenuService(mContext,GesturesLauncher);
                    break;
                case 5:// 关机
                    SubMenuService(mContext,StatusBarAction);
                    break;
                case 6:// 关机
                    SubMenuService(mContext,KeyguardAction);
                    break;
                case 7:// 关机
                    SettingMenuService(mContext,FloatBall);
                    break;
                case 8:// 关机
                    SettingMenuService(mContext,MiniPOP);
                    break;
                case 9:// 关机
                    SubMenuService(mContext,LockVolumeAction);
            }

        }

    }

}