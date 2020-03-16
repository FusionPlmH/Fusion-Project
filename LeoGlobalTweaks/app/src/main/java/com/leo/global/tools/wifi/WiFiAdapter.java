
package com.leo.global.tools.wifi;

import android.content.*;
import android.view.*;
import android.widget.*;


import com.leo.global.tweaks.R;

import java.util.*;

public class WiFiAdapter extends BaseAdapter {
		private Context context;
		ArrayList<Map<String,String>> mainList;
		//WiFiAdapter mAdapter = new WiFiAdapter();

		public WiFiAdapter(Context context, ArrayList<Map<String,String>> list) {
			super();
			this.context = context;
			this.mainList = list;
		}

		@Override
		public int getCount() {
			return mainList.size();
		}

		@Override
		public Object getItem(int position) {
			return position;
		}

		@Override
		public long getItemId(int position) {
			return position;
		}
		
		@Override
		public View getView(int position, View view, ViewGroup parent) {
			ViewHolder holder;
			Map<String,String> m = mainList.get(position);
			if (view != null) {
				holder = (ViewHolder) view.getTag();
			} else {
				view = View.inflate(context, R.layout.wifi_item, null);
				holder = new ViewHolder();
				holder.ssid = (TextView) view.findViewById(R.id.wifi_title);
				holder.password = (TextView) view.findViewById(R.id.wifi_password);
				view.setTag(holder);
			}
			holder.ssid.setText(m.get("ssid"));
			holder.password.setText("密码："+m.get("psk"));
			return view;
		}
		
		class ViewHolder {
			public TextView ssid;
			public TextView password;
		}
	
	}
