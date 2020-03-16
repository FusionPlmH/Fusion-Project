package com.fusionleo.salt.wallpaper;


import android.app.Fragment;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.provider.Settings;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AlertDialog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import static com.fusionleo.salt.utils.Constants.WALLPAPER_URL;
import static com.fusionleo.salt.utils.Constants.WALLPAPER_format;


public class PowerMenuWallpaperPicker extends WallpaperPicker{
    String StringKey = WALLPAPER_URL+"leo_power_bg_wallpaper";
    File Path = new File(this. StringKey);

   public void WallpaperUse()  throws IOException{
        this.CachePath.setReadable(true, false);
        this.CachePath.setWritable(true, false);
        this.CachePath.setExecutable(true, false);
        this.channel = new FileInputStream(this.SDwallpaperPath).getChannel();
        this.channel2= new FileOutputStream(this.StringPath).getChannel();
        try {
            this.channel.transferTo(0, this.channel.size(), this.channel2);
            String string =  Settings.System.getString(getActivity().getContentResolver(), "leo_tweaks_power_bg_wallpaper");
            if (string != null) {
                File file = new File(Uri.parse(string).getPath());
                if (file != null && file.exists()) {
                    file.delete();
                }
            }
            this.DataPath.renameTo(this.Path);
            this.Path.setReadable(true, false);
            this.Path.setWritable(true, false);
            this.Path.setExecutable(true, false);
            Settings.System.putString(getActivity().getContentResolver(), "leo_tweaks_power_bg_wallpaper", this. StringKey);
        } finally {
            if (this.channel != null) {
                this.channel.close();
            }
            if (this.channel2 != null) {
                this.channel2.close();
            }
        }
        getActivity().onBackPressed();//销毁自己

    }



}