package com.tweaks.salt.ui.list;



import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.tweaks.salt.R;
import com.tweaks.salt.fragment.BixbyKeyFragment;
import com.tweaks.salt.fragment.FingerprintKeyFragment;
import com.tweaks.salt.fragment.PowerKeyFragment;
import com.tweaks.salt.fragment.ReturnKeyFragment;
import com.tweaks.salt.fragment.StatusBarIconFragment;
import com.tweaks.salt.fragment.StatusBarLogoFragment;


public class StatusBarMenuGridViewAdapter extends BaseAdapter {

	private static final int COUNT = 8;
	int[] names = {
			R.string.list_grid_clock,
			R.string.list_grid_icon,
			R.string.list_grid_label,
			R.string.list_grid_networkspeed,
			R.string.list_grid_temperature,
			R.string.grid_status_weather,
			R.string.list_grid_battery,
			R.string.list_grid_background


	};


	int[] Icon = {
			R.drawable.ic_grid_view_clock,
			R.drawable.ic_grid_view_icon,
			R.drawable.ic_grid_view_carrier,
			R.drawable.ic_grid_view_network,
            R.drawable.ic_grid_view_temperature,
			R.drawable.ic_grid_view_weather,
			R.drawable.ic_grid_view_battery,

			R.drawable.ic_grid_view_backdrop


	};
	private LayoutInflater inflater;
	public StatusBarMenuGridViewAdapter(Context context){
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
		View view = inflater.inflate(R.layout.list_grid_item, null);
		
		ImageView iv = (ImageView) view.findViewById(R.id.list_grid_item_icon);
		iv.setBackgroundResource(Icon[position]);
		TextView name = (TextView) view.findViewById(R.id.list_grid_item_name);
		name.setText(names[position]);
		TextView summary = (TextView) view.findViewById(R.id.list_grid_item_summary);
		summary.setText(Summary[position]);

		return view;
	}

	int[] Summary = {
			R.string.list_grid_clock_summary,
			R.string.list_grid_icon_summary,
			R.string.list_grid_label_summary,
			R.string.list_grid_networkspeed_summary,
			R.string.list_grid_temperature_summary,
			R.string.grid_status_weather_summary,
			R.string.list_grid_battery_summary,
			R.string.list_grid_background_summary

	};
}
