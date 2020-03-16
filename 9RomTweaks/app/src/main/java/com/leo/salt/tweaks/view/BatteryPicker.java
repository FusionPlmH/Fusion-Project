/*
 * Copyright (C) 2019 The Dirty Unicorns Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License
 */

package com.leo.salt.tweaks.view;


import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.content.Context;

import android.content.Intent;

import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;

import android.graphics.drawable.Drawable;

import android.os.AsyncTask;
import android.os.Bundle;

import android.provider.Settings;


import android.support.design.widget.FloatingActionButton;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;

import android.widget.TextView;


import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BaseCollapsingPickerActivity;
import com.leo.salt.tweaks.view.widget.ScrollListView;

import java.text.Collator;
import java.util.ArrayList;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;

@SuppressLint("RestrictedApi")
public class BatteryPicker extends BaseCollapsingPickerActivity {

  private FloatingActionButton mFloatingActionButton;
    private PackageManager packageManager ;
  //  private Adapter listadapter = null;
  private ProgressDialog mProgressBar;
    public ScrollListView mListView;
    private String authorPreText;
    private String compilerPreText ;
    protected List<BatteryInfo> mBatteries = new ArrayList();
    @Override
    protected int initLayout() {
        return R.layout.activity_selector;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mCollapsingToolbarLayout.setTitle(getStringIdentifier(mContext,"select_battery_title"));
        packageManager= mContext.getPackageManager();
        mProgressBar = new ProgressDialog(this);
        mProgressBar.setMessage(getStringIdentifier(mContext,"load_data"));
        mListView = (ScrollListView) findViewById(R.id.thumbnailListView);
       // mCollapsingToolbarLayout.setTitle(getStringIdentifier(mContext,"select_custom_app_title"));

        mListView.setOnItemClickListener(new  onListItemClick());
      //  mListView.setAdapter(listadapter);
        Intent intent = getIntent();
        mBatteryPicker= intent.getStringExtra("batterykey");
        new LoadApplications().execute();
    }
    public BatteryAdapter listadapter = null;
    class LoadApplications extends AsyncTask<Void, Void, Void> {


        @Override
        protected Void doInBackground(Void... params) {
            authorPreText =getStringIdentifier(mContext,"custom_battery_authorpt");
            compilerPreText =getStringIdentifier(mContext,"custom_battery_compilerpt");
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("leorom.intent.category.BATTERY_MODULE");
            List<ResolveInfo> res = packageManager.queryIntentActivities(intent, 8192);
            for (int i = 0; i < res.size(); i++) {
                addNewBatteryInfoFromPKG(((ResolveInfo) res.get(i)).activityInfo.packageName);
            }
            showSnack(getStringIdentifier(mContext,"select_battery_title"));
            Collections.sort(mBatteries, new AlphabeticalComparator(mContext));
            listadapter = new BatteryAdapter(mContext, R.layout.battery_item ,mBatteries);
            return null;
        }

        @Override
        protected void onPostExecute(Void result) {
            super.onPostExecute(result);
            mProgressBar.cancel();
            mListView.setAdapter(listadapter);
        }

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            // progressDialog.show();
            mProgressBar.show();

        }
    }
    @Override
    public void onBackPressed() {

            finish();

    }
    public class onListItemClick implements AdapterView.OnItemClickListener {
        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            BatterySelect(((BatteryInfo)mBatteries.get(position)).batterypkg, ((BatteryInfo)mBatteries.get(position)).fullicon);
            finish();
        }
    }
    public String mBatteryPicker;
   private  void  BatterySelect(String str, Drawable drawable){
       Settings.System.putString(
               getContentResolver(), mBatteryPicker+"_package", str);

   }
    public class AlphabeticalComparator implements Comparator<BatteryInfo> {
        private final Collator instance = Collator.getInstance();
        Context mContext;

        public AlphabeticalComparator(Context c) {
            this.mContext = c;
        }

        public int compare(BatteryInfo lhs, BatteryInfo rhs) {
            if (lhs.name == null || rhs.name == null) {
                return -1;
            }
            return this.instance.compare(lhs.name, lhs.name);
        }
    }

    class BatteryInfo {
        String batterypkg = "";
        String compilername = "";
        Drawable fullicon;
        String name = "";
        String originalauthor = "";
        BatteryInfo() {
        }
    }

    private void addNewBatteryInfoFromPKG(String pkg) {
        BatteryInfo info = new BatteryInfo();
        info.batterypkg = pkg;
        info.name = (String) getResource(pkg, "battery_name", "string");
        info.originalauthor = this.authorPreText + " " + ((String) getResource(pkg, "icon_resource", "string"));
        info.compilername = this.compilerPreText + " " + ((String) getResource(pkg, "packaging_name", "string"));
        info.fullicon = (Drawable) getResource(pkg, "stat_sys_battery", "drawable");
        info.fullicon.setLevel(50);
        info.fullicon = info.fullicon.getCurrent();
        this.mBatteries.add(info);
    }

    private Object getResource(String pkg, String idname, String type) {
        try {
            Context otherAppContext = mContext.createPackageContext(pkg, 3);
            int resID = otherAppContext.getResources().getIdentifier(idname, type, pkg);
            if (type.equals("drawable")) {
                return otherAppContext.getResources().getDrawable(resID);
            }
            if (type.equals("string")) {
                return otherAppContext.getResources().getString(resID);
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public class BatteryAdapter extends ArrayAdapter<BatteryInfo> {
        protected List<BatteryInfo> mBatteries = new ArrayList();
        public BatteryAdapter(Context context, int i, List<BatteryInfo> list) {
            super(context, i, list);
            this.mBatteries = list;
        }
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view2 == null) {
                view2 = ((LayoutInflater) getContext().getSystemService(LAYOUT_INFLATER_SERVICE)).inflate(R.layout.battery_item, viewGroup, false);
            }
            TextView textView = (TextView) view2.findViewById(R.id.battery_name);
            TextView textView2 = (TextView) view2.findViewById(R.id.battery_compilername);
            TextView textView3 = (TextView) view2.findViewById(R.id.battery_authorname);
            ((ImageView) view2.findViewById(R.id.battery_icon)).setBackground(((BatteryInfo) this.mBatteries.get(i)).fullicon);
            textView.setText(((BatteryInfo) this.mBatteries.get(i)).name);
            textView2.setText(((BatteryInfo) this.mBatteries.get(i)).compilername);
            textView3.setText(((BatteryInfo) this.mBatteries.get(i)).originalauthor);
            return view2;
        }
    }

}




