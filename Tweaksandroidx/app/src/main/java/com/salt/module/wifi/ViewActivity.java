package com.salt.module.wifi;
import android.app.*;
import android.content.*;
import android.os.*;
import android.view.*;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.TextView;
import android.widget.Toast;


import com.salt.base.SaltActivity;
import com.salt.config.R;

import java.util.*;

import static com.salt.utils.SaltProper.getApksStringInt;


public class ViewActivity extends SaltActivity {
	ArrayList<Map<String, String>> mainList;
	PopupMenu popup;
	String backupPath;
	String sPath;
  public TextView mWifiState;

	@Override
	protected int initLayout() {
		return R.layout.wifi_code;
	}

	@Override
	protected int initAppBarLayout() {
		return R.id.app_bar;
	}

	@Override
	protected String initAppName() {
		return getApksStringInt("waln_name");
	}

	@Override
	protected void initData() {
		mWifiState=(TextView)findViewById(R.id.wifi_state);
		backupPath = mContext.getExternalFilesDir("Backup").getPath() + "/LastBackup";

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
		mWifiState.setText(getApksStringInt("waln_total") + mainList.size() + getApksStringInt("waln_quantity"));
	}


	private void onWork() {
		if (mainList == null) {
			showSnackn(getApksStringInt("waln_error"),mContext);
		} else {
			if (mainList.size() == 0) {
				showSnackn(getApksStringInt("waln_null"),mContext);
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
						showSnackn(getApksStringInt("waln_ssid"),mContext);
						break;
					case R.id.menu_password:
						cm.setPrimaryClip(ClipData.newPlainText(null, mainList.get(position).get("psk")));
						showSnackn(getApksStringInt("waln_code"),mContext);
						break;
					case R.id.menu_all:
						Map<String, String> s = mainList.get(position);
						cm.setPrimaryClip(ClipData.newPlainText(null, "SSID: " + s.get("ssid") + "\n" + getApksStringInt("waln_password") + s.get("psk")));
						showSnackn(getApksStringInt("waln_code_ssid"),mContext);
						break;
					case R.id.menu_view:
						AlertDialog.Builder TextDialog = new AlertDialog.Builder(ViewActivity.this);
						TextDialog.setTitle(getApksStringInt("waln_source_code")).setMessage(mainList.get(position).get("pos") + "\n" + mainList.get(position).get("view"))
								.setPositiveButton(android.R.string.copy, (dialog, which) -> {
									cm.setPrimaryClip(ClipData.newPlainText(null, mainList.get(position).get("view")));
									showSnackn(getApksStringInt("waln_source_code")+getString(android.R.string.copy),mContext);
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
		menu.add(0,0,0,getApksStringInt("waln_refresh"));
		menu.add(0,1,0,getApksStringInt("waln_system_wifi"));
		menu.add(0,2,0,getApksStringInt("waln_error"));
		menu.getItem(2).setEnabled(false);
		if(mainList != null) menu.getItem(2).setTitle(getApksStringInt("waln_total") + mainList.size() + getApksStringInt("waln_quantity"));
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
			return file.getList(this.mContext);
		} catch (Exception e) {
			Toast.makeText(this, "ReadFile:" + e.getMessage(), Toast.LENGTH_LONG).show();
			return null;
		}
	}


}
