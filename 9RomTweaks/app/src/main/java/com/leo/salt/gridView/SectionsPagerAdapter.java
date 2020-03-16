package com.leo.salt.gridView;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;



/**
 * A [FragmentPagerAdapter] that returns a fragment corresponding to
 * one of the sections/tabs/pages.
 */
public class SectionsPagerAdapter extends FragmentPagerAdapter {


    private static final String[] TAB_TITLES = new String[]{"sadd", "dasdasdsadsad"};

    public SectionsPagerAdapter(FragmentManager fm) {
        super(fm);
       // mContext = context;
    }



    public Fragment getItem(int position) {
        Fragment fragment = null;
        switch (position) {
            case 0:
               // fragment = FirstFragment.newInstance(12);
                break;
            case 1:
              //  fragment = SecondFragment.newInstance(30);
                break;
            case 2:
               // fragment = ThirdFragment.newInstance(21);
                break;
            case 3:
              //  fragment = FourthFragment.newInstance(14);
                break;

        }
        return fragment;
    }


    @Nullable
    @Override
    public CharSequence getPageTitle(int position) {
        return TAB_TITLES[position];
    }

    @Override
    public int getCount() {
        // Show 2 total pages.
        return 2;
    }
}