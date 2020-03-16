package com.tweaks.leo.preference;


import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.tweaks.leo.R;

import java.util.ArrayList;
import java.util.List;

import static android.content.Context.LAYOUT_INFLATER_SERVICE;

public class CustomBatteryLA extends ArrayAdapter<CustomBatteryDialog.BatteryInfo> {
    protected List<CustomBatteryDialog.BatteryInfo> mBatteries = new ArrayList();
    public CustomBatteryLA(Context context, int textViewResourceId, List<CustomBatteryDialog.BatteryInfo> objects) {
        super(context, textViewResourceId, objects);
        this.mBatteries = (ArrayList) objects;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        View row = convertView;
        if (row == null) {
            row = ((LayoutInflater) getContext().getSystemService(LAYOUT_INFLATER_SERVICE)).inflate(R.layout.custom_battery_item, parent, false);
        }
        TextView batteryName = row.findViewById(R.id.battery_name);
        TextView batteryCompiler = row.findViewById(R.id.battery_compilername);
        TextView batteryAuthor = row.findViewById(R.id.battery_authorname);
        row.findViewById(R.id.battery_icon).setBackground(this.mBatteries.get(position).fullicon);
        batteryName.setText(this.mBatteries.get(position).name);
        batteryCompiler.setText(this.mBatteries.get(position).compilername);
        batteryAuthor.setText(this.mBatteries.get(position).originalauthor);
        return row;
    }
}
