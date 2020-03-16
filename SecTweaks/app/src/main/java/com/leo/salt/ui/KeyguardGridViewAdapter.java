package com.leo.salt.ui;




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
		View view = inflater.inflate(R.layout.grid_item, null);

		ImageView iv = (ImageView) view.findViewById(R.id.grid_item_icon);
		iv.setBackgroundResource(Icon[position]);
		TextView name = (TextView) view.findViewById(R.id.grid_item_name);
			name.setText(names[position]);


		return view;
	}


}
