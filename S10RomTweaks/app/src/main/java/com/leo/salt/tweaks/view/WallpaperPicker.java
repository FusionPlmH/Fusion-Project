package com.leo.salt.tweaks.view;


import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Typeface;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.provider.Settings;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.Snackbar;
import android.app.Fragment;
import android.app.AlertDialog;
import android.support.v7.widget.CardView;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.AppBarStateChangeListener;
import com.leo.salt.tweaks.base.BaseCollapsingPickerActivity;
import com.leo.salt.tweaks.resource.Resource;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;

import static com.leo.salt.tools.service.NotificationUtil.showWallpaperNotification;
import static com.leo.salt.tweaks.LeoAmberApplication.getContext;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.ToastALL;



public  class WallpaperPicker extends BaseCollapsingPickerActivity {
    private FileOutputStream mFileOutputStream = null;
    private Bitmap mBitmap= null;
    String  mDefaultUrl="/data/data/com.leo.salt.tweaks";
    String mDefaultWallpaper= mDefaultUrl+"/files/wallpaper.jpg";
    public ImageView WallpaperView = null;
    public CardView SelectrView;
    public EditText widthEditText,heightEditText;
    public CardView mCardView;
    public  String mWallpaperKey;
    public  String mWallpaperName;
    File  DataUrl = new File("/data/data/com.leo.salt.tweaks/LeoTweaks");

