package com.salt.config.picker;


import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;

import android.media.ExifInterface;
import android.net.Uri;
import android.provider.MediaStore;
import android.provider.Settings;


import android.view.View;

import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;


import androidx.appcompat.app.AlertDialog;
import androidx.cardview.widget.CardView;

import com.google.android.material.appbar.AppBarLayout;
import com.salt.base.SaltActivity;
import com.salt.config.R;
import com.salt.config.view.AppBarStateChangeListener;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

import static com.salt.frame.LeadFrame.getStringIdentifier;


public  class WallpaperPicker extends SaltActivity {
    private FileOutputStream mFileOutputStream = null;
    private Bitmap mBitmap= null;
    String  mDefaultUrl="/data/data/com.salt.config";
    String mDefaultWallpaper=mDefaultUrl+"/files/wallpaper.jpg";
    public ImageView WallpaperView = null;
    public CardView SelectrView;
    public EditText widthEditText,heightEditText;
    public LinearLayout mCardView;
    public  String mWallpaperKey="0";
    public  String mWallpaperName="1";
    File  DataUrl = new File("/data/data/com.salt.config/2");

    @Override
    protected int initLayout() {
        return R.layout.wallpaper_picker;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }

    @Override
    protected String initAppName() {
        return mWallpaperName;
    }
    private static final int REQUEST_PICK_IMAGE = 0;
    @Override
    protected void initData() {
        Intent  intent = getIntent();
        mWallpaperKey= intent.getStringExtra("WallpaperKey");
        mWallpaperName= intent.getStringExtra("WallpaperName");
        WallpaperView = (ImageView) findViewById(R.id.wallpaper_view);
        SelectrView=findViewById(R.id.select_wallpaper);
        SelectrView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

             Intent intent = new Intent(Intent.ACTION_PICK);
                intent.setType("image/*");
              startActivityForResult(intent,0);
         //   startActivityForResult(new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), 1);
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
    }
    @Override
    protected void onActivityResult(int  requestCode, int resultCode, Intent intent) {
        int i3 = requestCode;
        super.onActivityResult( requestCode, resultCode, intent);
        if ( requestCode== 0 && resultCode == -1 && intent != null) {
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
                   // ToastALL(getStringIdentifier(getContext(),"no_wallpaper_size"));
                    mBitmap.compress(Bitmap.CompressFormat.JPEG, 90, mFileOutputStream);
                    WallpaperView.setImageBitmap(mBitmap);
                }
            } else {
               // ToastALL(getStringIdentifier(getContext(),"no_wallpaper_size"));
                mBitmap.compress(Bitmap.CompressFormat.JPEG, 90, mFileOutputStream);
                WallpaperView.setImageBitmap(mBitmap);
            }
        }
   //     showWallpaperNotification(mContext,getStringIdentifier(getContext(),"warm_prompt"),getStringIdentifier(getContext(),"wallpaper_select"));
        WallpaperView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onWallpaperDialog();
            }
        });

    }
    public void onWallpaperDialog(){

        View welmsg = View.inflate(mContext,R.layout. wallpaper_dialog, null);
        CardView use=(CardView) welmsg.findViewById(R.id.use_wallpaper);
        use.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try {
                    Toast.makeText(mContext,getStringIdentifier(mContext,"use_wallpaper")+mWallpaperName,Toast.LENGTH_SHORT).show();
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
                Toast.makeText(mContext,getStringIdentifier(mContext,"delete_wallpaper"),Toast.LENGTH_SHORT).show();
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
    public static String Urlr = ("/data/data/com.salt.config/2/_BG_" + System.currentTimeMillis() + ".jpg");;
    String b = "/data/data/com.salt.config/2/wallpaper.jpg";
    File c = new File("/data/data/com.salt.config/2/wallpaper.jpg");
    File s = new File(Urlr);
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
            Settings. System.putString(getContentResolver(),mWallpaperKey+"_wallpaper_url", Urlr);
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