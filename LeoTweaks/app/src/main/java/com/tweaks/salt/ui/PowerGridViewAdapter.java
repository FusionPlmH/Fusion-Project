package com.tweaks.salt.ui;




import android.content.Context;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.tweaks.salt.R;


public class PowerGridViewAdapter extends BaseAdapter {

	private static final int COUNT =2;
	int[] names = {


			R.string.gv_name_power,

			R.string.list_grid_background
	};



	int[] Icon={

			R.drawable.ic_power,

			R.drawable.ic_grid_view_backdrop
	};
	private LayoutInflater inflater;
	public PowerGridViewAdapter(Context context){
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