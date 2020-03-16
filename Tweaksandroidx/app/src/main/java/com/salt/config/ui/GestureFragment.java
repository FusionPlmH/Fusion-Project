package com.salt.config.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.salt.config.R;
import com.salt.config.adapter.RecyclerItemDecoration;
import com.salt.config.adapter.RecyclerViewAdapter;
import com.salt.config.bean.DataBean;
import java.util.ArrayList;
import static com.salt.frame.LeadFrame.getCustomDrawable;
import static com.salt.config.tweaks.activity.FragSubActivity.FragmentType.*;
import static com.salt.config.tweaks.activity.FragTabSubActivity.FragmentType.GlobalGesturesTab;
import static com.salt.utils.SaltProper.BuildVERSIONCODES;
import static com.salt.utils.SaltProper.SystemUrl.Phonebootloader;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.startUtils.startSub;
import static com.salt.utils.startUtils.startTabSub;

public class GestureFragment extends Fragment {

    private RecyclerView Gesturerecyclerview;
    private RecyclerViewAdapter GestureViewAdapter;
    ArrayList<DataBean> SaltGestureList= new ArrayList<>();
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {

        View root = inflater.inflate(R.layout.fragment_gesture, container, false);

        Gesturerecyclerview= (RecyclerView)root.findViewById(R.id.recycler_gesture);
        loadGestureListData(false);
        return root;
    }


    private void loadGestureListData( boolean inversion) {
            DataBean dataBean = new DataBean(getCustomDrawable(getActivity(),"ic_bixby_gestures_setting"),
                    getApksStringInt("keypress_bixby_title"),
                    getApksStringInt("keypress_bixby_title_summary")
            );
            SaltGestureList.add(dataBean);
            DataBean dataBean2 = new DataBean(getCustomDrawable(getActivity(),"ic_power_gestures_setting"),
                    getApksStringInt("keypress_power_title"),
                    getApksStringInt("keypress_power_title_summary")
            );
            SaltGestureList.add(dataBean2);
        DataBean dataBean3 = new DataBean(getCustomDrawable(getActivity(),"ic_keys_gestures_setting"),
                    getApksStringInt("keypress_navigation_title"),
                    getApksStringInt("keypress_navigation_title_summary"));
            SaltGestureList.add(dataBean3);
            DataBean dataBean4 = new DataBean(getCustomDrawable(getActivity(),"ic_fullscreen_gestures_setting"),
                    getApksStringInt("grid_screen_three_title"),
                    getApksStringInt("grid_screen_title_summary"));
            SaltGestureList.add(dataBean4);
            DataBean dataBean5 = new DataBean( getCustomDrawable(getActivity(),"ic_home_gestures_setting"),
                    getApksStringInt("grid_screen_home_title"),
                    getApksStringInt("grid_screen_home_title_summary"));
            SaltGestureList.add(dataBean5);
            DataBean dataBean6 = new DataBean(getCustomDrawable(getActivity(),"ic_lockscreen_gestures_setting"),
                    getApksStringInt("grid_keyguard_gesture"),
                    getApksStringInt("grid_keyguard_gesture_summary")
            );
            SaltGestureList.add(dataBean6);
            DataBean dataBean7 = new DataBean(getCustomDrawable(getActivity(),"ic_statusbar_gesture_setting"),
                    getApksStringInt("grid_other_statusbar_title"),
                    getApksStringInt("grid_other_statusbar_title_summary")
            );
            SaltGestureList.add(dataBean7);
            DataBean dataBean8 = new DataBean( getCustomDrawable(getActivity(),"ball_2"),
                    getApksStringInt("grid_minipop"),
                    getApksStringInt("grid_minipop_summary"));
            SaltGestureList.add(dataBean8);
            DataBean dataBean9 = new DataBean(getCustomDrawable(getContext(),"ic_pop_path"),
                    getApksStringInt("grid_floatball"),
                    getApksStringInt("grid_floatball_summary"));
            SaltGestureList.add(dataBean9);

            if (Phonebootloader(3).equals("G97")) {

            }else  {
                DataBean dataBean10 = new DataBean( getCustomDrawable(getActivity(),"ic_volume_gesture_setting"),
                        getApksStringInt(R.string.skip_tracks_category),
                        getApksStringInt("lock_music_summary"));
                SaltGestureList.add(dataBean10);
                DataBean dataBean11= new DataBean(getCustomDrawable(getActivity(),"ic_fingerprint_gestures_setting"),
                        getApksStringInt("keypress_fingerprint_title"),
                        getApksStringInt("keypress_fingerprint_title_summary"));
                SaltGestureList.add(dataBean11);
            }
        GestureViewAdapter = new RecyclerViewAdapter(getActivity(),SaltGestureList);
        Gesturerecyclerview.setAdapter(GestureViewAdapter);
        Gesturerecyclerview.setNestedScrollingEnabled(false);
        Gesturerecyclerview.addItemDecoration( new RecyclerItemDecoration(getActivity()));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        Gesturerecyclerview.setLayoutManager(linearLayoutManager);
        linearLayoutManager.setReverseLayout(inversion);
        linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);
        GestureViewAdapter.setRecyclerItemClickListener((Position, dataBeanList) -> {
            switch (Position) {
                case 0:// 关机
                    startSub(getActivity(),Bixby);
                    break;
                case 1:// 关机

                    startSub(getActivity(),Power);
                    break;
                case 2:// 关机

                    startSub(getActivity(),HwKyes);
                    break;
                case 3:// 关机
                    if (BuildVERSIONCODES()) {
                        startTabSub(getActivity(),GlobalGesturesTab);
                    }else{
                        startSub(getActivity(),GlobalGestures);
                    }
                    break;
                case 4:// 关机
                    startSub(getActivity(),SystemLauncher);
                    break;
                case 5:// 关机
                    startSub(getActivity(),KeyguardAction);

                    break;
                case 6:// 关机

                    startSub(getActivity(),StatusBarAction);
                    break;
                case 7:// 关机

                    startSub(getActivity(),MiniPOP);
                    break;
                case 8:// 关机

                    startSub(getActivity(),FloatBall);
                    break;
                case 9:// 关机

                    startSub(getActivity(),Volume);
                    break;
                case 10:// 关机
                    startSub(getActivity(),Fingerprint);
                    break;
            }
        });

    }

}