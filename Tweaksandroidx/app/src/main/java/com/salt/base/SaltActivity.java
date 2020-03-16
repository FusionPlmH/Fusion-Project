package com.salt.base;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.snackbar.Snackbar;
import com.salt.check.FirmwareSecurity;
import com.salt.hipermission.HiPermission;
import com.salt.hipermission.PermissionCallback;
import com.salt.config.R;
import com.salt.config.view.SaltSwipeRefreshLayout;
import com.salt.utils.CopyAsset;
import com.salt.utils.SaltProper;
import com.salt.widget.DialogView;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import static org.salt.preference.colorpicker.Utils.getColorAttr;


public abstract class SaltActivity extends AppCompatActivity   {
    protected   Toolbar mToolbar;
    protected SaltActivity mContext;
    protected abstract int initLayout();
    protected abstract int initAppBarLayout();
    protected AppBarLayout mAppBarLayout;
    protected abstract String initAppName();
    protected CollapsingToolbarLayout mCollapsingToolbar;
    protected abstract void initData();
    public static final int  UPDATE_UI=0;
    protected SaltSwipeRefreshLayout mSwipeLayout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        setLeoTheme();
        super.onCreate(savedInstanceState);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        mContext = this;
        if(initLayout()>0){
            setContentView(initLayout());
        }
        if(initAppBarLayout()>0){
            mAppBarLayout = findViewById(initAppBarLayout());
        }
        setToolbar();
        initData();
        applyPermission();
        if (SaltProper.BuildSecuritycheck()) {
          FirmwareSecurity.get(mContext);
          DialogView.AppPackage(mContext);
          DialogView.InternetCheck(this);
       }
        CopyAsset.getInstance(getApplicationContext());
    }

    public void applyPermission(){
        HiPermission.create(this)
                .animStyle(R.style.PermissionAnim)
                .checkMutiPermission(new PermissionCallback() {
                    @Override
                    public void onClose() {

                    }

                    @Override
                    public void onFinish() {

                    }

                    @Override
                    public void onDeny(String permission, int position) {

                    }

                    @Override
                    public void onGuarantee(String permission, int position) {

                    }
                });
    }



    public void SwipeLayout(int id){
        mSwipeLayout = (SaltSwipeRefreshLayout) findViewById(id);
        mSwipeLayout .setColorSchemeResources(R.color.colorAccent,
                R.color.violet, R.color.pretty, R.color.material_red_A300);
        mSwipeLayout.setProgressViewOffset(true, -20, 100);
        mAppBarLayout.addOnOffsetChangedListener((appBarLayout, verticalOffset) -> {
            if (verticalOffset >= 0) {
                mSwipeLayout .setEnabled(true);
            } else {
                mSwipeLayout .setEnabled(false);
            }
        });
    }
    public void setToolbar(){
        mToolbar= findViewById(R.id.toolbar);
        setSupportActionBar(mToolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        setTitle(initAppName());

    }
    public void setupToolBar(boolean showHome){

        setDisplayHomeEnable(showHome);
    }
    private void setDisplayHomeEnable(boolean showHome){
        getSupportActionBar().setDisplayShowHomeEnabled(showHome);
        getSupportActionBar().setDisplayHomeAsUpEnabled(showHome);
    }


    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        switch (id) {
            case android.R.id.home:
                onBackPressed();
                break;
        }
        return super.onOptionsItemSelected(item);
    }
    public static boolean LightStatusBar;
    public void setLeoTheme(){

        String string=getString(R.string.leo_dark_theme);
        if (string.equals(getString(R.string.leo_dark_theme))) {
            LightStatusBar=false;
            string = ((getResources().getConfiguration().uiMode & 48) == 32 ? 1 : null) != null ? getString(R.string.leo_dark_theme): getString(R.string.leo_light_theme);
        }
        if (string.equals(getString(R.string.leo_light_theme))) {
            LightStatusBar=true;
        }
        int identifier = getResources().getIdentifier(string, "style", getApplicationContext().getPackageName());
        if (identifier != 0) {
            setTheme(identifier);
        }
    }
    public  void setAndroidNativeLightStatusBar( boolean dark) {
        int oldSystemUiFlags = mContext.getWindow().getDecorView().getSystemUiVisibility();
        int newSystemUiFlags = oldSystemUiFlags;
        if (dark) {
            newSystemUiFlags |= View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR;
        } else {
            newSystemUiFlags &= ~(View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
        }
        if (newSystemUiFlags != oldSystemUiFlags) {
            mContext.getWindow().getDecorView().setSystemUiVisibility(newSystemUiFlags);
        }
    }

    public void showSnackn(String mensaje,Activity activity){
        Snackbar snackbar = Snackbar.make(activity.findViewById(android.R.id.content), mensaje, Snackbar.LENGTH_SHORT)
                .setAction("Action", null);
        snackbar.getView().setBackgroundColor(getColorAttr(activity,R.attr.colorAccent));
        snackbar.show();

    }




}
