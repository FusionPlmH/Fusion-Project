
package com.tweaks.leo.activity;

import android.app.Fragment;

import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;

import com.tweaks.leo.R;
import com.tweaks.leo.base.BaseActivity;
import com.tweaks.leo.kt.FragmentApplistions;
import com.tweaks.leo.kt.FragmentPerformance;
import com.tweaks.leo.kt.ImgFragment;
import com.tweaks.leo.theme.Utils;


public class SystemappActivity extends BaseActivity {
    private ImgFragment mFragment;

    @Override
    protected int initLayout() {
     return R.layout.activity_simple_container;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (savedInstanceState == null) {
            this.mFragment = new ImgFragment();
            replaceFragment(R.id.fragment_container, mFragment);
        }
        Utils.StatusBarColor(this);
        getToolbarViews();
    }
    private void getToolbarViews(){
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setTitle(R.string.assist_grid_apps);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    }

    public void replaceFragment(int viewId, Fragment fragment) {
        getFragmentManager().beginTransaction().replace(viewId, fragment).commit();
    }
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                finish();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

}
