package com.samsung.android.settings.deviceinfo.softwareinfo;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.SystemProperties;
import android.support.v7.preference.Preference;
import android.support.v7.preference.PreferenceScreen;

import android.text.BidiFormatter;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Log;

import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.settings.core.PreferenceControllerMixin;
import com.android.settings.leo.LeoConfig;
import com.android.settingslib.core.AbstractPreferenceController;



public class LeoNamePreferenceController extends AbstractPreferenceController implements PreferenceControllerMixin {
    private Preference mPreference;
    public LeoNamePreferenceController(Context context) {
        super(context);
    }

    public void displayPreference(PreferenceScreen preferenceScreen) {
        this.mPreference = preferenceScreen.findPreference("leo_rom_key");
        LeoNamePreferenceController.super.displayPreference(preferenceScreen);
    }

    public String getPreferenceKey() {
        return "leo_rom_key";
    }

    public boolean isAvailable() {
        return true;
    }



    public boolean handlePreferenceTreeClick(Preference preference) {
        if (!TextUtils.equals(preference.getKey(), getPreferenceKey())) {
            return false;
        }

        showlEODialog();
        return false;
    }
    public String getBaseband_Ver(){
        String baseband =SystemProperties.get("gsm.version.baseband");
        if (baseband.contains(",")){
            String[] baseband_parts = baseband.split(",");
            if (baseband_parts.length > 0 && baseband_parts[0].equals(baseband_parts[1])){
                baseband = baseband_parts[0];
            }
        }
        return baseband;
    }
    public String Url="https://www.leorom.cc";
    public String developer="rom info dialog";
    private void showlEODialog() {
        String  versions=" 版本";
        final ImageView logo = new ImageView(mContext);
        logo.setImageDrawable(getCustomDrawable(mContext,"leologo"));
        final TextView ifo = new TextView(mContext);
        Log.w(new String(new char[]{'L', 'e', 'o', '-', 'S', 'a', 'l', 't'}), developer);
        ifo.setText(
               "ROM"+"\n"+SystemProperties.get("ro.build.display.id")+"\n\n"+
                "内核"+versions+"\n"+System.getProperty("os.version")+"\n\n"+
                "基带"+versions+"\n"+getBaseband_Ver()+"\n\n"+
              "底包"+versions+"\n"+ SystemProperties.get("ro.build.id")+"."+SystemProperties.get("ro.build.PDA")+"\n\n"+Url
      );
        ifo.setOnClickListener(v -> openUrl(Url,mContext));
        ifo.setTextSize(16);
        LinearLayout KernelLayout = new LinearLayout(mContext);
        KernelLayout.setOrientation(LinearLayout.VERTICAL);
        KernelLayout.setPadding(60,30,60,0);
        KernelLayout.addView(logo);
        KernelLayout.addView(ifo);
        AlertDialog mDialog = new AlertDialog.Builder(mContext)
                .setView(KernelLayout)
                .setPositiveButton(android.R.string.yes, (dialog, which) -> dialog.dismiss()).create();
        mDialog.show();
    }
    public  Drawable getCustomDrawable(Context context, String rec) {
        Drawable d;
        String ConfigManager="com.XXX.XXX.XXX.XXX";
        try {
            Context otherAppContext =context.createPackageContext(ConfigManager, 3);
            d = otherAppContext.getResources().getDrawable(otherAppContext.getResources().getIdentifier(rec, "drawable",ConfigManager));
            return d.getCurrent();
        } catch (Exception e) {
            d = context.getResources().getDrawable(android.R.color.transparent);
            e.printStackTrace();
            return d;
        }
    }
    public static void openUrl(String url,Context context) {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        context.startActivity(intent);
    }

    public void updateState(Preference preference) {
        LeoNamePreferenceController.super.updateState(preference);
        if (this.mPreference != null) {
            String str = SystemProperties.get("ro.leo.name").equals("Leo ROM") ? getLeoROMdonate(): "你当前使用的不是正版LeoROM(You are not currently using a legitimate LeoROM)";
            this.mPreference.setTitle(LeoConfig.getStringIdentifier(this.mContext, "leo_rom"));
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(LeoConfig.getStringIdentifier(this.mContext, "leo_rom_sumarry"));
            SpannableString spannableString = new SpannableString(stringBuilder.toString());
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#ff0074d4")), 0, spannableString.length(), 0);
            this.mPreference.setSummary(spannableString);
            this.mPreference.setEnabled(true);
        }
    }
    public String getLeoROMdonate() {
        String strvip="ro.leo.os.vip.donate";
        String str="";
        if(SystemProperties.get(strvip).equals("true")){
            str=" №."+ SystemProperties.get("ro.leo.online.update.version");
        }else if(SystemProperties.get(strvip).equals("0")){
            str="";
        }
        return BidiFormatter.getInstance().unicodeWrap(Build.DISPLAY)+str;
    }
}
