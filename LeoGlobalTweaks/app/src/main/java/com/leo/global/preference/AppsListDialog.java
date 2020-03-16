package com.leo.global.preference;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.leo.global.tools.kotlin.OverScrollListView;
import com.leo.global.tweaks.R;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import static android.content.Context.LAYOUT_INFLATER_SERVICE;


public class AppsListDialog  extends AlertDialog {
    boolean isBlankEnabled=false ;
    protected List<AppInfo> mApps = new ArrayList();
    private OnAppPickedListener mListener;
    PackageManager mPm;




    public class AlphaComparator implements Comparator<ResolveInfo> {
        private final Collator instance = Collator.getInstance();
        Context mContext;

        public AlphaComparator(Context context) {
            this.mContext = context;
        }

        public int compare(ResolveInfo resolveInfo, ResolveInfo resolveInfo2) {
            return (resolveInfo == null || resolveInfo.loadLabel(this.mContext.getPackageManager()) == null) ? -1 : (resolveInfo2 == null || resolveInfo2.loadLabel(this.mContext.getPackageManager()) == null) ? 1 : this.instance.compare(resolveInfo.loadLabel(this.mContext.getPackageManager()).toString(), resolveInfo2.loadLabel(this.mContext.getPackageManager()).toString());
        }
    }

    class AppInfo {
        String appname = "";
        Drawable icon;
        String packagename = "";
        String appnamePackage = "";
        AppInfo() {
        }
    }

    public interface OnAppPickedListener {
        void onAppPicked(String str, Drawable drawable, String str2);
    }
    private OverScrollListView mListView;
    public AppsListDialog(Context context) {
        super(context);

        this.mPm = getContext().getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        List queryIntentActivities = this.mPm.queryIntentActivities(intent, 8192);

        Collections.sort(queryIntentActivities, new AlphaComparator(getContext()));

        for (int i = 0; i < queryIntentActivities.size(); i++) {
            if (((ResolveInfo) queryIntentActivities.get(i)).activityInfo.loadLabel(this.mPm) != null) {
                AppInfo appInfo2 = new AppInfo();
                try {
                    appInfo2.appname = (String) ((ResolveInfo) queryIntentActivities.get(i)).activityInfo.loadLabel(this.mPm);
                } catch (ClassCastException e) {
                    appInfo2.appname =getContext().getString(R.string.apppicker_label_exception);
                    ;
                }
                appInfo2.appnamePackage= new StringBuilder(String.valueOf(((ResolveInfo) queryIntentActivities.get(i)).activityInfo.packageName)).toString();
                appInfo2.packagename = new StringBuilder(String.valueOf(((ResolveInfo) queryIntentActivities.get(i)).activityInfo.packageName)).append("|").append(((ResolveInfo) queryIntentActivities.get(i)).activityInfo.name).toString();
                appInfo2.icon = ((ResolveInfo) queryIntentActivities.get(i)).loadIcon(this.mPm);
                this.mApps.add(appInfo2);
            }
        }
        LayoutInflater welmsgInflater = LayoutInflater.from(context);
        View welmsgLayout = welmsgInflater.inflate(R.layout.icon_preference_dialog_view, null);
        //setContentView(welmsgLayout);



        mListView = (OverScrollListView) welmsgLayout.findViewById(R.id.thumbnailListView);
        // lv.setLayoutParams(lv);
        mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
               mListener.onAppPicked(((AppInfo) mApps.get(i)).packagename, ((AppInfo) mApps.get(i)).icon, ((AppInfo)mApps.get(i)).appname);
            }
        });
        mListView.setAdapter(new AppPickerListAdapter(getContext(), R.layout.app_item, this.mApps));
      //  lv.addView(lv);
        setView(welmsgLayout);

    }

    public void setOnAppPickedListener(OnAppPickedListener onAppPickedListener) {
        this.mListener = onAppPickedListener;
    }
    public class AppPickerListAdapter extends ArrayAdapter<AppInfo> {
        protected List<AppInfo> mApplications = new ArrayList();
        TextView mAppNames ;
        TextView mAppPackage ;
        ImageView mAppIcon;
        public AppPickerListAdapter(Context context, int i, List<AppInfo> list) {
            super(context, i, list);
            this.mApplications = list;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view2 == null) {
                view2 = ((LayoutInflater) getContext().getSystemService(LAYOUT_INFLATER_SERVICE)).inflate(R.layout.app_item, viewGroup, false);
            }
            mAppNames = (TextView) view2.findViewById(R.id.appName);
          mAppPackage = (TextView) view2.findViewById(R.id.appPackage);
            mAppIcon=(ImageView)view2.findViewById(R.id.appIcon);
            mAppIcon.setImageDrawable(((AppInfo) this.mApplications.get(i)).icon);
           // ((ImageView) view2.findViewById(R.id.appIcon)).setBackground(((AppInfo) this.mApplications.get(i)).icon);
            mAppNames.setText(((AppInfo) this.mApplications.get(i)).appname);
            mAppPackage.setText(((AppInfo) this.mApplications.get(i)).appnamePackage);
            return view2;
        }
    }


}