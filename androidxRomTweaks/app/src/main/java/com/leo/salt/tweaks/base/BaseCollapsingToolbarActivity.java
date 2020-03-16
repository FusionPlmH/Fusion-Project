package com.leo.salt.tweaks.base;
import android.os.Bundle;

import android.view.MenuItem;

import androidx.appcompat.widget.Toolbar;;
import com.google.android.material.snackbar.Snackbar;

import com.leo.salt.tweaks.R;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.getColorAttr;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;


public abstract class BaseCollapsingToolbarActivity extends BaseActivity  {

 //   protected LinearLayout mCollapsingLinearLayout;


    protected abstract String initCollapsingTextText();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        mCollapsingToolbarLayout = findViewById(R.id.toolbar_layout) ;

            mCollapsingToolbarLayout.setTitle(getStringIdentifier(mContext,initCollapsingTextText()));
           // showSnack(mContext.getResources().getString(initCollapsingTextText()));
        showSnacknAME(getStringIdentifier(mContext,initCollapsingTextText()));
       // mCollapsingLinearLayout=findViewById(R.id.CollapsingToolbarLayoutText);

    }
    protected Toolbar toolbar;
    public void showSnacknAME(String mensaje){
        Snackbar snackbar = Snackbar.make(mContext.findViewById(android.R.id.content), mensaje, Snackbar.LENGTH_SHORT)
                .setAction("Action", null);
        snackbar.getView().setBackgroundColor(getColorAttr(mContext,R.attr.colorAccent));
        snackbar.show();

    }
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