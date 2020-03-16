package com.leo.salt.tweaks.base;


import android.os.Bundle;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.Snackbar;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.widget.FrameLayout;

import com.leo.salt.tweaks.R;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.getColorAttr;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;


public abstract class BaseCollapsingPickerActivity extends BaseActivity {



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        mCollapsingToolbarLayout = findViewById(R.id.toolbar_layout) ;

       //
        // mCollapsingToolbarLayout.setTitle(initCollapsingTextText());
        // showSnack(mContext.getResources().getString(initCollapsingTextText()));
     //   showSnacknAME(initCollapsingTextText());
        // mCollapsingLinearLayout=findViewById(R.id.CollapsingToolbarLayoutText);

    }
    protected Toolbar toolbar;

    public void showSnack(String mensaje){
        Snackbar snackbar = Snackbar.make(mContext.findViewById(android.R.id.content), mensaje, Snackbar.LENGTH_SHORT)
                .setAction("Action", null);

        snackbar.show();

    }

    @Override
    protected void onResume() {
        super.onResume();

    }
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        /* 获取菜单项的ID */
        int id = item.getItemId();
        switch (id) {
            case android.R.id.home:
                onBackPressed();
                break;

        }
        /* 响应消息 方法回调 */
        return super.onOptionsItemSelected(item);
    }


}