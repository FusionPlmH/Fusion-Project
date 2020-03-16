package com.tweaks.leo.utils;


import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.support.design.widget.Snackbar;
import android.view.View;
import android.widget.Toast;


import com.tweaks.leo.LeoApp;

import java.io.File;

import static com.tweaks.leo.utils.AndroidUtils.getCustomDateSystemVersion;
import static com.tweaks.leo.utils.AndroidUtils.getDevice;



public class Constants {
	public static final String LeoTAG = "LeoTweaks";
	public static final String BACKUP_FOLDER_PATH = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + LeoTAG + File.separator + "backups/data/";
	public	static final String SHARED_PREFS_FOLDER_PATH = LeoApp.getContext().getFilesDir().getParent() + File.separator + "shared_prefs";
	public static final String SERVICE_INTENT_ACTION_BACKUP = "com.leo.action.BACKUP";
	public static final String SERVICE_INTENT_ACTION_RESTORE = "com.leo.action.RESTORE";
	public static final String BACKUP_FILE_PATH_EXTRA_KEY = "file_path";
	public static String safety="JXU3NzFGJTBB";
	public static String WALLPAPER_format = ".jpg";
	public static String WALLPAPER_DATA_PATH = "/data/data/com.tweaks.leo/wallpaper";
	public static String WALLPAPER_DATA = "/data/data/com.tweaks.leo/wallpaper/leo_wallpaper.jpg";
	public static String JPEGWallpaper = "/data/data/com.tweaks.leo/files/leo_wallpaper.jpg";
	public static String WALLPAPER_URL = "/data/data/com.tweaks.leo/wallpaper/";

	public static String WALLPAPER_KEY = WALLPAPER_DATA_PATH +"/";
	static final String DIALOG_REQUEST_CODE_KEY = "dialog_request_code";
	public static   String theme_title="切换主题模式";
	public static   String Title= theme_title;
	public static String GLOBAL_SPF_DISABLE_ENFORCE = "enforce_0";
	public static String mNewline="\n";
	public static  String REBOOT_DEVICE = "action.LeoROM.REBOOT_DEVICE";
	public static String GLOBAL_SPF = "global"; //spf
	public static String GLOBAL_SPF_NIGHT_MODE = "app_night_mode";

	public static String WALLPAPER_URL(String NAME){
		String ser;
		ser=(WALLPAPER_URL+NAME+"_" +getDevice()+"_" + getCustomDateSystemVersion()+ ".jpg");
		return ser;
	}
	static final String DIALOG_RESTORE_IS_CONFIRM_REQUIRED = "is_confirm";
	public static String APP_HIDE_HISTORY_SPF = "app_hide_spf";
	public static final int BACKUP_OR_RESTORE_DIALOG_REQUEST_CODE = 26;
	public static final int RESTORE_FILE_SELECTOR_DIALOG_REQUEST_CODE = 65;
}