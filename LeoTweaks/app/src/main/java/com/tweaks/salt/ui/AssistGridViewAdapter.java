package com.tweaks.salt.ui;


import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.tweaks.salt.R;

import static com.tweaks.salt.LeoApp.getContext;


public class AssistGridViewAdapter extends BaseAdapter {
	Context context;

	private static final int COUNT = 12;
	int[] names = {

			R.string.assist_grid_wifi,
			R.string.assist_grid_dpi,
			R.string.assist_grid_autostart,
			R.string.assist_grid_apps,
			R.string.assist_grid_img,
			R.string.assist_grid_property,
			R.string.assist_grid_network,
			R.string.assist_grid_developer,
			R.string.assist_grid_agps,
			R.string.assist_grid_jellybean,
			R.string.assist_grid_marshmallow,
			R.string.assist_grid_log
	};
	int[] Summary = {

			R.string.assist_grid_wifi_sumarry,
			R.string.assist_grid_dpi_sumarry,
			R.string.assist_grid_autostart_sumarry,
			R.string.assist_grid_apps_sumarry,
		   R.string.assist_grid_img_sumarry,
			R.string.assist_grid_property_sumarry,
			R.string.assist_grid_network_sumarry,
			R.string.assist_grid_developer_sumarry,
			R.string.assist_grid_agps_sumarry,
			R.string.assist_grid_jellybean_sumarry,
			R.string.assist_grid_marshmallow_sumarry,

			R.string.assist_grid_log_sumarry
	};
	int[] Icon = {
			R.drawable.drawer_wifi,
			R.drawable.drawer_dpi,
			R.drawable.drawer_apps,
			R.drawable.ic_app_manage,
			R.drawable.ic_img,
			R.drawable.ic_property,
			R.drawable.drawer_web,
			R.drawable.drawer_developer,
			R.drawable.drawer_agps,
			R.drawable.android,
			R.drawable.android,

			R.drawable.drawer_log

	};
	private LayoutInflater inflater;
	public AssistGridViewAdapter(Context context){
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

		View view = inflater.inflate(R.layout.assist_grid, null);

		ImageView iv = (ImageView) view.findViewById(R.id.assist_item_icon);
		iv.setBackgroundResource(Icon[position]);
		TextView name = (TextView) view.findViewById(R.id.assist_item_name);
		name.setText(names[position]);
		TextView summary = (TextView) view.findViewById(R.id.assist_item_summary);
		summary.setText(Summary[position]);
		return view;
	}


}
