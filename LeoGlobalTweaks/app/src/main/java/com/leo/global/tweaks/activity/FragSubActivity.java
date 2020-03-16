package com.leo.global.tweaks.activity;


import android.app.Fragment;
import android.app.FragmentTransaction;
import android.os.Bundle;

import com.leo.global.fragment.BixbyKeyFragment;
import com.leo.global.tweaks.R;
import com.leo.global.tweaks.base.BaseFragActivity;

import java.io.Serializable;

public class FragSubActivity extends BaseFragActivity {


    @Override
    protected int initLayout() {
        return R.layout.activity_fragment;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        FragmentType type = (FragmentType) getIntent().getSerializableExtra(KEY_TYPE);
        if(type!=null){
            setupToolBar(type.mResTitle, true);
            addContent(getFragmentByType(type));
        }
    }

    private void addContent(Fragment fragment){
        FragmentTransaction fragmentTransaction = getFragmentManager().beginTransaction();
        fragmentTransaction.replace(R.id.fragment_container,fragment);
        fragmentTransaction.commit();
    }

    private Fragment getFragmentByType(FragmentType type){
        Fragment fragment = null;
        switch (type){
            case SETTING:
                fragment = new BixbyKeyFragment();
                break;

        }
        return fragment;
    }

    public enum FragmentType implements Serializable {
        SETTING(R.string.app_name);

        int mResTitle;

        FragmentType(int resTitle){
            mResTitle = resTitle;
        }
    }


}

