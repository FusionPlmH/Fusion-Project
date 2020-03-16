package com.tweaks.leo.ui;


import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.tweaks.leo.R;


public class AppAboutGridViewAdapter extends BaseAdapter {

	private static final int COUNT = 5;
	int[] names = {


			R.string.list_grid_sina,
			R.string.list_grid_code,
			R.string.list_grid_service,
			R.string.list_grid_mail,

			R.string.list_grid_qq
	};

	int[] Icon = {

			R.drawable.about_sina,
			R.drawable.ic_thank,
			R.drawable.ic_contact,
			R.drawable.ic_mail,
			R.drawable.ic_qq


	};
	private LayoutInflater inflater;
	public AppAboutGridViewAdapter(Context context){
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
