package com.salt.config.tweaks.activity;





import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;

import com.salt.base.SaltActivity;
import com.salt.module.ContactMeFragment;
import com.salt.module.ExtraInfoFragment;
import com.salt.module.MirrorFragment;
import com.salt.module.autostarts.ManageAutoStarts;
import com.salt.config.R;
import com.salt.config.tweaks.fragment.AppsSetting;
import com.salt.config.tweaks.fragment.LogThatShitFragment;
import com.salt.config.tweaks.fragment.SystemSoundFragment;
import com.salt.config.ui.BatteryTabLayoutFragment;
import com.salt.config.ui.CarrierTabLayoutFragment;
import com.salt.config.ui.ClockTabLayoutFragment;
import com.salt.config.ui.GlobalGesturesTabLayoutFragment;
import com.salt.config.ui.IconTabLayoutFragment;
import com.salt.config.ui.QsBarTabLayoutFragment;
import com.salt.config.ui.SystemTabLayoutFragment;

import java.io.Serializable;

import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.utils.KEY_TYPE;

public class FragTabSubActivity extends SaltActivity {
    FragmentType type;

    @Override
    protected int initLayout() {
        return R.layout.activity_fab;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }

    @Override
    protected String initAppName() {
        type = (FragmentType) getIntent().getSerializableExtra(KEY_TYPE);
        return type.mResTitle;
    }

    @Override
    protected void initData() {

        if(type!=null){
            setupToolBar(true);
            addContent(getFragmentByType(type));
        }
    }


    private void addContent(Fragment fragment){
        FragmentTransaction fragmentTransaction =getSupportFragmentManager().beginTransaction();
        fragmentTransaction.replace(R.id.container_fragment,fragment);
        fragmentTransaction.commit();
    }


    private Fragment getFragmentByType(FragmentType type){
        Fragment fragment = null;
        switch (type){
            case ServiceStrategy:
                fragment = new SystemTabLayoutFragment();
                break;
            case IconTabLayout:
                fragment = new IconTabLayoutFragment();
                break;
            case BatteryTabLayout:
                fragment = new BatteryTabLayoutFragment();
                break;
            case CarrierTabLayout:
                fragment = new CarrierTabLayoutFragment();
                break;
            case ClockTabLayout:
                fragment = new ClockTabLayoutFragment();
                break;
            case PulldownDataUsage:
                fragment = new QsBarTabLayoutFragment();
                break;
            case GlobalGesturesTab:
                fragment = new GlobalGesturesTabLayoutFragment();
                break;
        }
        return fragment;
    }

    public enum FragmentType implements Serializable {
        GlobalGesturesTab(getApksStringInt("grid_screen_three_title")),
        PulldownDataUsage(getApksStringInt("grid_datausage_more")),
        ClockTabLayout(getApksStringInt("grid_clock")),
        CarrierTabLayout(getApksStringInt("grid_carrier")),
        BatteryTabLayout(getApksStringInt("grid_battery")),
        IconTabLayout(getApksStringInt("grid_signal_logo")),
        ServiceStrategy(getApksStringInt(R.string.  system_tab));
        String mResTitle;
        FragmentType(String resTitle){
            mResTitle = resTitle;
        }
    }
}

