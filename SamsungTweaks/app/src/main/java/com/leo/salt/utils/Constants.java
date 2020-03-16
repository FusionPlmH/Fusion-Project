package com.fusionleo.salt.utils;


import android.os.Environment;

import com.fusionleo.salt.LeoApp;

import java.io.File;

import static android.view.View.GONE;
import static android.view.View.VISIBLE;
import static com.fusionleo.salt.utils.AndroidUtils.getCustomDateSystemVersion;
import static com.fusionleo.salt.utils.AndroidUtils.getDevice;
import static com.fusionleo.salt.utils.Utils.isLunarSetting;

public class Constants {
	public static int Disabled=GONE;
	public static int Enabled=VISIBLE;
	public static  String OSUrl = "http://os.leorom.cc/";
	public static  String PPPS= "file:///android_asset/";
	public static  String IMG0Url = "http://os.leorom.cc/img/img_0.jpg";
	public static  String IMG1Url = "http://os.leorom.cc/img/img_1.jpg";
	public static  String IMG2Url = "http://os.leorom.cc/img/img_2.jpg";
	public static  String IMG3Url = "http://os.leorom.cc/img/img_3.jpg";
	public static  String IMG4Url = "http://os.leorom.cc/img/img_4.jpg";
	public static  String EulaUrl =PPPS+ "eula.html";
	public static  String EulaUrl_en =PPPS+ "eula_en.html";
	public static  String OtaUrl = OSUrl+"update_info.xhtml";
	public static  String HelpUrl = OSUrl+"help.html";
    public static  String ChangelogUrl = OSUrl+"Changelog.txt";
	public static  String ChangelogENUrl = OSUrl+"Changelog_en.txt";
	public static final String OTAZIP= "LeoGlobal_OTA_Oreo.zip";
	public static final String LeoOTAHTTP = "http://os.leorom.cc/ota/"+OTAZIP;
	public static String OTAURL="/sdcard/Android/ota/";
	public static String ClearOTA="/sdcard/Android/ota/";
	public static final String OTApath =OTAURL+"ota.zip";
	public static final String LeoTAG = "LeoTweaks";
	public static String safety="bGVvcm9tNC4wJXU2NUIwJXU1RTc0JXU3MjQ4JXU2NzJDJTBB";
	public static String WALLPAPER_format = ".jpg";
	public static String WALLPAPER_DATA_PATH = "/data/data/com.fusionleo.salt/wallpaper";
	public static String WALLPAPER_DATA = "/data/data/com.fusionleo.salt/wallpaper/leo_wallpaper.jpg";
	public static String JPEGWallpaper = "/data/data/com.fusionleo.salt/files/leo_wallpaper.jpg";
	public static String WALLPAPER_URL = "/data/data/com.fusionleo.salt/wallpaper/";
	public static String WALLPAPER_KEY = WALLPAPER_DATA_PATH +"/";
	public static   String theme_title="切换主题模式";
	public static   String Title= theme_title;
	public static String GLOBAL_SPF_DISABLE_ENFORCE = "enforce_0";
	public static String mNewline="\n";
	public static  String REBOOT_DEVICE = "com.leo.restart.dpi";

	public static  String LEO_ACTION_SERVICE = "com.os.leo.action.Service";
	public static  String LEO_ACTION_GLOBAL= "ACTION";
	public static String GLOBAL_SPF = "global"; //spf
	public static String GLOBAL_SPF_NIGHT_MODE = "app_night_mode";
	public static String WALLPAPER_URL(String NAME){
		String ser;
	ser=(WALLPAPER_URL+NAME+"_" +getDevice()+"_" + getCustomDateSystemVersion()+ ".jpg");
	return ser;
	}

	public static String APP_HIDE_HISTORY_SPF = "app_hide_spf";
	public static String APP_APPS = "leo_apps_help";
	public static String OS_VERSION="LeoROM-v5.1";
	public static  String LeoROMCode = "v3.0";
	public static  String LeoROMName = "Leo ROM";
	public static final String SERVICE_INTENT_ACTION_BACKUP = "com.fusionleo.salt.action.BACKUP";
	public static final String SERVICE_INTENT_ACTION_RESTORE = "com.fusionleo.salt.action.RESTORE";
	public static final String BACKUP_FILE_PATH_EXTRA_KEY = "file_path";
	public static final String SHARED_PREFS_FOLDER_PATH = LeoApp.getContext().getFilesDir().getParent() + File.separator + "shared_prefs";
	public static final String BACKUP_FOLDER_PATH = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "LeoTweaks" + File.separator + "backups"+File.separator + "prefs";
	public static final String DIALOG_RESTORE_IS_CONFIRM_REQUIRED = "is_confirm";
	public static final int BACKUP_OR_RESTORE_DIALOG_REQUEST_CODE = 26;
	public static final int RESTORE_FILE_SELECTOR_DIALOG_REQUEST_CODE = 65;

	public static  String IMG0UrlEN = "http://os.leorom.cc/img/img_en_1.jpg";
	public static  String IMG1UrlEN = "http://os.leorom.cc/img/img_en_2.jpg";
	public static  String IMG2UrlEN = "http://os.leorom.cc/img/img_en_3.jpg";
	public static  String IMG3UrlEN = "http://os.leorom.cc/img/img_3.jpg";
	public static  String IMG4UrlEN = "http://os.leorom.cc/img/img_4.jpg";
	public static  String getChangelogUrl(){
		String EN;
		if (isLunarSetting()==true){
			EN=ChangelogUrl;
		}else {
			EN=ChangelogENUrl;
		}
		return EN;
	}

	public static  String getEulaUrl(){
		String EN;
		if (isLunarSetting()==true){
			EN=EulaUrl;
		}else {
			EN=EulaUrl_en;
		}
		return EN;
	}
    public static  String getEulatitle(){
        String EN;
        if (isLunarSetting()==true){
            EN="使用须知";
        }else {
            EN="usage notice";
        }
        return EN;
    }
}