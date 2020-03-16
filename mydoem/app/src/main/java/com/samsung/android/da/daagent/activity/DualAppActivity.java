package com.samsung.android.da.daagent.activity;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;


import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Switch;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.Iterator;

import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDualAppEnabled;

public class DualAppActivity extends Activity {
    private ActionBar mActionBar;
    private DualAppItemAdapter mAvailableAdapter;
    private LinearLayout mAvailableAppLayout;
    private ArrayList<DualAppList> mAvailableAppList;
    private ListView mAvailableAppListView;
    private OnItemClickListener mAvailableAppOnItemClickListener = new OnItemClickListener() {
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            String pkgName = ((DualAppList) DualAppActivity.this.mAvailableAdapter.items.get(i)).getPkgName();

            DualAppActivity.this.launchPopup(101, pkgName);
        }
    };
    private LinearLayout mContactFilter;
    private Switch mContactFilterBtn;
    private TextView mContactFilterText;
    private RelativeLayout mContactFilterTextLayout;
    private Context mContext;

    private DualAppItemAdapter mInstalledAdapter;
    private LinearLayout mInstalledAppLayout;
    private ArrayList<DualAppList> mInstalledAppList;
    private ListView mInstalledAppListView;
    private OnItemClickListener mInstalledAppOnItemClickListener = new OnItemClickListener() {
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            String pkgName = ((DualAppList) DualAppActivity.this.mInstalledAdapter.items.get(i)).getPkgName();
           // SaWrapper.sendEventLog(DualAppActivity.this.mContext.getString(2131361794), DualAppActivity.this.mContext.getString(2131361805), pkgName, 0);

        }
    };
    private Intent mIntent;
    private boolean mIsFromQuickPanel = false;
    private LinearLayout mNotificationLayout;

    private class DualAppItemAdapter extends BaseAdapter implements OnCheckedChangeListener {
        private Context context;
        private ArrayList<DualAppList> items;
        private int layout;

        public DualAppItemAdapter(Context context, int i, ArrayList<DualAppList> arrayList) {
            this.context = context;
            this.layout = i;
            this.items = arrayList;
        }

        public int getCount() {
            return this.items == null ? 0 : this.items.size();
        }

        public Object getItem(int i) {
            return this.items.get(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = View.inflate(this.context, this.layout, null);
            }
            TextView textView = (TextView) view.findViewById(2131558442);
            ImageView imageView = (ImageView) view.findViewById(2131558440);
            Switch switchR = (Switch) view.findViewById(2131558441);
            View findViewById = view.findViewById(2131558439);
            if (i == 0) {
                findViewById.setVisibility(8);
            } else {
                findViewById.setVisibility(0);
            }
            DualAppList dualAppList = (DualAppList) this.items.get(i);
            textView.setText(dualAppList.getAppName());
            imageView.setImageDrawable(dualAppList.getAppIcon());
            switchR.setChecked(dualAppList.isDualAppEnable().booleanValue());
            switchR.setTag(Integer.valueOf(i));
            switchR.setOnCheckedChangeListener(this);
            return view;
        }

        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            int parseInt = Integer.parseInt(compoundButton.getTag().toString());
           // compoundButton.setChecked(z ^ 1);
            String pkgName = ((DualAppList) this.items.get(parseInt)).getPkgName();

            compoundButton.setClickable(false);
        }
    }

    private class DualAppList {
        private Drawable appIcon;
        private String appName;
        private Boolean enable;
        private String packageName;

        public DualAppList(String str, String str2, Drawable drawable, Boolean bool) {
            this.packageName = str;
            this.appName = str2;
            this.appIcon = drawable;
            this.enable = bool;
        }

        public Drawable getAppIcon() {
            return this.appIcon;
        }

        public String getAppName() {
            return this.appName;
        }

        public String getPkgName() {
            return this.packageName;
        }

        public Boolean isDualAppEnable() {
            return this.enable;
        }
    }

    private ArrayList<DualAppList> getAvailableApps() {
        ArrayList<DualAppList> arrayList = new ArrayList();
        Iterable<String> possibleDualAppPackages ;
        int on=1;

        return arrayList;
    }



    private ArrayList getPossibleDualAppPackages() {
        ArrayList arrayList = new ArrayList();
        Log.d("DualApp", "Compile:Leo 不咸的盐巴");
        PackageManager packageManager = this.mContext.getPackageManager();
        if (packageManager == null) {
            Log.d("DualApp", "Compile:Leo 不咸的盐巴");
            return null;
        }
        Log.d("DualApp", "Compile:Leo 不咸的盐巴");
        Iterable installedApplications = packageManager.getInstalledApplications(0);
        if (installedApplications == null) {
        }
        Iterator it = installedApplications.iterator();
        if (it == null) {
        }
        while (it.hasNext()) {
            ApplicationInfo applicationInfo = (ApplicationInfo) it.next();
            if ((applicationInfo.flags & 1) == 0) {
                String str = applicationInfo.packageName;
                if (applicationInfo.enabled) {
                    arrayList.add(applicationInfo.packageName);
                }
            }
        }
        return arrayList;
    }

    private void launchPopup(int i, String str) {

    }

    private void refrechContactFilterStatus(boolean z) {
        if (z) {
            this.mContactFilterBtn.setChecked(true);
            this.mContactFilterText.setEnabled(true);
            return;
        }
        this.mContactFilterBtn.setChecked(false);
        this.mContactFilterText.setEnabled(false);
    }

    private void setListViewHeight(ListView listView) {
        ListAdapter adapter = listView.getAdapter();
        if (adapter == null) {
            //Log.d("DualAppActivity", "error listAdapter is null");
            return;
        }
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(listView.getWidth(), 0);
        int i = 0;
        int count = adapter.getCount();
        View view = null;
        for (int i2 = 0; i2 < count; i2++) {
            view = adapter.getView(i2, view, listView);
            if (i2 == 0) {
                view.setLayoutParams(new LayoutParams(makeMeasureSpec, -2));
            }
            view.measure(makeMeasureSpec, 0);
            i += view.getMeasuredHeight();
        }
        LayoutParams layoutParams = listView.getLayoutParams();
        layoutParams.height = (listView.getDividerHeight() * (count - 1)) + i;
        listView.setLayoutParams(layoutParams);
        listView.requestLayout();
    }

    private void updateDualAppList() {

        if (this.mInstalledAppList == null || this.mInstalledAppList.isEmpty()) {
            this.mInstalledAppLayout.setVisibility(8);
        } else {
            this.mInstalledAppLayout.setVisibility(0);
        }
        this.mAvailableAppList = getAvailableApps();
        if (this.mAvailableAppList == null || this.mAvailableAppList.isEmpty()) {
            this.mAvailableAppLayout.setVisibility(8);
        } else {
            this.mAvailableAppLayout.setVisibility(0);
        }
        this.mNotificationLayout.setVisibility(8);
        this.mAvailableAdapter = new DualAppItemAdapter(this.mContext, 2130903047, this.mAvailableAppList);
        this.mAvailableAppListView.setAdapter(this.mAvailableAdapter);
        setListViewHeight(this.mAvailableAppListView);
        this.mInstalledAdapter = new DualAppItemAdapter(this.mContext, 2130903047, this.mInstalledAppList);
        this.mInstalledAppListView.setAdapter(this.mInstalledAdapter);
        setListViewHeight(this.mInstalledAppListView);
    }

    public void onBackPressed() {
        super.onBackPressed();
      //  SaWrapper.sendEventLog(this.mContext.getString(2131361794), this.mContext.getString(2131361804));
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2130903048);
        this.mContext = this;
     //   this.mDbHelper = DualAppDBHelper.getInstance(this.mContext);
        this.mActionBar = getActionBar();
        this.mActionBar.setDisplayHomeAsUpEnabled(true);
        this.mInstalledAppLayout = (LinearLayout) findViewById(2131558443);
        this.mAvailableAppLayout = (LinearLayout) findViewById(2131558446);
        this.mNotificationLayout = (LinearLayout) findViewById(2131558453);
        this.mInstalledAppListView = (ListView) findViewById(2131558445);
        this.mAvailableAppListView = (ListView) findViewById(2131558448);
        this.mInstalledAppListView.setOnItemClickListener(this.mInstalledAppOnItemClickListener);
        this.mAvailableAppListView.setOnItemClickListener(this.mAvailableAppOnItemClickListener);
        this.mContactFilter = (LinearLayout) findViewById(2131558449);

        this.mContactFilterText = (TextView) findViewById(2131558452);
        this.mContactFilterTextLayout = (RelativeLayout) findViewById(2131558450);
        this.mContactFilterTextLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {

            }
        });
        this.mContactFilterBtn = (Switch) findViewById(2131558408);
        this.mContactFilterBtn.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {

            }
        });
        this.mIntent = getIntent();
        if (this.mIntent != null && this.mIntent.getBooleanExtra("fromQuickPanel", false)) {
            this.mIsFromQuickPanel = true;
            //SaWrapper.sendEventLog(this.mContext.getString(2131361795), this.mContext.getString(2131361828));
        }
        this.mNotificationLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                //DualAppActivity.this.startActivity(new Intent(DualAppActivity.this, NotificationActivity.class));
            }
        });
    }

}
