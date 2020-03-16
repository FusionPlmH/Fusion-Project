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


import static com.tweaks.leo.utils.AndroidUtils.getCustomDateSystemVersion;
import static com.tweaks.leo.utils.AndroidUtils.getDevice;



public class Constants {
	public static String WALLPAPER_format = ".jpg";
	public static String WALLPAPER_DATA_PATH = "/data/data/com.tweaks.leo/wallpaper";
	public static String WALLPAPER_DATA = "/data/data/com.tweaks.leo/wallpaper/leo_wallpaper.jpg";
	public static String JPEGWallpaper = "/data/data/com.tweaks.leo/files/leo_wallpaper.jpg";
	public static String WALLPAPER_URL = "/data/data/com.tweaks.leo/wallpaper/";
	public static final String LeoTAG = "LeoTweaks";
	public static String WALLPAPER_KEY = WALLPAPER_DATA_PATH +"/";
	static final String DIALOG_REQUEST_CODE_KEY = "dialog_request_code";
	static final String SCRIPTS_FOLDER = "scripts";
	public static   String theme_title="切换主题模式";
	public static   String Title= theme_title;
	public static  String theme_1_summary="1.系统主题模式:自定义颜色将恢复默认,可完美应用主题";
	public static  String theme_2_summary="2.自定义模式:所有颜色将为自定义模式,应用主题可能不生效";
	public static String theme_3_summary="是否切换下方的主题模式?";

	//public static final String FILES_SCRIPTS_FOLDER_PATH = getContext().getFilesDir().getPath() + File.separator + SCRIPTS_FOLDER;
	public static final String FIRST_LAUNCH_KEY = "is_first_launch";
	public static String mNewline="\n";
	public static String mEmpty=" ";
	public static String Message=theme_1_summary+mNewline+ theme_2_summary+mNewline+theme_3_summary;
	public static Context mContext;
	//public  static String mCPU="/sys/devices/system/cpu/cpufreq/mp-cpufreq/cluster1_max_freq";
	public  static int mLeftAction;
	public static  String REBOOT_DEVICE = "action.LeoROM.REBOOT_DEVICE";
	public static  String HOT_REBOOT_DEVICE = "action.LeoROM.HOT_REBOOT_DEVICE";

	public static String GLOBAL_SPF = "global"; //spf
	public static boolean IsRooted=false;
	public static String GLOBAL_SPF_NIGHT_MODE = "app_night_mode";
	public static final int NO_SU_DIALOG_REQUEST_CODE = 46;
	public static String WALLPAPER_URL(String NAME){
		String ser;
		ser=(WALLPAPER_URL+NAME+"_" +getDevice()+"_" + getCustomDateSystemVersion()+ ".jpg");
		return ser;
	}
	public static String APP_HIDE_HISTORY_SPF = "app_hide_spf";
}