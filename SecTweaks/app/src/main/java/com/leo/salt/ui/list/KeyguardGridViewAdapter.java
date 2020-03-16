package com.leo.salt.ui.list;




import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.leo.salt.R;


public class KeyguardGridViewAdapter extends BaseAdapter {

	private static final int COUNT =8;
	int[] names = {

			R.string.list_grid_carrier,
			R.string.gv_name_power,
			R.string.list_grid_unlock,
			R.string.list_grid_alarm,
			R.string.list_grid_weather,
			R.string.list_grid_recents,
			R.string.list_grid_launcher,
			R.string.list_grid_city_location

	};


	int[] Icon = {

			R.drawable.ic_grid_view_carrier,
			R.drawable.ic_power,
			R.drawable.ic_grid_view_unlock,
			R.drawable.ic_grid_view_analogclock,
			R.drawable.weather,
			R.drawable.ic_grid_view_task,
			R.drawable.ic_grid_view_home,
			R.drawable.ic_cityscape
	};
	private LayoutInflater inflater;
	public KeyguardGridViewAdapter(Context context){
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

			R.string.list_grid_carrier_keyguard_summary,
			R.string.gv_name_power_summary,
				R.string.list_grid_more_keyguard_summary,
			R.string.list_grid_alarm_sumarry,
			R.string.list_grid_weather_sumarry,
			R.string.list_grid_recents_summary,
			R.string.list_grid_launcher_summary,
			R.string.list_grid_city_location_summary
	};

}
