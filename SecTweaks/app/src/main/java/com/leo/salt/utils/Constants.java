package com.leo.salt.utils;


import android.os.Environment;

import com.leo.salt.LeoApp;

import java.io.File;

import static android.view.View.GONE;
import static android.view.View.VISIBLE;
import static com.leo.salt.utils.AndroidUtils.getAPPNAME;
import static com.leo.salt.utils.AndroidUtils.getCustomDateSystemVersion;
import static com.leo.salt.utils.AndroidUtils.getDevice;
import static com.leo.salt.utils.Utils.isLunarSetting;

public class Constants {

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
	public static  String OtaUrl = OSUrl+"update_info_pie.xhtml";
	public static  String HelpUrl = OSUrl+"help.html";
    public static  String ChangelogUrl = OSUrl+"ChangelogPIE_CN.txt";
	public static  String ChangelogENUrl = OSUrl+"ChangelogPIE_EN.txt";

	public static String OTAURL="/sdcard/Android/ota/";
	public static String ClearOTA="/sdcard/Android/ota/";
	public static final String OTApath =OTAURL+"ota.zip";
	public static final String LeoTAG = "LeoTweaks";
	public static String safety="JXU1MDI5JXVGRjBDJXU0RjU5JXU3NTFGJXU4MEZEJXU1NDI2JXU4QkE5JXU2MjExJXU3MTY3JXU5ODdFJXU0RjYwJXU5NjZBJXU0RjYwJXU0RTAwJXU4RDc3JXU4RDcwJXU0RTBCJXU1M0JCJXVGRjFG";
	public static String WALLPAPER_format = ".jpg";
	public static String WALLPAPER_DATA_PATH = "/data/data/com.leo.salt/wallpaper";
	public static String WALLPAPER_DATA = "/data/data/com.leo.salt/wallpaper/leo_wallpaper.jpg";
	public static String JPEGWallpaper = "/data/data/com.leo.salt/files/leo_wallpaper.jpg";
	public static String WALLPAPER_URL = "/data/data/com.leo.salt/wallpaper/";
	public static String WALLPAPER_KEY = WALLPAPER_DATA_PATH +"/";
	public static   String theme_title="切换主题模式";
	public static   String Title= theme_title;
	public static String GLOBAL_SPF_DISABLE_ENFORCE = "enforce_0";
	public static String mNewline="\n";
	public static  String REBOOT_DEVICE = "com.leo.restart.dpi";

	public static  String LEO_ACTION_SERVICE = "com.global.hitomileo.action.service";
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
	public static String OS_VERSION="LeoROM(PIE)v8.0［VIP］";
	public static String Hitomi_ROM="Hitomi ROM v5.0";

	public static  String LeoROMCode = "Leo Code(Android Pie)_v2.0";
	public static  String LeoROMName = "Leo ROM";
	public static final String SERVICE_INTENT_ACTION_BACKUP = "com.leo.salt.action.BACKUP";
	public static final String SERVICE_INTENT_ACTION_RESTORE = "com.leo.salt.action.RESTORE";
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
		if (AndroidUtils.getROMVersion().equals(Hitomi_ROM)){
			EN=Hitomi_ROM_ChangelogUrl;
		}else{
			EN=ChangelogUrl;
		}
	} else{
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
	static final String SCRIPTS_FOLDER = "scripts";
	public static final String FILES_SCRIPTS_FOLDER_PATH = LeoApp.getContext().getFilesDir().getPath() + File.separator + SCRIPTS_FOLDER;
	public static  String Hitomi_OS=
			"我已经为你取消了所有的对话框提示 <br />" +
			"但是我还是建议你刷好机,还是重启一下手机,这样可以更流畅 <br /> <br />"+"<font color=\"#FF0000\">你不是测试,我也不是开发者,这就是正确的位置</font> <br />"+
			"<font color=\"#FF0000\">春风十里,不如有你</font> <br />" +
			"<font color=\"#FF0000\">你若安好,便是晴天☺</font>";
	public static final String Hitomi_ROM_ChangelogUrl= "http://Hitomi.leorom.cc/Changelog_Hitomi.txt";
	public static final String Hitomi_ROM_OTAZIP= "Hitomi_OTA_V6.zip";
	public static final String OTAZIP= "LeoGlobal_V8.1.zip";
	public static final String Hitomi_ROMOTAHTTP = "http://ota.leorom.cc/hitomi/"+Hitomi_ROM_OTAZIP;
	public static final String LeoOTAHTTP = "http://ota.leorom.cc/leo/"+OTAZIP;
	public static final String Hitomi_ROMOTAUS_LINE = "http://ota.52leo.cc/hitomi/"+Hitomi_ROM_OTAZIP;
	public static final String LEO_ROMOTAUS_LING = "http://ota.52leo.cc/leo/"+OTAZIP;
	public static final String GooglePackage= "GoogleServicesPackage.zip";
	public static final String LeoInstallGoogleCN = "http://ota.leorom.cc/leo/Google/"+GooglePackage;
}