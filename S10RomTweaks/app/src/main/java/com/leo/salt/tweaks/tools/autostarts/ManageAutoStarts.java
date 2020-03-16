package com.leo.salt.tools.autostarts;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;

import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

import android.app.Fragment;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.Switch;
import android.widget.TextView;


import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.view.widget.ScrollListView;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;


public class ManageAutoStarts extends Fragment {
        public static final int MENU_ID_SCAN = 1;
        public static final String TAG = "ManageAutostarts";
        private ActivityManager am;
        private AppAdapter appItems;
        private ScrollListView appsList;
        private TextView emptyView;
        public Handler handler = new Handler() {
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        if (progressDialog != null) {
                           progressDialog.dismiss();
                        }
                      appItems.notifyDataSetChanged();
                    optimizableAppItems.notifyDataSetChanged();
                        return;
                    default:
                        return;
                }
            }
        };
        private List<String> installPkgNames;
        private LayoutInflater mLayoutInflater;
        private View mRootView;
        private MenuItem menuItem;
        private AppAdapter optimizableAppItems;
        private Vector<String> pkgNames = new Vector();
        private PackageManager pm;
        private ProgressDialog progressDialog;
        private boolean showOptimizeList = false;

        class AppAdapter extends BaseAdapter {
            protected Context context;
            protected LayoutInflater inflater;
            protected List<AppItem> list = new ArrayList();



            public AppAdapter(LayoutInflater layoutInflater) {
            }

            public void add(AppItem appItem) {
                this.list.add(appItem);
            }

            public void clear() {
                this.list.clear();
            }

            public int getCount() {
                return this.list.size();
            }

            public AppItem getItem(int i) {
                return (AppItem) this.list.get(i);
            }

            public long getItemId(int i) {
                return (long) i;
            }

            public View getView(int i, View view, ViewGroup viewGroup) {

                if (view == null) {
                    view = mLayoutInflater.inflate(R.layout.manage_autostarts_item, null);
                }
                ((ImageView) view.findViewById(R.id.icon)).setImageDrawable(getItem(i).icon);
                TextView appName = (TextView) view.findViewById(R.id.appName);
                appName.setText(getItem(i).appName);

                appName.setSingleLine(true);

                ((TextView) view.findViewById(R.id.status)).setText(getItem(i).status);
                Switch check = (Switch) view.findViewById(R.id.app_on_sdcard);
                if (getItem(i).checked) {
                    check.setChecked(true);
                } else {
                    check.setChecked(false);
                }
                return view;
            }
        }



        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            Activity activity = getActivity();
            getActivity();
            am = (ActivityManager) activity.getSystemService("activity");
            pm = getActivity().getPackageManager();
            setHasOptionsMenu(true);
            installPkgNames = new ArrayList();
            for (PackageInfo pi : pm.getInstalledPackages(0)) {
                try {
                    installPkgNames.add(pi.packageName);
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }


        }

        public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
            this.menuItem = menu.add(0, 1, 0, this.showOptimizeList ? AutostartsTextView("autostarts_allow_progress_msg")  : AutostartsTextView("autostarts_optimize_btn_title"));
            this.menuItem.setEnabled(true).setShowAsAction(2);
        }

        public boolean onOptionsItemSelected(MenuItem menuItem) {
            switch (menuItem.getItemId()) {
                case 1:
                    if (this.showOptimizeList) {
                        this.showOptimizeList = false;
                        this.menuItem.setTitle(AutostartsTextView("autostarts_optimize_btn_title"));
                        this.emptyView.setText(AutostartsTextView("autostarts_empty_msg"));
                        this.appsList.setAdapter(this.appItems);
                        return true;
                    }
                    this.showOptimizeList = true;
                    this.menuItem.setTitle(AutostartsTextView("autostarts_all_btn_title"));
                    this.emptyView.setText(AutostartsTextView("autostarts_optimize_empty_msg"));
                    this.appsList.setAdapter(this.optimizableAppItems);
                    return true;
                default:
                    return super.onOptionsItemSelected(menuItem);
            }
        }

        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            this.mLayoutInflater = layoutInflater;
            this.mRootView = this.mLayoutInflater.inflate(R.layout.manage_autostarts, null);

            appItems = new AppAdapter(null);
            optimizableAppItems = new AppAdapter(null);
            appsList = (ScrollListView) mRootView.findViewById(16908298);
            emptyView = (TextView) mRootView.findViewById(16908292);
            emptyView.setVisibility(View.VISIBLE);
            if (emptyView != null) {
                emptyView.setText(AutostartsTextView("autostarts_empty_msg"));
                appsList.setEmptyView(emptyView);
            }
            appsList.setOnItemClickListener((adapterView, view, i, j) -> {
                AppItem item;
                if (showOptimizeList) {
                    item =optimizableAppItems.getItem(i);
                } else {
                    item = appItems.getItem(i);
                }
                if (item.checked) {
                    closeAutoStartApp(item);
                } else {
                    startAutoStartApp(item);
                }
            });
            flush();
            getActivity().runOnUiThread(() -> appsList.setAdapter(appItems));
            return this.mRootView;
        }


        protected void flush() {
            int i;
            this.pkgNames.clear();
            this.appItems.clear();
            this.optimizableAppItems.clear();
            Intent intent = new Intent("android.intent.action.BOOT_COMPLETED");
            List<ResolveInfo> enable = this.pm.queryBroadcastReceivers(intent, 0);
            for (i = 0; i < enable.size(); i++) {
                ResolveInfo info = (ResolveInfo) enable.get(i);
                String pName = info.activityInfo.packageName;
                if (!this.pkgNames.contains(pName) && this.installPkgNames.contains(pName)) {
                    AppItem item = new AppItem(getActivity(), true, pName, info.activityInfo.name,AutostartsTextView("autostarts_prohibited"));
                    this.appItems.add(item);
                    this.pkgNames.add(pName);
                    this.optimizableAppItems.add(item);
                }
            }
            List<ResolveInfo> disable = this.pm.queryBroadcastReceivers(intent, 512);
            for (i = 0; i < disable.size(); i++) {

                ResolveInfo info = (ResolveInfo) disable.get(i);
                String pName = info.activityInfo.packageName;
                if (!this.pkgNames.contains(pName) && this.installPkgNames.contains(pName)) {
                    this.appItems.add(new AppItem(getActivity(), false, pName, info.activityInfo.name,  AutostartsTextView("autostarts_allowed")));
                    this.pkgNames.add(pName);
                }
            }
            this.handler.sendEmptyMessage(1);
        }

        public void closeAutoStartApp(final AppItem appItem) {
            this.progressDialog = ProgressDialog.show(getActivity(), null, AutostartsTextView("autostarts_prohibit_progress_msg"));
            new Thread() {
                public void run() {
                    Object[] arrayOfObject = new Object[2];
                    arrayOfObject[0] = appItem.packageName;
                    Intent intent = new Intent("android.intent.action.BOOT_COMPLETED");
                    intent.setPackage(appItem.packageName);
                    for (ResolveInfo info : pm.queryBroadcastReceivers(intent, 0)) {
                        arrayOfObject[1] = info.activityInfo.name;
                      pm.setComponentEnabledSetting(ComponentName.unflattenFromString(String.format("%s/%s", arrayOfObject)), 2, 1);
                    }
                  flush();
                }
            }.start();
        }

        public void startAutoStartApp(final AppItem appItem) {
            this.progressDialog = ProgressDialog.show(getActivity(), null, AutostartsTextView("autostarts_prohibit_progress_msg"));
            new Thread() {
                public void run() {
                    Object[] arrayOfObject = new Object[2];
                    arrayOfObject[0] = appItem.packageName;
                    Intent intent = new Intent("android.intent.action.BOOT_COMPLETED");
                    intent.setPackage(appItem.packageName);
                    for (ResolveInfo info : pm.queryBroadcastReceivers(intent, 512)) {
                        arrayOfObject[1] = info.activityInfo.name;
                    pm.setComponentEnabledSetting(ComponentName.unflattenFromString(String.format("%s/%s", arrayOfObject)), 1, 1);
                    }
               flush();
                }
            }.start();
        }

    public String AutostartsTextView(String STR){

        return getStringIdentifier(getActivity(),STR);
    }

}

