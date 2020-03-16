package com.tweaks.leo.ui;



import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.tweaks.leo.R;
import com.tweaks.leo.fragment.BixbyKeyFragment;
import com.tweaks.leo.fragment.FingerprintKeyFragment;
import com.tweaks.leo.fragment.PowerKeyFragment;
import com.tweaks.leo.fragment.ReturnKeyFragment;
import com.tweaks.leo.fragment.StatusBarIconFragment;
import com.tweaks.leo.fragment.StatusBarLogoFragment;


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
		View view = inflater.inflate(R.layout.grid_item, null);
		ImageView iv = (ImageView) view.findViewById(R.id.grid_item_icon);
		iv.setBackgroundResource(Icon[position]);
		TextView name = (TextView) view.findViewById(R.id.grid_item_name);
		name.setText(names[position]);


		return view;
	}



}
