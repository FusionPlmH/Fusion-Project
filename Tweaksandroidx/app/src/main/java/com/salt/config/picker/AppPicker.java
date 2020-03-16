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
package com.salt.config.picker;


import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Vibrator;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;

import android.widget.TextView;


import com.salt.base.SaltActivity;
import com.salt.frame.saltview.SaltListView;
import com.salt.config.R;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import static com.salt.frame.LeadFrame.getStringIdentifier;


public class AppPicker extends SaltActivity {


    private PackageManager packageManager ;
    private List<ApplicationInfo> applist = null;
    private Adapter listadapter = null;
    private ProgressDialog mProgressBar;
    private List<ActivityInfo> mActivitiesList = null;
    private boolean mIsActivitiesList = false;
    public SaltListView mListView;
    public String  mNAME ;


    @Override
    protected int initLayout() {
        return R.layout.activity_selector;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }

    @Override
    protected String initAppName() {
        return  getStringIdentifier(mContext,"select_custom_app_title");
    }

    @Override
    protected void initData() {
        mProgressBar = new ProgressDialog(this);
        mProgressBar.setMessage(getStringIdentifier(mContext,"apps_load"));
        mWarning= findViewById(R.id.warning);
        mListView = (SaltListView) findViewById(R.id.thumbnailListView);
        mNAME=getStringIdentifier(mContext,"select_custom_app_title");
        mListView.setOnItemClickListener(new  onListItemClick());
     //  setTitle( mNAME);
        mWarning.setVisibility(View.VISIBLE);
        mWarning.setText(getStringIdentifier(mContext,"global_action_app_warning"));
        Intent intent = getIntent();
        mAppPicker= intent.getStringExtra("appkey");
        packageManager = getPackageManager();
        new LoadApplications().execute();
    }



