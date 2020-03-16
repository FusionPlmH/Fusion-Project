package com.leo.salt.ui;




import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.leo.salt.R;


public class GesturesFragmentGridViewAdapter extends BaseAdapter {

	private static final int COUNT = 6;
	int[] names = {
	        R.string.grid_hardware,
	        R.string.grid_gesture,
			R.string.grid_gesture_desktop,
			R.string.list_grid_action,
				R.string.list_grid_pop,
					R.string.list_grid_floating,
			R.string.grid_screenwake
			


	};



	int[] Icon={
			R.drawable.ic_grid_view_click,
			R.drawable.ic_grid_view_click,
			R.drawable.ic_grid_view_click,
			R.drawable.ic_grid_view_click,
				R.drawable.ic_mi_pop,
					R.drawable.ic_bowling,
			R.drawable.ic_grid_view_click

	};
	private LayoutInflater inflater;
	public GesturesFragmentGridViewAdapter(Context context){
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
