package com.leo.global.tools.wifi;
import android.app.*;
import android.content.*;
import android.os.*;
import android.support.design.widget.AppBarLayout;
import android.support.v7.widget.Toolbar;
import android.view.*;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.TextView;
import android.widget.Toast;


import com.leo.global.tweaks.R;
import com.leo.global.tweaks.base.AppBarStateChangeListener;
import com.leo.global.tweaks.base.BaseCollapsingToolbarActivity;

import java.io.*;
import java.util.*;

import java.lang.Process;

import static com.leo.global.utils.Build.getLeoBuild;


public class ViewActivity extends BaseCollapsingToolbarActivity {
	ArrayList<Map<String, String>> mainList;
	PopupMenu popup;
	Context context = this;
	String backupPath;
	String sPath;

	@Override
	protected int initCollapsingTextText() {
		return R.string.assist_grid_wifi;
	}

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

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
		CollapsingToolbarLayoutSubText=findViewById(R.id.CollapsingToolbarLayoutSubText);
		mCollapsingLinearLayout.setVisibility(View.VISIBLE);
		mAppBarLayout.addOnOffsetChangedListener(new AppBarStateChangeListener() {
			@Override
			public void onStateChanged(AppBarLayout appBarLayout, State state) {
				if( state == State.EXPANDED ) {

					mCollapsingLinearLayout.setVisibility(View.VISIBLE);
					CollapsingToolbarLayoutSubText.setText("当前"+"共 " + mainList.size() + " 条WiFi"+"数据");

				}else if(state == State.COLLAPSED){
					//折叠状态
					mCollapsingLinearLayout.setVisibility(View.GONE);

				}else {
					//中间状态
					mCollapsingLinearLayout.setVisibility(View.VISIBLE);


				}
			}
		});
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
									TextDialog.setTitle("源信息浏览").setMessage(mainList.get(position).get("pos") + "\n" + mainList.get(position).get("view"))
											.setPositiveButton(android.R.string.copy,new DialogInterface.OnClickListener() {
												@Override
												public void onClick(DialogInterface dialog, int which) {
													cm.setPrimaryClip(ClipData.newPlainText(null, mainList.get(position).get("view")));
												}
											})
											.setNeutralButton(android.R.string.cancel, null).show();
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
