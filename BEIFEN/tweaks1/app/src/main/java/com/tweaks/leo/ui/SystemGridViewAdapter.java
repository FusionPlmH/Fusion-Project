package com.tweaks.leo.ui;




import android.content.Context;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.tweaks.leo.R;


public class SystemGridViewAdapter extends BaseAdapter {

	private static final int COUNT =4;
	int[] names = {
			R.string.list_grid_system,
			R.string.list_grid_goodlock,
			R.string.list_grid_pop,
			R.string.list_grid_call_background,
	};
	int[] Icon={
			R.drawable.ic_grid_view_android,
			R.drawable.goodlock_icon,
			R.drawable.ic_mi_pop,
			R.drawable.ic_grid_view_backdrop
	};
	private LayoutInflater inflater;
	public SystemGridViewAdapter(Context context){
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
