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
import com.tweaks.leo.fragment.BixbyKeyFragment;
import com.tweaks.leo.fragment.FingerprintKeyFragment;
import com.tweaks.leo.fragment.LauncherFragment;
import com.tweaks.leo.fragment.LauncherWeatherFragment;
import com.tweaks.leo.fragment.PowerKeyFragment;
import com.tweaks.leo.fragment.ReturnKeyFragment;
import com.tweaks.leo.fragment.StatusBarCarrierFragment;
import com.tweaks.leo.fragment.StatusBarOperatorFragment;


public class StatusBarKyesActionTabLayoutFragment extends Fragment {
    private static Context mContext;

    private TabAdapter mAdapter;
    private TabLayout mTabs;
    private ViewPager mPager;


    private static final int[] mFragments = new int[] {

			R.string.tabs_gesture_bixby,
            R.string.tabs_gesture_fingerprint,
            R.string.tabs_gesture_home,
            R.string.tabs_gesture_power


    };

    public StatusBarKyesActionTabLayoutFragment() {
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


        mAdapter = new TabAdapter(getChildFragmentManager());
        mPager = (ViewPager) rootView.findViewById(R.id.viewpager);
        mPager.setAdapter(mAdapter);
        mTabs = (TabLayout)rootView.findViewById(R.id.tab);
      //  mTabs.setViewPager(mPager);
      //  mPager .setOffscreenPageLimit(3);

        mTabs.setupWithViewPager(mPager);

        return rootView;

    }

    private static class TabAdapter extends FragmentPagerAdapter  {
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
               return new BixbyKeyFragment();
                case 1:
                return new FingerprintKeyFragment();

                case 2:

                    return new ReturnKeyFragment();
                case 3:
                    return new PowerKeyFragment();
            }
            return null;

        }
    }



}
