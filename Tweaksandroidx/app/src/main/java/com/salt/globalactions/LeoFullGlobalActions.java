package com.salt.globalactions;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;

import com.salt.config.R;

public abstract class LeoFullGlobalActions extends LeoGlobalActions {
   // public Context mContext;
    public  Bitmap mBitmap;
    public int BG=1;
    View decorView;
    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);


    }


    @Override
    protected void onResume() {
        super.onResume ();

    }

    public void Background(){
     Drawable BlurDrawable;
     mBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.bg);
     Bitmap finalBitmap =LeoGlobalBlur.with(mContext)
             .bitmap(mBitmap)
             .radius(5)
             .scale(10)
             .blur();
     BlurDrawable= new BitmapDrawable(mContext.getResources(), finalBitmap);
        //decorView.setBackgroundColor(Color.parseColor("#9d000000"));
     // View decorView = getWindow().getDecorView();
     decorView.setBackground( BlurDrawable);

    }

}
