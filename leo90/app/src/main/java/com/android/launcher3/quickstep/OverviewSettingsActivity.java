package com.android.launcher3.quickstep;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

import com.android.launcher3.quickstep.views.OverviewSettingsFragment;
import java.lang.ref.WeakReference;

public class OverviewSettingsActivity extends AppCompatActivity {
    private static WeakReference<Activity> sSettingsActivity;
    private OverviewSettingsFragment mOverviewSettingsFragment = null;

    private void applyDividerStroke() {
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ((FrameLayout) findViewById(16908290)).getChildAt(0);
        LayoutParams layoutParams = (LayoutParams) coordinatorLayout.getLayoutParams();
        if ((getApplicationContext().getResources().getConfiguration().orientation == 2 ? 1 : 0) != 0) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(2131558451);
            layoutParams.leftMargin = dimensionPixelSize;
            layoutParams.rightMargin = dimensionPixelSize;
        } else {
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
        }
        coordinatorLayout.setLayoutParams(layoutParams);
    }

    public static void finishIfExist() {
        if (isActivityExist()) {
            ((Activity) sSettingsActivity.get()).finish();
            sSettingsActivity = null;
        }
    }

    public static boolean isActivityExist() {
        return (sSettingsActivity == null || sSettingsActivity.get() == null) ? false : true;
    }

    private void setActionBarTitle() {
        setTitle(2131296508);
        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) findViewById(2131886418);
        if (collapsingToolbarLayout != null) {
            collapsingToolbarLayout.setTitle(getTitle());
        }
    }

    private void setup() {
        this.mOverviewSettingsFragment = (OverviewSettingsFragment) getSupportFragmentManager().findFragmentById(2131886419);
        showSettingsFragment();
        setActionBarTitle();
        sSettingsActivity = new WeakReference(this);
    }

    private void showSettingsFragment() {
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.show(this.mOverviewSettingsFragment);
        beginTransaction.commit();
    }

    public static void startRubinSettingsActivity(Context context) {
        try {
            Intent intent = new Intent();
            intent.setAction("com.samsung.android.rubin.CS_SETTINGS");
            intent.putExtra("targetPage", 2);
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2130968656);
        Toolbar toolbar = (Toolbar) findViewById(2131886209);
        if (toolbar != null) {
            setSupportActionBar(toolbar);
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        setRequestedOrientation(-1);

        setup();
    }

    public void onDestroy() {
        super.onDestroy();
        if (sSettingsActivity != null) {
            sSettingsActivity = null;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }

    protected void onResume() {
        super.onResume();

    }
}