package com.tweaks.salt.ui.list;


import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.tweaks.salt.R;


public class AppAboutGridViewAdapter extends BaseAdapter {

	private static final int COUNT = 4;
	int[] names = {


			R.string.list_grid_sina,

			R.string.list_grid_service,
			R.string.list_grid_qq
	};

	int[] Icon = {

			R.drawable.about_sina,

			R.drawable.ic_contact,
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
			R.string.list_grid_sina_summary,

			R.string.list_grid_service_summary,
			R.string.list_grid_qq_summary
	};

}
