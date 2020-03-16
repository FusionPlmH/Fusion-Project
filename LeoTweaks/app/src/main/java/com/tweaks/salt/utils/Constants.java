package com.tweaks.salt.utils;


import static android.view.View.GONE;
import static android.view.View.VISIBLE;

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
	public static  String OtaUrl = OSUrl+"update_info.xhtml";
	public static  String HelpUrl = OSUrl+"help.html";
    public static  String ChangelogUrl = OSUrl+"Changelog.txt";
	public static final String OTAZIP= "LeoOTA.zip";
	public static final String LeoOTAHTTP = "http://os.leorom.cc/ota/"+OTAZIP;
	public static final String EuropeHTTP = "http://os.leorom.cc/ota/Europe_ota_a.zip";
	public static final String JapanHTTP = "http://os.leorom.cc/ota/Japan_ota_a.zip";
	public static final String OTA = "/sdcard/LeoTweaks/ota/ota.zip";
	public static final String LeoTAG = "LeoTweaks";
	public static String safety="TEVPUk9NJXU2NzAwJXU1OTdEJXU3NTI4";
	public static String WALLPAPER_format = ".jpg";
	public static String WALLPAPER_DATA_PATH = "/data/data/com.tweaks.salt/wallpaper";
	public static String WALLPAPER_DATA = "/data/data/com.tweaks.salt/wallpaper/leo_wallpaper.jpg";
	public static String JPEGWallpaper = "/data/data/com.tweaks.salt/files/leo_wallpaper.jpg";
	public static String WALLPAPER_URL = "/data/data/com.tweaks.salt/wallpaper/";
	public static String WALLPAPER_KEY = WALLPAPER_DATA_PATH +"/";
	public static   String theme_title="切换主题模式";
	public static   String Title= theme_title;
	public static String GLOBAL_SPF_DISABLE_ENFORCE = "enforce_0";
	public static String mNewline="\n";
	public static  String REBOOT_DEVICE = "com.leo.restart.dpi";
	public static  String ROM_OTA = "com.leo.ota";
	public static  String LEO_ACTION_SERVICE = "com.os.leo.action.Service";
	public static  String LEO_ACTION_GLOBAL= "ACTION";
	public static String GLOBAL_SPF = "global"; //spf
	public static String GLOBAL_SPF_NIGHT_MODE = "app_night_mode";
	//public static String WALLPAPER_URL(String NAME){
		//String ser;
	//	ser=(WALLPAPER_URL+NAME+"_" +getDevice()+"_" + getCustomDateSystemVersion()+ ".jpg");
	//	return ser;
//	}
	public static String APP_HIDE_HISTORY_SPF = "app_hide_spf";
	public static String APP_APPS = "leo_apps_help";
	public static String OS_VERSION="LeoROM-V3.2";
}