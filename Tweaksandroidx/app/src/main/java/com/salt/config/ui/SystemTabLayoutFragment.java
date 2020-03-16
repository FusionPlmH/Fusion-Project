package com.salt.config.ui;
import android.os.Bundle;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;


import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.salt.config.R;
import com.salt.config.tweaks.fragment.SystemFragment;
import com.salt.config.tweaks.fragment.SystemGoogleFragment;
import com.salt.config.tweaks.fragment.SystemSoundFragment;

import org.salt.preference.SaltSettingCategoryPreference;

import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.utils.SaltProper.getApksStringInt;
public class SystemTabLayoutFragment extends Fragment {
    private TabAdapter mAdapter;
    private TabLayout mTabs;
    private ViewPager mPager;



    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedinstanceState) {
        View  rootView = inflater.inflate(R.layout.tab_main, container, false);


        mAdapter = new TabAdapter(getChildFragmentManager());
        mPager = (ViewPager) rootView.findViewById(R.id.viewpager);
        mPager.setAdapter(mAdapter);
        mTabs = (TabLayout)rootView.findViewById(R.id.tab);
        mTabs.setTabMode(TabLayout.MODE_FIXED);
        mTabs.setupWithViewPager(mPager);
        return rootView;
    }


    class TabAdapter extends FragmentPagerAdapter {
        String titles[] = getTitles();


        public TabAdapter(FragmentManager fm) {
            super(fm);
        }

        @Override
        public CharSequence getPageTitle(int position) {
            return titles[position];
        }


        @Override
        public int getCount() {
            return 3;
        }
        @Override
        public Fragment getItem(int position) {
            switch (position) {
                case 0:
                    return new SystemGoogleFragment();
                case 1:
                    return new SystemFragment();

                case 2:
                    return new SystemSoundFragment();
            }
            return null;

        }


    }

    private String[] getTitles() {
        String titleString[];
        titleString = new String[]{
                getApksStringInt(R.string.system_tab_google),getApksStringInt(R.string.system_tab_other),getApksStringInt("grid_sound") };
        return titleString;
    }



}
