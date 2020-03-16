package com.leo.global.view.gridview;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.leo.global.tweaks.R;


public class AppAboutGridViewAdapter extends BaseAdapter {

	private static final int COUNT = 4;
	int[] names = {


			R.string.about_sina,
			R.string.about_service,
			R.string.about_qq,
			R.string.about_telegram
	};

	int[] Icon = {

			R.drawable.about_sina,
			R.drawable.about_contact,
			R.drawable.about_qq,
			R.drawable.about_telegram

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
