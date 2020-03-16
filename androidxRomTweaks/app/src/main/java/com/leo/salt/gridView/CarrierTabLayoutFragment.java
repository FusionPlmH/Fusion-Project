package com.leo.salt.gridView;

;
import android.content.Context;
import android.os.Bundle;



import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.leo.salt.fragment.KeyguardCarrierFragment;
import com.leo.salt.fragment.PulldownCarrierFragment;
import com.leo.salt.fragment.StatusBarCarrierFragment;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;


public class CarrierTabLayoutFragment extends Fragment {
    private  Context mContext;

    private TabAdapter mAdapter;
    private TabLayout mTabs;
    private ViewPager mPager;



    public CarrierTabLayoutFragment() {
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


        mAdapter = new CarrierTabLayoutFragment.TabAdapter(getFragmentManager());
        mPager = (ViewPager) rootView.findViewById(R.id.viewpager);
        mPager.setAdapter(mAdapter);
        mTabs = (TabLayout)rootView.findViewById(R.id.tab);
        PermissionFunction( mContext);
        mTabs.setTabMode(TabLayout.MODE_FIXED);
        mTabs.setupWithViewPager(mPager);
        return rootView;

    }
    private  String[] mFragments =getCustomArray("carrier_tab_title");
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
                case 2:
                    return new KeyguardCarrierFragment();
                case 1:
                    return new PulldownCarrierFragment();
                case 0:
                    return new StatusBarCarrierFragment();
            }
            return null;

        }
    }



}
