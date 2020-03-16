package com.leo.salt.ui;




import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.leo.salt.R;


public class NotificationPanelGridViewAdapter extends BaseAdapter {

	private static final int COUNT = 6;
	int[] names = {
		
	R.string.list_grid_clock,
			R.string.list_grid_carrier,
		R.string.grid_task_apps,
			R.string.list_grid_analog_clock,
				R.string.list_grid_other,
	
	R.string.list_grid_button
	};


	int[] Icon = {
		
	R.drawable.ic_grid_view_clock,
			R.drawable.ic_grid_view_carrier,
				R.drawable.grid_apps,
			R.drawable.ic_grid_view_analogclock,
						R.drawable.ic_grid_view_more,
		
R.drawable.ic_grid_view_button

	};
	private LayoutInflater inflater;
	public NotificationPanelGridViewAdapter(Context context){
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
