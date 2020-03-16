package com.fusionleo.salt.ui.list;




import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.fusionleo.salt.R;


public class CallGridViewAdapter extends BaseAdapter {

	private static final int COUNT =4;
	int[] names = {
			R.string.list_grid_call_location,
			R.string.list_grid_launcher,
			R.string.list_grid_launcher_background,
			R.string.list_grid_navigationbar

	};



	int[] Icon={
			R.drawable.grid_location,

			R.drawable.grid_home_icon,
			R.drawable.ic_grid_view_backdrop,
			R.drawable.ic_grid_view_navbar

	};
	private LayoutInflater inflater;
	public CallGridViewAdapter(Context context){
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
			R.string.list_grid_call_location_summary,
			R.string.list_grid_launcher_summary,
			R.string.list_grid_launcher_background_summary,
			R.string.list_grid_navigationbar_summary

	};
}
