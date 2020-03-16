package com.tweaks.leo.ui;

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

import com.tweaks.leo.R;
import com.tweaks.leo.fragment.StatusBarIconFragment;
import com.tweaks.leo.fragment.StatusBarLogoFragment;


public class StatusBarIconTabLayoutFragment extends Fragment {
    private static Context mContext;


    private TabLayout mTabs;
    private ViewPager mPager;


    private static final int[] mFragments = new int[] {
			R.string.tabs_icon,
            R.string.tabs_icon_logo
    };

    public StatusBarIconTabLayoutFragment() {
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
      //  mAdapter = new TabAdapter(getSupportFragmentManager());
        mPager = (ViewPager) rootView.findViewById(R.id.viewpager);
        TabAdapter mPagerAdapter = new TabAdapter(getChildFragmentManager());
        mPager.setAdapter(mPagerAdapter);
        mTabs = (TabLayout)rootView.findViewById(R.id.tab);
        mTabs.setupWithViewPager(mPager);

        return rootView;

    }


    private static class TabAdapter extends FragmentPagerAdapter{
        public TabAdapter(FragmentManager fm) {
            super(fm);
        }

        @Override
        public CharSequence getPageTitle(int position) {
            return mContext.getString(mFragments[position]);
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
                case 0:
               return new StatusBarIconFragment();
                case 1:
                return new StatusBarLogoFragment();
            }
            return null;

        }
    }



}
