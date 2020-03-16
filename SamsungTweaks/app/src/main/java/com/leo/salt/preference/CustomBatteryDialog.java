package com.fusionleo.salt.preference;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.support.v7.app.AlertDialog;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;

import com.fusionleo.salt.R;

import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@SuppressLint("ValidFragment")
public class CustomBatteryDialog extends Dialog {
    private String authorPreText = "";
    private String compilerPreText = "";
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
        super(context,R.style.AndroidTweaksDialogStyle);
       setTitle(R.string.custom_battery_dialog_title);
        this.authorPreText = context.getString(R.string.custom_battery_authorpt);
        this.compilerPreText = context.getString(R.string.custom_battery_compilerpt);
        this.mPm = getContext().getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("leorom.intent.category.BATTERY_MODULE");
        List<ResolveInfo> res = this.mPm.queryIntentActivities(intent, 8192);
        for (int i = 0; i < res.size(); i++) {
            addNewBatteryInfoFromPKG(((ResolveInfo) res.get(i)).activityInfo.packageName);
        }
        Collections.sort(this.mBatteries, new AlphabeticalComparator(getContext()));
        LayoutParams lp = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT);
        LinearLayout ll = new LinearLayout(getContext());
        ListView lv = new ListView(getContext());
        lv.setLayoutParams(lp);
        lv.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                CustomBatteryDialog.this.mListener.onBatteryPicked(((BatteryInfo) CustomBatteryDialog.this.mBatteries.get(position)).batterypkg, ((BatteryInfo) CustomBatteryDialog.this.mBatteries.get(position)).fullicon);
            }
        });

        lv.setAdapter(new CustomBatteryLA(getContext(), R.layout.custom_battery_item, this.mBatteries));
        ll.addView(lv);
      setContentView(ll);

    }

    public void setOnBatteryPickedListener(OnBatteryPickedListener listener) {
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
}
