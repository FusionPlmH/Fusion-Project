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

package com.leo.global.preference;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.preference.DialogPreference;
import android.provider.Settings;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.ListFragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.leo.global.tools.kotlin.OverScrollListView;
import com.leo.global.tweaks.R;
import com.leo.global.view.widget.LeoTextview;
import com.leo.global.view.widget.ProgressBarDialog;
import com.leo.global.view.widget.ScrollListView;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;


public abstract class AppPicker extends AlertDialog implements AdapterView.OnItemClickListener {

    public Context mContext;
    private PackageManager packageManager ;
    private List<ApplicationInfo> applist = null;
    private Adapter listadapter = null;

    private List<ActivityInfo> mActivitiesList = null;
    private boolean mIsActivitiesList = false;
     public OverScrollListView mListView;
    public AppPicker(Context context) {
        super(context);



        //setTitle(R.string.active_edge_app_select_title);
        mContext=context;

        packageManager =context. getPackageManager();


        initAppPicker();
        new LoadApplications().execute();
    }
    private View mLayout;
    private TextView mWarning;
    public void initAppPicker(){
        LayoutInflater welmsgInflater = LayoutInflater.from(mContext);
        mLayout = welmsgInflater.inflate(R.layout.icon_preference_dialog_view, null);
        mListView = (OverScrollListView) mLayout.findViewById(R.id.thumbnailListView);
        mListView.setOnItemClickListener(this);
        mWarning= mLayout.findViewById(R.id.warning);
        mWarning.setVisibility(View.VISIBLE);
        mWarning.setText(R.string.global_action_app_warning);
        setView(mLayout);
    }
   public String packageName;
    public  String friendlyAppString;
    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        if (!mIsActivitiesList) {
            // we are in the Apps list
           packageName = applist.get(position).packageName;
           friendlyAppString = (String) applist.get(position).loadLabel(packageManager);
            onListViewItemClickActivity(null);
          //  mListener.onAppPickedActivity(null);
        } else if (mIsActivitiesList) {
            onListViewItemClickActivity(mActivitiesList.get(position));
            //mListener.onAppPickedActivity(mActivitiesList.get(position));
        }
        dismiss();
        mIsActivitiesList = false;
        onListViewItemClick(packageName, friendlyAppString);
    }
    public abstract void onListViewItemClick(String str, String str2);
    public abstract void onListViewItemClickActivity(ActivityInfo ai);
  //  private OnAppPickedListener mListener;



    //public interface OnAppPickedListener {
      //  void onAppPicked(String str, String str2);
       // void onAppPickedActivity(ActivityInfo ai);
   // }
  //  public  void setOnAppPickedListener(OnAppPickedListener onAppPickedListener) {
      //  mListener = onAppPickedListener;
   // }
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
            applist = checkForLaunchIntent(packageManager.getInstalledApplications(
                    PackageManager.GET_META_DATA));
            listadapter = new Adapter(mContext,
                    R.layout.app_item, applist, packageManager);
            return null;
        }

        @Override
        protected void onPostExecute(Void result) {
            super.onPostExecute(result);


            mListView.setAdapter(listadapter);
            mListView.setLongClickable(true);
            mListView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
                @Override
                public boolean onItemLongClick(AdapterView<?> arg0, View arg1,
                                               int pos, long id) {
                    onLongClick(pos);
                    return true;
                }
            });
        }

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
           // progressDialog.show();

        }
    }

    protected void onLongClick(int pos) {
        if (mIsActivitiesList) return;
        packageName = applist.get(pos).packageName;
        friendlyAppString = (String) applist.get(pos).loadLabel(packageManager);
        // always set CUSTOM_APP so we can fallback if something goes wrong with
        // packageManager.getPackageInfo
        onListViewItemClick(packageName, friendlyAppString);
      //  mListener.onAppPicked(packageName, friendlyAppString);
       // mListener.onAppPickedActivity(null);
        onListViewItemClickActivity(null);
        showActivitiesDialog(packageName);
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
       setTitle(friendlyAppString);

        // switch to a new adapter to show app activities
        ActivitiesAdapter adapter = new ActivitiesAdapter(mContext, R.layout.app_item, list, packageManager);
        mListView.setAdapter(adapter);

        mWarning.setVisibility(View.GONE);
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
                view = layoutInflater.inflate(R.layout.app_item, null);
            }

            if (data != null) {
                TextView appName = view.findViewById(R.id.appName);
                TextView appNamePackage = view.findViewById(R.id.appPackage);
                TextView appNamePath = view.findViewById(R.id.appPath);
                String STRING=data.packageName;
                appNamePackage.setText(STRING);
               // String sdk2Version = data.versionCode;
                int sdkVersion = data.targetSdkVersion;
               String SDK= " SDK"+getContext().getString(R.string.android_versions)+" "+sdkVersion;
                int flags = data.flags;
                if((flags&ApplicationInfo.FLAG_SYSTEM)==ApplicationInfo.FLAG_SYSTEM){
                    appNamePath.setText(getContext().getString(R.string.system_apps)+SDK);
                }else{
                    appNamePath.setText(getContext().getString(R.string.use_apps)+SDK);
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
                view = layoutInflater.inflate(R.layout.app_item, null);
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



