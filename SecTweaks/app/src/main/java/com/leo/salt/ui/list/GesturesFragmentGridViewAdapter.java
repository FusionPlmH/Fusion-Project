package com.leo.salt.ui.list;




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
			R.string.grid_hardware_summary,
			R.string.grid_gesture_summary,
			R.string.grid_gesture_desktop_sumarry,
			R.string.list_grid_action_summary,
	R.string.list_grid_pop_summary,
			R.string.list_grid_floating_summary,
			R.string.grid_screenwake_summary

	};

}
