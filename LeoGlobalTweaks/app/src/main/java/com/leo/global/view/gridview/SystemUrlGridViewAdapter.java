package com.leo.global.view.gridview;



import android.content.Context;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.leo.global.tweaks.R;


public class SystemUrlGridViewAdapter extends BaseAdapter {

	private static final int COUNT =5;
	int[] names = {
			R.string.assist_grid_network_sumarry,
			R.string.assist_grid_developer_sumarry,
			R.string.assist_grid_agps_sumarry,
			R.string.assist_grid_jellybean_sumarry,
			R.string.assist_grid_marshmallow_sumarry

	};
	int[] Icon={
			R.drawable.drawer_web,
			R.drawable.drawer_developer,
			R.drawable.drawer_agps,
			R.drawable.android,
			R.drawable.android
	};
	private LayoutInflater inflater;
	public SystemUrlGridViewAdapter(Context context){
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