    public class onListItemClick implements AdapterView.OnItemClickListener {
        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            if (!mIsActivitiesList) {
                String packageName = applist.get(position).packageName;
               friendlyAppString = (String) applist.get(position).loadLabel(packageManager);
                setPackage(packageName);
                setPackageActivity(null);
            } else if (mIsActivitiesList) {
                setPackageActivity(mActivitiesList.get(position));
            }
            finish();
        }
    }

    private TextView mWarning;


    @Override
    public void onBackPressed() {
        if (mIsActivitiesList) {
            mListView.setAdapter(listadapter);
            mWarning.setVisibility(View.VISIBLE);

            mIsActivitiesList = false;
        } else {
            finish();
        }
    }

    private List<ApplicationInfo> checkForLaunchIntent(List<ApplicationInfo> list) {
        ArrayList<ApplicationInfo> applist = new ArrayList<>();

        // If we need to blacklist apps, this is where we list them
        String[] blacklist_packages = {
                "com.google.android.as", // Actions Services
                "com.google.android.GoogleCamera", // Google camera
                "com.google.android.imaging.easel.service", // Pixel Visual Core Service
                "com.android.traceur" // System Tracing (Google spyware lol)
        };

        for (ApplicationInfo info : list) {
            try {
                /* Remove blacklisted apps from the list of apps we give to
                   the user to select from. */
                if ((!Arrays.asList(blacklist_packages).contains(info.packageName)
                        && null != packageManager.getLaunchIntentForPackage(info.packageName))) {
                    applist.add(info);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        // Lets alphabatize the list of installed user apps
        Collections.sort(applist, new ApplicationInfo.DisplayNameComparator(packageManager));

        return applist;
    }

    class LoadApplications extends AsyncTask<Void, Void, Void> {

        @Override
        protected Void doInBackground(Void... params) {
           // showSnack(getStringIdentifier(mContext,"select_custom_app_title"));
            applist = checkForLaunchIntent(packageManager.getInstalledApplications(
                    PackageManager.GET_META_DATA));
            listadapter = new Adapter(AppPicker.this,
                    R.layout.app_list_item, applist, packageManager);
            return null;
        }

        @Override
        protected void onPostExecute(Void result) {
            super.onPostExecute(result);
            mProgressBar.cancel();
            mListView.setAdapter(listadapter);
            mListView.setLongClickable(true);
            mListView.setOnItemLongClickListener((arg0, arg1, pos, id) -> {
                onLongClick(pos);
                intVibrator(1,10);
                return true;
            });
        }

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            // progressDialog.show();
            mProgressBar.show();

        }
    }
    Vibrator mVibrator;

    public void intVibrator(int off,int strength){
        Context context=mContext;
        if (off== 1) {
            mVibrator = (Vibrator)context.getSystemService(Context.VIBRATOR_SERVICE);
            mVibrator.vibrate(strength);
        }
    }
    String friendlyAppString ;
    protected void onLongClick(int position) {

        if (mIsActivitiesList) return;
        String packageName = applist.get(position).packageName;
        friendlyAppString = (String) applist.get(position).loadLabel(packageManager);
        // always set CUSTOM_APP so we can fallback if something goes wrong with
        // packageManager.getPackageInfo

        setPackage(packageName);
        setPackageActivity(null);
        showActivitiesDialog(packageName);
    }
    protected void setPackage(String packageName) {
        Settings.System.putString(
                getContentResolver(), mAppPicker+"_apps", packageName);

       // showSnack(friendlyAppString);
    }
  String mAppPicker;

    protected void setPackageActivity(ActivityInfo ai) {
        Settings.System.putString(
                getContentResolver(), mAppPicker+"_activity",
                ai != null ? ai.name : "NONE");
    }

    protected void showActivitiesDialog(String packageName) {
        mIsActivitiesList = true;
        ArrayList<ActivityInfo> list = null;
        try {
            PackageInfo pi = packageManager.getPackageInfo (
                    packageName, PackageManager.GET_ACTIVITIES);

            list = new ArrayList<>(Arrays.asList(pi.activities));

        } catch (PackageManager.NameNotFoundException e) {
        }

        mActivitiesList = list;

        if (list == null) {
            // no activities to show, let's stay in the Apps list
            mIsActivitiesList = false;
            return;
        }

        mWarning.setVisibility(View.GONE);
        ActivitiesAdapter adapter = new ActivitiesAdapter(this, R.layout.app_list_item, list, packageManager);
        mListView .setAdapter(adapter);

    }

    class Adapter extends ArrayAdapter<ApplicationInfo> {

        private List<ApplicationInfo> appList;
        private Context context;
        private PackageManager packageManager;

        private Adapter(Context context, int resource, List<ApplicationInfo> objects, PackageManager pm) {
            super(context, resource, objects);

            this.context = context;
            this.appList = objects;
            packageManager = pm;
        }

        @Override
        public int getCount() {
            return ((null != appList) ? appList.size() : 0);
        }

        @Override
        public ApplicationInfo getItem(int position) {
            return ((null != appList) ? appList.get(position) : null);
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            View view = convertView;

            ApplicationInfo data = appList.get(position);

            if (view == null) {
                LayoutInflater layoutInflater = (LayoutInflater) context
                        .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
                view = layoutInflater.inflate(R.layout.app_list_item, null);
            }

            if (data != null) {
                TextView appName = view.findViewById(R.id.appName);
                TextView appNamePackage = view.findViewById(R.id.appPackage);
                TextView appNamePath = view.findViewById(R.id.appPath);
                String STRING=data.packageName;
                appNamePackage.setText(STRING);
                // String sdk2Version = data.versionCode;
                int sdkVersion = data.targetSdkVersion;
                String SDK= " SDK"+getStringIdentifier(mContext,"android_versions")+" "+sdkVersion;
                int flags = data.flags;
                if((flags&ApplicationInfo.FLAG_SYSTEM)==ApplicationInfo.FLAG_SYSTEM){
                    appNamePath.setText(getStringIdentifier(mContext,"system_apps")+SDK);
                }else{
                    appNamePath.setText(getStringIdentifier(mContext,"use_apps") +SDK);
                }

                ImageView iconView = view.findViewById(R.id.appIcon);

                appName.setText(data.loadLabel(packageManager));
                iconView.setImageDrawable(data.loadIcon(packageManager));
            }
            return view;
        }
    }

    class ActivitiesAdapter extends ArrayAdapter<ActivityInfo> {

        private List<ActivityInfo> appList;
        private Context context;
        private PackageManager packageManager;

        private ActivitiesAdapter(Context context, int resource, List<ActivityInfo> objects, PackageManager pm) {
            super(context, resource, objects);

            this.context = context;
            this.appList = objects;
            this.packageManager = pm;
        }

        @Override
        public int getCount() {
            return ((null != appList) ? appList.size() : 0);
        }

        @Override
        public ActivityInfo getItem(int position) {
            return ((null != appList) ? appList.get(position) : null);
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            View view = convertView;

            ActivityInfo data = appList.get(position);

            if (view == null) {
                LayoutInflater layoutInflater = (LayoutInflater) context
                        .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
                view = layoutInflater.inflate(R.layout.app_list_item, null);
            }

            if (data != null) {
                TextView appName = view.findViewById(R.id.appName);
                TextView appNamePackage = view.findViewById(R.id.appPackage);

                String name = data.name;
                appNamePackage.setText(name);

                appName.setText(data.loadLabel(packageManager));
                ImageView iconView = view.findViewById(R.id.appIcon);
                iconView.setImageDrawable(data.loadIcon(packageManager));
                TextView appNamePath = view.findViewById(R.id.appPath);
                appNamePath.setVisibility(View.GONE);
            }

            return view;
        }
    }
}

