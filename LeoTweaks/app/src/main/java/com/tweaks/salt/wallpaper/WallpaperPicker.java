package com.tweaks.salt.wallpaper;


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
import android.app.Fragment;
import android.support.v7.app.AlertDialog;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
import com.tweaks.salt.LeoApp;
import com.tweaks.salt.R;
import com.tweaks.salt.base.BasePreferenceFragment;


import static com.tweaks.salt.utils.Constants.JPEGWallpaper;
import static com.tweaks.salt.utils.Constants.WALLPAPER_DATA;
import static com.tweaks.salt.utils.Constants.WALLPAPER_DATA_PATH;

import static com.tweaks.salt.utils.NotificationUtils.showWallpaperNotification;

import static com.tweaks.salt.widget.DialogUtil.WallpaperInfo;
import static com.tweaks.salt.widget.DialogUtil.WallpaperSize;

import static com.tweaks.salt.widget.DialogUtil.WallpaperSuccess;



        public abstract class WallpaperPicker extends Fragment {
    private ImageView WallpaperView = null;
    private Button Choose = null;
    private Bitmap bitmap = null;
    private FileOutputStream  Storage_Path = null;
    private EditText width;
    private EditText height;


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.wallpaper_picker, container, false);

        return view;
    }


    FileChannel channel;
    FileChannel channel2;
    File CachePath = new File(WALLPAPER_DATA_PATH);
    String SDwallpaperPath =JPEGWallpaper;
    String StringPath = WALLPAPER_DATA;
    File DataPath = new File(WALLPAPER_DATA);
    public void onViewCreated( View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (this.CachePath.exists()) {
            this.CachePath.setReadable(true, false);
            this.CachePath.setWritable(true, false);
            this.CachePath.setExecutable(true, false);
        } else {
            this.CachePath.mkdirs();
            this.CachePath.setReadable(true, false);
            this.CachePath.setWritable(true, false);
            this.CachePath.setExecutable(true, false);
        }

        WallpaperView = (ImageView) view.findViewById(R.id.wallpaper_view);
        Choose = (Button) view.findViewById(R.id.select_wallpaper);
        Choose.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivityForResult(new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), 1);
            }
        });
        WallpaperInfo(getActivity());
    }
    public void onActivityResult(int i, int i2, Intent intent) {
        int i3 = 1;
        super.onActivityResult(i, i2, intent);
        if (i == 1 && i2 == -1 && intent != null) {
            int attributeInt;
            String[] strArr = new String[]{"_data"};
            Cursor query = getActivity().getContentResolver().query(intent.getData(), strArr, null, null, null);
            query.moveToFirst();
            String string = query.getString(query.getColumnIndex(strArr[0]));
            query.close();
            this.WallpaperView = (ImageView)getActivity().findViewById(R.id.wallpaper_view);
            try {
                attributeInt = new ExifInterface(string).getAttributeInt("Orientation", 0);
                Matrix matrix = new Matrix();
                if (attributeInt == 6) {
                    matrix.postRotate(90.0f);
                } else if (attributeInt == 3) {
                    matrix.postRotate(180.0f);
                } else if (attributeInt == 8) {
                    matrix.postRotate(270.0f);
                }
                this.Storage_Path = new FileOutputStream(JPEGWallpaper);
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.bitmap = BitmapFactory.decodeFile(string);
            this.width = (EditText) getActivity().findViewById(R.id.width_edit);
            this.height = (EditText)getActivity().findViewById(R.id.height_edit);
          if (((this.width.length() > 0 ? 1 : 0) & (this.width.length() > 0 ? 1 : 0)) != 0) {
                int intValue = Integer.valueOf(this.width.getText().toString()).intValue();
                int intValue2 = Integer.valueOf(this.height.getText().toString()).intValue();
                attributeInt = intValue > 0 ? 1 : 0;
                if (intValue2 <= 0) {
                    i3 = 0;
                }
                if ((attributeInt & i3) != 0) {
                    Bitmap createScaledBitmap = Bitmap.createScaledBitmap(this.bitmap, intValue, intValue2, false);
                    createScaledBitmap.compress(Bitmap.CompressFormat.JPEG, 90, this.Storage_Path);
                    this.WallpaperView.setImageBitmap(createScaledBitmap);
                } else {
                  WallpaperSize(getActivity());
                    this.bitmap.compress(Bitmap.CompressFormat.JPEG, 90, this.Storage_Path);
                    this.WallpaperView.setImageBitmap(this.bitmap);
                }
            } else {
              WallpaperSize(getActivity());
                this.bitmap.compress(Bitmap.CompressFormat.JPEG, 90, this.Storage_Path);
                this.WallpaperView.setImageBitmap(this.bitmap);
            }
            showWallpaperNotification(getActivity());
            //WallpaperSnackbar(getActivity());
            WallpaperView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    onWallpaperDialog();
                }
            });
        }
    }
    public void onWallpaperDialog(){
        AlertDialog dialog = new AlertDialog.Builder(getActivity())

                .setTitle(R.string.application_wallpaper)//设置对话框的标题
                .setMessage(R.string.application_wallpaper_sumarry)//设置对话框的内容
                //设置对话框的按钮

                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        try {
                            WallpaperUse();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        WallpaperSuccess(getActivity());
                        dialog.dismiss();

                    }
                }).create();
        dialog.show();
        dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);

    }
    public abstract void WallpaperUse() throws IOException;
}