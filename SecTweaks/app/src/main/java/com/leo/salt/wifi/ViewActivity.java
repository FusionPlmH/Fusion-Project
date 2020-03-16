package com.leo.salt.wifi;

import android.app.*;
import android.content.*;
import android.os.*;
import android.support.v7.widget.Toolbar;
import android.view.*;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.TextView;
import android.widget.Toast;


import com.leo.salt.R;
import com.leo.salt.base.BaseActivity;
import com.leo.salt.theme.Utils;
import com.leo.salt.utils.root.Helpers;


import java.io.*;
import java.util.*;

import java.lang.Process;



public class ViewActivity extends BaseActivity {
	ArrayList<Map<String, String>> mainList;
	PopupMenu popup;
	Context context = this;
	String backupPath;
	String sPath;
	 
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		Utils.StatusBarColor(this);
		getToolbarViews();
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
		WIFIquantity();
		onWork();
		
	}
	private void WIFIquantity(){
		TextView webViewBar = (TextView) findViewById(R.id.wifi_quantity);
		webViewBar.setText("当前"+"共 " + mainList.size() + " 条WiFi"+"数据");
	}


	private void getToolbarViews(){
		Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
		setSupportActionBar(toolbar);
		getSupportActionBar().setTitle(R.string.gv_name_wifi);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
	}

	@Override
	protected int initLayout() {
		return R.layout.wifi_code;
	}

	@Override
	protected boolean initStatusBarColor() {
		return false;
	}


	private void onWork() {
		if (mainList == null) {
			Toast.makeText(ViewActivity.this, "获取列表失败", Toast.LENGTH_LONG).show();
		} else {
			if (mainList.size() == 0) {
				Toast.makeText(ViewActivity.this, "列表为空", Toast.LENGTH_LONG).show();
			} else {
				doWork();
			}
		}
	}
	
	private void doWork() {
		ListView lv = (ListView) findViewById(R.id.lv);
		lv.setAdapter(new WiFiAdapter(this, mainList));
		lv.setOnItemClickListener(new AdapterView.OnItemClickListener() {
				@Override
				public void onItemClick(AdapterView<?> parent, View view, final int position, long id) {
					popup = new PopupMenu(ViewActivity.this, view);
					getMenuInflater().inflate(R.menu.copy,popup.getMenu());
					popup.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() {
						@Override
						public boolean onMenuItemClick(MenuItem item) {
							final ClipboardManager cm = (ClipboardManager) getSystemService(Context.CLIPBOARD_SERVICE);
							switch(item.getItemId()) {
								case R.id.menu_ssid:
									cm.setPrimaryClip(ClipData.newPlainText(null, mainList.get(position).get("ssid")));
									Toast.makeText(ViewActivity.this, "SSID已复制", Toast.LENGTH_SHORT).show();
									break;
								case R.id.menu_password:
									cm.setPrimaryClip(ClipData.newPlainText(null, mainList.get(position).get("psk")));
									Toast.makeText(ViewActivity.this, "密码已复制", Toast.LENGTH_SHORT).show();
									break;
								case R.id.menu_all:
									Map<String, String> s = mainList.get(position);
									cm.setPrimaryClip(ClipData.newPlainText(null, "SSID: " + s.get("ssid") + "\n" + "密码: " + s.get("psk")));
									Toast.makeText(ViewActivity.this, "SSID和密码都已复制", Toast.LENGTH_SHORT).show();
									break;
								case R.id.menu_view:
									AlertDialog.Builder TextDialog = new AlertDialog.Builder(ViewActivity.this);
									TextDialog.setTitle("源信息浏览").setMessage(mainList.get(position).get("pos") + "\n" + mainList.get(position).get("view")).setPositiveButton("关闭",null).setNeutralButton("复制", new DialogInterface.OnClickListener(){@Override public void onClick(DialogInterface dialog, int which) {
										cm.setPrimaryClip(ClipData.newPlainText(null, mainList.get(position).get("view")));
									}}).show();
									break;

								default:
									return false;
							}
							return true;
						}
					});
					popup.show();
				}
			});
			
	}


	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		menu.add(0,0,0,"刷新");
		menu.add(0,1,0,"打开WiFi设置");
		menu.add(0,2,0,"获取列表出错");
		menu.getItem(2).setEnabled(false);
		if(mainList != null) menu.getItem(2).setTitle("共 " + mainList.size() + " 条WiFi");
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
	

	
}
