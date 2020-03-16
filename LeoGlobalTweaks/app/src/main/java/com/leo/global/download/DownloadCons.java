package com.leo.global.download;


import android.content.Context;
import android.os.Environment;
import android.widget.Toast;


import com.leo.global.tweaks.R;

import java.io.File;

import static com.leo.global.tweaks.LeoAmberApplication.getContext;
import static com.leo.global.utils.Build.getLeoBuild;


public class DownloadCons {
    public static  String OSUrl = "http://os.leorom.cc/";
	public static String OTAURL="/sdcard/Android/ota/";
	public static String ClearOTA="/sdcard/Android/ota/";
    public static  String OtaUrl = OSUrl+"update_info_pie.xhtml";

	public static final String OTApath =OTAURL+"ota.zip";
	public static final String LeoTAG = "LeoTweaks";
	public static final String Hitomi_ROM_OTAZIP= "Hitomi_OTA_V6.zip";
	public static final String OTAZIP= "LeoGlobal_V8.1.zip";
	public static final String ExynosOTAZIP= "LeoExynosGlobal_V8.1.zip";

	public static final String LeoOTAHTTP = "http://ota.leorom.cc/leo/"+OTAZIP;
	public static final String LeoExynosOTAHTTP = "http://ota.leorom.cc/leo/"+ExynosOTAZIP;
	public static final String LEO_ROMOTAUS_LINGExynos = "http://ota.52leo.cc/leo/"+ExynosOTAZIP;
	public static final String LEO_ROMOTAUS_LING = "http://ota.52leo.cc/leo/"+OTAZIP;
	public static final String GooglePackage= "GoogleServicesPackage.zip";
	public static final String LeoInstallGoogleCN = "http://ota.leorom.cc/leo/Google/"+GooglePackage;
	public static String DownloadRoute(Context context,int oast){
         String Qualcomm="";
		if(getLeoBuild("ro.hardware.chipname").equals("MSM8998")) {
			Qualcomm=LeoOTAHTTP;
		} else if(getLeoBuild("ro.hardware.chipname").equals("exynos8895")) {
			Qualcomm=LeoExynosOTAHTTP;
		}else {
			Toast.makeText(getContext(),context.getResources().getString(oast),Toast.LENGTH_SHORT).show();
		}
		return Qualcomm;
	}
	public static String DownloadRoute2(Context context,int oast ){
		String Qualcomm="";
		if(getLeoBuild("ro.hardware.chipname").equals("MSM8998")) {

		} else if(getLeoBuild("ro.hardware.chipname").equals("exynos8895")) {
			Qualcomm=LEO_ROMOTAUS_LINGExynos;
		}else {
			Toast.makeText(getContext(),context.getResources().getString(oast),Toast.LENGTH_SHORT).show();
		}
		return Qualcomm;
	}
}