    @Override
    protected int initLayout() {
        return R.layout.wallpaper_picker;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
       Intent  intent = getIntent();
        mWallpaperKey= intent.getStringExtra("WallpaperKey");
        mWallpaperName= intent.getStringExtra("WallpaperName");
        WallpaperView = (ImageView) findViewById(R.id.wallpaper_view);
        SelectrView=findViewById(R.id.select_wallpaper);
        SelectrView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivityForResult(new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), 1);
            }
        });
        if (DataUrl.exists()) {
            DataUrl.setReadable(true, false);
            DataUrl.setWritable(true, false);
            DataUrl.setExecutable(true, false);
        } else {
            DataUrl.mkdirs();
            DataUrl.setReadable(true, false);
            DataUrl.setWritable(true, false);
            DataUrl.setExecutable(true, false);
        }
        mCardView=findViewById(R.id.wallpaper_card);
        mAppBarLayout.addOnOffsetChangedListener(new AppBarStateChangeListener() {
            @Override
            public void onStateChanged(AppBarLayout appBarLayout, State state) {
                if( state == State.EXPANDED ) {
                    mCardView.setVisibility(View.VISIBLE);

                }else if(state == State.COLLAPSED){
                    mCardView.setVisibility(View.GONE);

                }else {
                    mCardView.setVisibility(View.VISIBLE);
                }
            }
        });

        mCollapsingToolbarLayout.setTitle(mWallpaperName);
    }
    protected void onActivityResult(int i, int i2, Intent intent) {
        int i3 = 1;
        super.onActivityResult(i, i2, intent);
        if (i == 1 && i2 == -1 && intent != null) {
            int attributeInt;
            String[] strArr = new String[]{"_data"};
            Cursor query = getContentResolver().query(intent.getData(), strArr, null, null, null);
            query.moveToFirst();
            String string = query.getString(query.getColumnIndex(strArr[0]));
            query.close();
            WallpaperView = (ImageView) findViewById(R.id.wallpaper_view);
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
                mFileOutputStream= new FileOutputStream(mDefaultWallpaper);
            } catch (IOException e) {
                e.printStackTrace();
            }
            mBitmap= BitmapFactory.decodeFile(string);
            widthEditText= (EditText) findViewById(R.id.width_edit);
          //  widthEditText.setHint(getStringIdentifier(getContext(),"width_wallpaper_size"));
            heightEditText= (EditText) findViewById(R.id.height_edit);
          //  heightEditText.setHint(getStringIdentifier(getContext(),"height_wallpaper_size"));
            if (((widthEditText.length() > 0 ? 1 : 0) & (widthEditText.length() > 0 ? 1 : 0)) != 0) {
                int intValue = Integer.valueOf(widthEditText.getText().toString()).intValue();
                int intValue2 = Integer.valueOf(heightEditText.getText().toString()).intValue();
                attributeInt = intValue > 0 ? 1 : 0;
                if (intValue2 <= 0) {
                    i3 = 0;
                }
                if ((attributeInt & i3) != 0) {
                    Bitmap createScaledBitmap = Bitmap.createScaledBitmap(mBitmap, intValue, intValue2, false);
                    createScaledBitmap.compress(Bitmap.CompressFormat.JPEG, 90,mFileOutputStream);
                    WallpaperView.setImageBitmap(createScaledBitmap);
                } else {
                    ToastALL(getStringIdentifier(getContext(),"no_wallpaper_size"));
                    mBitmap.compress(Bitmap.CompressFormat.JPEG, 90, mFileOutputStream);
                    WallpaperView.setImageBitmap(mBitmap);
                }
            } else {
                ToastALL(getStringIdentifier(getContext(),"no_wallpaper_size"));
                mBitmap.compress(Bitmap.CompressFormat.JPEG, 90, mFileOutputStream);
                WallpaperView.setImageBitmap(mBitmap);
            }

        }

        showWallpaperNotification(mContext,getStringIdentifier(getContext(),"warm_prompt"),getStringIdentifier(getContext(),"wallpaper_select"));
        WallpaperView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onWallpaperDialog();
            }
        });

        mCollapsingToolbarLayout.setTitle(mWallpaperName);
    }

    public void onWallpaperDialog(){

        View welmsg = View.inflate(mContext,R.layout. wallpaper_dialog, null);
        CardView use=(CardView) welmsg.findViewById(R.id.use_wallpaper);
        use.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try {
                    ToastALL(getStringIdentifier(getContext(),"use_wallpaper")+mWallpaperName);
                    onWallpaperUse();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                finish();
            }
        });
        CardView delete=(CardView) welmsg.findViewById(R.id.delete_wallpaper);
        delete.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ToastALL(mWallpaperName+getStringIdentifier(getContext(),"delete_wallpaper"));
                delete();
                finish();
            }
        });
        AlertDialog dialog = new AlertDialog.Builder(mContext)
                // .setView(layout);
                .setView(welmsg)
                .setNegativeButton(android.R.string.cancel, (dialog2, which) -> dialog2.dismiss())
               .create();
        dialog.show();


    }
    String b = "/data/data/com.leo.salt.tweaks/LeoTweaks/wallpaper.jpg";
    File c = new File("/data/data/com.leo.salt.tweaks/LeoTweaks/wallpaper.jpg");
    File s = new File(Resource.Urlr);
    FileChannel channel2;
    private void  onWallpaperUse() throws IOException{
        DataUrl.setReadable(true, false);
        DataUrl.setWritable(true, false);
        DataUrl.setExecutable(true, false);
        FileChannel channel = new FileInputStream(mDefaultWallpaper).getChannel();
       channel2 = new FileOutputStream(b).getChannel();
        try {
            channel.transferTo(0, channel.size(), channel2);
            String string = Settings.System.getString(getContentResolver(),mWallpaperKey+"_wallpaper_url");
            if (string != null) {
                File file = new File(Uri.parse(string).getPath());
                if (file != null && file.exists()) {
                    file.delete();
                }
            }
           c.renameTo(this.s);
           s.setReadable(true, false);
           s.setWritable(true, false);
           s.setExecutable(true, false);
            Settings. System.putString(getContentResolver(),mWallpaperKey+"_wallpaper_url", Resource.Urlr);
        } finally {
            if (channel != null) {
                channel.close();
            }
            if (channel2 != null) {
                channel2.close();
            }
        }

    }


    private void delete() {
        String string =  Settings.System.getString(getContentResolver(), mWallpaperKey+"_wallpaper_url");
        if (string != null) {
            File file = new File(Uri.parse(string).getPath());
            if (file != null && file.exists()) {
                file.delete();
                Settings. System.putString(getContentResolver(), mWallpaperKey+"_wallpaper_url", "null");
            }
        }
    }

}