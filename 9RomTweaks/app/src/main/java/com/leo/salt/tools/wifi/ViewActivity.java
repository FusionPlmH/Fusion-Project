package com.leo.salt.tools.wifi;
import android.app.*;
import android.content.*;
import android.os.*;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.Snackbar;
import android.support.v7.widget.Toolbar;
import android.view.*;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.TextView;
import android.widget.Toast;

import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.AppBarStateChangeListener;
import com.leo.salt.tweaks.base.BaseCollapsingToolbarActivity;

import java.util.*;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;


public class ViewActivity extends BaseCollapsingToolbarActivity {
	ArrayList<Map<String, String>> mainList;
	PopupMenu popup;
	Context context = this;
	String backupPath;
	String sPath;
  public TextView mWifiState;
	@Override
	protected String initCollapsingTextText() {
		return "waln_name";
	}

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		mWifiState=(TextView)findViewById(R.id.wifi_state);
		backupPath = context.getExternalFilesDir("Backup").getPath() + "/LastBackup";
		
		Intent intent = getIntent();
		
		if(Intent.ACTION_VIEW.equals(getIntent().getAction())) {
			sPath = intent.getDataString().substring(8);
			if(sPath.contains("%20")) {
				Toast.makeText(this, "路径不能包含空格", Toast.LENGTH_SHORT).show();
				finish();
			} else {
				mainList = get(sPath);
			}
		} else {
			Bundle bundle = intent.getExtras();
			sPath = bundle.getString("path");
			mainList = get(sPath);
		}
		onWork();
		mWifiState.setText(WIFIString("waln_total") + mainList.size() + WIFIString("waln_quantity"));
	}




	@Override
	protected int initLayout() {
		return R.layout.wifi_code;
	}

	@Override
	protected int initAppBarLayout() {
		return R.id.app_bar;
	}


	private void onWork() {
		if (mainList == null) {
			showSnack(WIFIString("waln_error"));
		} else {
			if (mainList.size() == 0) {
				showSnack(WIFIString("waln_null"));
			} else {
				doWork();
			}
		}
	}

	private void doWork() {
		ListView lv = (ListView) findViewById(R.id.lv);
		lv.setAdapter(new WiFiAdapter(this, mainList));
		lv.setOnItemClickListener((parent, view, position, id) -> {
			popup = new PopupMenu(ViewActivity.this, view);
			getMenuInflater().inflate(R.menu.copy,popup.getMenu());
			popup.setOnMenuItemClickListener(item -> {
				final ClipboardManager cm = (ClipboardManager) getSystemService(Context.CLIPBOARD_SERVICE);
				switch(item.getItemId()) {
					case R.id.menu_ssid:
						cm.setPrimaryClip(ClipData.newPlainText(null, mainList.get(position).get("ssid")));
						//Toast.makeText(ViewActivity.this, "SSID已复制", Toast.LENGTH_SHORT).show();
						showSnack(WIFIString("waln_ssid"));
						break;
					case R.id.menu_password:
						cm.setPrimaryClip(ClipData.newPlainText(null, mainList.get(position).get("psk")));
						showSnack(WIFIString("waln_code"));
						break;
					case R.id.menu_all:
						Map<String, String> s = mainList.get(position);
						cm.setPrimaryClip(ClipData.newPlainText(null, "SSID: " + s.get("ssid") + "\n" + WIFIString("waln_password") + s.get("psk")));
						showSnack(WIFIString("waln_code_ssid"));
						break;
					case R.id.menu_view:
						AlertDialog.Builder TextDialog = new AlertDialog.Builder(ViewActivity.this);
						TextDialog.setTitle(WIFIString("waln_source_code")).setMessage(mainList.get(position).get("pos") + "\n" + mainList.get(position).get("view"))
								.setPositiveButton(android.R.string.copy, (dialog, which) -> {
									cm.setPrimaryClip(ClipData.newPlainText(null, mainList.get(position).get("view")));
									showSnack(WIFIString("waln_source_code")+getString(android.R.string.copy));
								})
								.setNeutralButton(android.R.string.cancel, null).show();

						break;

					default:
						return false;
				}
				return true;
			});
			popup.show();
		});

	}


	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		menu.add(0,0,0,WIFIString("waln_refresh"));
		menu.add(0,1,0,WIFIString("waln_system_wifi"));
		menu.add(0,2,0,WIFIString("waln_error"));
		menu.getItem(2).setEnabled(false);
		if(mainList != null) menu.getItem(2).setTitle(WIFIString("waln_total") + mainList.size() + WIFIString("waln_quantity"));
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch (item.getItemId()) {
			case android.R.id.home:
				onBackPressed();
			case 0:
				mainList.clear();
				mainList = get(sPath);
				onWork();
				return true;
			case 1:
				startActivity(new Intent().setClassName("com.android.settings","com.android.settings.wifi.WifiSettings"));
				return true;
			default:
				return super.onOptionsItemSelected(item);
		}
	}

	public ArrayList<Map<String, String>> get(String path) {
		try {
			ReadFile file = new ReadFile(path);
			return file.getList(this.context);
		} catch (Exception e) {
			Toast.makeText(this, "ReadFile:" + e.getMessage(), Toast.LENGTH_LONG).show();
			return null;
		}
	}

	public  String WIFIString(String STR){

		return getStringIdentifier(this,STR);
	}

}
