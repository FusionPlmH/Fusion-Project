package com.leo.global.preference;

import android.annotation.SuppressLint;
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
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;


import com.leo.global.tools.kotlin.OverScrollListView;
import com.leo.global.tweaks.R;

import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import static android.content.Context.LAYOUT_INFLATER_SERVICE;

@SuppressLint("ValidFragment")
public class CustomBatteryDialog  extends AlertDialog {
   // private AlertDialog.Builder builder;
    private String authorPreText;
    private String compilerPreText ;
    protected List<BatteryInfo> mBatteries = new ArrayList();
    private OnBatteryPickedListener mListener;
    PackageManager mPm;



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


    public interface OnBatteryPickedListener {
        void onBatteryPicked(String str, Drawable drawable);
    }



    public CustomBatteryDialog(Context context) {
        super(context);
       // builder= new AlertDialog.Builder(context);
        authorPreText = context.getString(R.string.custom_battery_authorpt);
       compilerPreText = context.getString(R.string.custom_battery_compilerpt);
       mPm = getContext().getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("leorom.intent.category.BATTERY_MODULE");
        List<ResolveInfo> res = this.mPm.queryIntentActivities(intent, 8192);
        for (int i = 0; i < res.size(); i++) {
            addNewBatteryInfoFromPKG(((ResolveInfo) res.get(i)).activityInfo.packageName);
        }
        Collections.sort(this.mBatteries, new AlphabeticalComparator(getContext()));



        LayoutInflater welmsgInflater = LayoutInflater.from(context);
        View welmsgLayout = welmsgInflater.inflate(R.layout.icon_preference_dialog_view, null);
       setView(welmsgLayout);



        OverScrollListView lv = (OverScrollListView) welmsgLayout.findViewById(R.id.thumbnailListView);
       // lv.setLayoutParams(lv);
        lv.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
              mListener.onBatteryPicked(((BatteryInfo)mBatteries.get(position)).batterypkg, ((BatteryInfo)mBatteries.get(position)).fullicon);
            }
        });

        lv.setAdapter(new BatteryAdapter(getContext(), R.layout.custom_battery_item, this.mBatteries));

        lv.setFastScrollEnabled(true);
        lv.setFadingEdgeLength(1);
        lv.setDivider(null);
        lv.setDividerHeight(0);
        lv.setScrollingCacheEnabled(false);
       // builder.setContentView(ll);
      //  ll.addView(lv);
      //  builder.setView(ll);

    }



    public  void setOnBatteryPickedListener(OnBatteryPickedListener listener) {
        this.mListener = listener;
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
            Context otherAppContext = getContext().createPackageContext(pkg, 3);
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
                view2 = ((LayoutInflater) getContext().getSystemService(LAYOUT_INFLATER_SERVICE)).inflate(R.layout.custom_battery_item, viewGroup, false);
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
