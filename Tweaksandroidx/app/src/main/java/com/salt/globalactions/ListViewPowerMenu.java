package com.salt.globalactions;


import android.content.Context;
import android.os.Bundle;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.salt.frame.saltview.OverScrollListView;
import com.salt.config.R;


public class ListViewPowerMenu extends LeoGlobalActions {

    private OverScrollListView mOverScrollGridView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        setLeoTheme();
        super.onCreate(savedInstanceState);

        Background();
        mOverScrollGridView = (OverScrollListView)findViewById(R.id.list_power);
        mOverScrollGridView.setAdapter(new setAdapterView(this));
        mOverScrollGridView.setOnItemClickListener(new GridViewItemOnClick());
        mOverScrollGridView.setFastScrollEnabled(true);
        mOverScrollGridView.setFadingEdgeLength(1);
        mOverScrollGridView.setDivider(null);
        mOverScrollGridView.setDividerHeight(0);
        mOverScrollGridView.setMaxOverScrollY(Settings.System.getInt(getApplicationContext().getContentResolver(), "leo_salt_power_menu_scroll_number", 300));
        TextView reminder=(TextView)findViewById(R.id.reminder);
        setTextReminderStyele(reminder);
    }

    @Override
    protected int initLayout() {
        return R.layout.power_meun_list;
    }




    public class setAdapterView extends BaseAdapter {



        private LayoutInflater inflater;
        public setAdapterView(Context context){
            inflater = LayoutInflater.from(context);
        }

        public int getCount() {
            return COUNT;
        }


        public Object getItem(int position) {
            return null;
        }


        public long getItemId(int position) {
            return position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            View view = inflater.inflate(R.layout.power_list_items, null);
            ImageView iv = (ImageView) view.findViewById(R.id.menu_img);
            iv.setImageDrawable(Icon[position]);
            TextView name = (TextView) view.findViewById(R.id.menu_name);
            name.setText(itemName[position]);
            setTextStyele( name);

            setTextStyeleColor(name);
            return view;
        }
    }

    public class GridViewItemOnClick implements AdapterView.OnItemClickListener {

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            initAction(position);

        }

    }

}
