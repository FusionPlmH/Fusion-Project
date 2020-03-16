package com.leo.salt.gridView;

;
import android.content.Context;
import android.os.Bundle;


import android.support.design.widget.TabLayout;

import android.app.Fragment;
import android.app.FragmentManager;

import android.support.v13.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.leo.salt.fragment.KeyguardCarrierFragment;
import com.leo.salt.fragment.PulldownAnalogClockFragment;
import com.leo.salt.fragment.PulldownCarrierFragment;
import com.leo.salt.fragment.PulldownClockFragment;
import com.leo.salt.fragment.PulldownDateFragment;
import com.leo.salt.fragment.PulldownNotificationFuzzy;
import com.leo.salt.fragment.StatusBarBackgroundFragment;
import com.leo.salt.fragment.StatusBarCarrierFragment;
import com.leo.salt.fragment.StatusBarClockFragment;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BasePreferenceFragment;

import java.util.ArrayList;
import java.util.List;

import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;


public class UIBGTabLayoutFragment extends BasePreferenceFragment {
    private  Context mContext;

    private TabAdapter mAdapter;
    private TabLayout mTabs;
    private ViewPager mPager;



    public UIBGTabLayoutFragment() {
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mContext = getActivity();
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
    }
    View rootView;
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedinstanceState) {


            rootView = inflater.inflate(R.layout.tab_main, container, false);


        mAdapter = new UIBGTabLayoutFragment.TabAdapter(getChildFragmentManager());
        mPager = (ViewPager) rootView.findViewById(R.id.viewpager);
        mPager.setAdapter(mAdapter);
        mTabs = (TabLayout)rootView.findViewById(R.id.tab);

        mTabs.setTabMode(TabLayout.MODE_FIXED);
        mTabs.setupWithViewPager(mPager);
        return rootView;

    }
    private  String[] mFragments =getCustomArray("uibg_tab_title");
    private  class TabAdapter extends FragmentPagerAdapter {
        public TabAdapter(FragmentManager fm) {
            super(fm);
        }

        @Override
        public CharSequence getPageTitle(int position) {
            return mFragments[position];
        }
        @Override
        public int getCount() {
            return mFragments.length;
        }

        @Override
        public float getPageWidth(int position) {
            return (1.0f);
        }

        @Override
        public Fragment getItem(int position) {
            switch (position) {

                case 1:
                    return new PulldownNotificationFuzzy();
                case 0:
                    return new StatusBarBackgroundFragment();
            }
            return null;

        }
    }



}
