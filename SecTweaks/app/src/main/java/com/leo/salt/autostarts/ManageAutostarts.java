package com.leo.salt.autostarts;

import android.app.Activity;
import android.app.ActivityManager;

import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.app.Fragment;
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

import com.leo.salt.R;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public class ManageAutostarts extends Fragment {
    public static final int MENU_ID_SCAN = 1;
    public static final String TAG = "ManageAutostarts";
    private ActivityManager am;
    private AppAdapter appItems;
    private ListView appsList;
    private TextView emptyView;
    public Handler handler = new Handler() {
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    if (ManageAutostarts.this.progressDialog != null) {
                        ManageAutostarts.this.progressDialog.dismiss();
                    }
                    ManageAutostarts.this.appItems.notifyDataSetChanged();
                    ManageAutostarts.this.optimizableAppItems.notifyDataSetChanged();
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
                view = ManageAutostarts.this.mLayoutInflater.inflate(R.layout.manage_autostarts_item, null);
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
        this.am = (ActivityManager) activity.getSystemService("activity");
        this.pm = getActivity().getPackageManager();
        setHasOptionsMenu(true);
        this.installPkgNames = new ArrayList();
        for (PackageInfo pi : this.pm.getInstalledPackages(0)) {
            try {
                this.installPkgNames.add(pi.packageName);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        this.menuItem = menu.add(0, 1, 0, this.showOptimizeList ? R.string.autostarts_allow_progress_msg : R.string.autostarts_optimize_btn_title);
        this.menuItem.setEnabled(true).setShowAsAction(2);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 1:
                if (this.showOptimizeList) {
                    this.showOptimizeList = false;
                    this.menuItem.setTitle(R.string.autostarts_optimize_btn_title);
                    this.emptyView.setText(R.string.autostarts_empty_msg);
                    this.appsList.setAdapter(this.appItems);
                    return true;
                }
                this.showOptimizeList = true;
                this.menuItem.setTitle(R.string.autostarts_all_btn_title);
                this.emptyView.setText(R.string.autostarts_optimize_empty_msg);
                this.appsList.setAdapter(this.optimizableAppItems);
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mLayoutInflater = layoutInflater;
        this.mRootView = this.mLayoutInflater.inflate(R.layout.manage_autostarts, null);
        this.appItems = new AppAdapter(null);
        this.optimizableAppItems = new AppAdapter(null);
        this.appsList = (ListView) this.mRootView.findViewById(16908298);
        this.emptyView = (TextView) this.mRootView.findViewById(16908292);
        if (this.emptyView != null) {
            this.emptyView.setText(R.string.autostarts_empty_msg);
            this.appsList.setEmptyView(this.emptyView);
        }
        this.appsList.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AppItem item;
                if (ManageAutostarts.this.showOptimizeList) {
                    item = ManageAutostarts.this.optimizableAppItems.getItem(i);
                } else {
                    item = ManageAutostarts.this.appItems.getItem(i);
                }
                if (item.checked) {
                    ManageAutostarts.this.closeAutoStartApp(item);
                } else {
                    ManageAutostarts.this.startAutoStartApp(item);
                }
            }
        });
        flush();
        getActivity().runOnUiThread(new Runnable() {
            public void run() {
                ManageAutostarts.this.appsList.setAdapter(ManageAutostarts.this.appItems);
            }
        });
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
                AppItem item = new AppItem(getActivity(), true, pName, info.activityInfo.name, getString(R.string.autostarts_prohibited));
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
                this.appItems.add(new AppItem(getActivity(), false, pName, info.activityInfo.name, getString(R.string. autostarts_allowed)));
                this.pkgNames.add(pName);
            }
        }
        this.handler.sendEmptyMessage(1);
    }

    public void closeAutoStartApp(final AppItem appItem) {
        this.progressDialog = ProgressDialog.show(getActivity(), null, getString(R.string.autostarts_prohibit_progress_msg));
        new Thread() {
            public void run() {
                Object[] arrayOfObject = new Object[2];
                arrayOfObject[0] = appItem.packageName;
                Intent intent = new Intent("android.intent.action.BOOT_COMPLETED");
                intent.setPackage(appItem.packageName);
                for (ResolveInfo info : ManageAutostarts.this.pm.queryBroadcastReceivers(intent, 0)) {
                    arrayOfObject[1] = info.activityInfo.name;
                    ManageAutostarts.this.pm.setComponentEnabledSetting(ComponentName.unflattenFromString(String.format("%s/%s", arrayOfObject)), 2, 1);
                }
                ManageAutostarts.this.flush();
            }
        }.start();
    }

    public void startAutoStartApp(final AppItem appItem) {
        this.progressDialog = ProgressDialog.show(getActivity(), null, getString(R.string.autostarts_prohibit_progress_msg));
        new Thread() {
            public void run() {
                Object[] arrayOfObject = new Object[2];
                arrayOfObject[0] = appItem.packageName;
                Intent intent = new Intent("android.intent.action.BOOT_COMPLETED");
                intent.setPackage(appItem.packageName);
                for (ResolveInfo info : ManageAutostarts.this.pm.queryBroadcastReceivers(intent, 512)) {
                    arrayOfObject[1] = info.activityInfo.name;
                    ManageAutostarts.this.pm.setComponentEnabledSetting(ComponentName.unflattenFromString(String.format("%s/%s", arrayOfObject)), 1, 1);
                }
                ManageAutostarts.this.flush();
            }
        }.start();
    }
}
