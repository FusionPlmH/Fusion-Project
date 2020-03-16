package com.leo.salt.ui.list;




import android.content.Context;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.leo.salt.R;


public class SystemGridViewAdapter extends BaseAdapter {

	private static final int COUNT =4;
	int[] names = {
			R.string.list_grid_system,
			R.string.list_grid_goodlock,
			R.string.list_grid_sound,
			R.string.edge_single_plus_name
	};
	int[] Icon={
			R.drawable.ic_grid_view_android,
			R.drawable.goodlock_icon,
			R.drawable.ic_grid_music,
			R.drawable.edge_screen_icon

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
			R.string.list_grid_system_summary,
			R.string.list_grid_goodlock_summary,

			R.string.list_grid_sound_summary,

			R.string.description_edge_single_plus
	};


}
