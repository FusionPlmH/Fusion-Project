package org.salt.preference.utils;


import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.provider.Settings;
import android.view.Gravity;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;

import androidx.preference.PreferenceViewHolder;

import org.salt.preference.R;

import static org.salt.preference.colorpicker.Utils.getColorAttr;


public  class SaltPrefeUtils {
   public static String defaultKey="leo_salt_";

    public static int getIntSaltSettings(int mode,Context context,String key) throws Settings.SettingNotFoundException {
        int style;
        switch (mode){
            case 1:
                style =Settings.Global.getInt(context.getContentResolver(), key);
                break;
            case 2:
                style= Settings.Secure.getInt(context.getContentResolver(), key);
                break;
            default:
                style = Settings.System.getInt(context.getContentResolver(), key);
                break;
        }
        return style;
    }
    public static int getIntSaltSettings2(int mode,Context context,String key,String mBroadcastKey) throws Settings.SettingNotFoundException {
        int style;
        switch (mode){
            case 1:
                style =Settings.Global.getInt(context.getContentResolver(), key);
                break;
            case 2:
                style= Settings.Secure.getInt(context.getContentResolver(), key);
                break;
            default:
                context.sendBroadcast(new Intent(mBroadcastKey));
                style = Settings.System.getInt(context.getContentResolver(), key);
                break;
        }
        return style;
    }
    public static void putIntSaltSettings(int mode, Context context,String key,int  style){

        switch (mode){
            case 1:
              Settings.Global.putInt(context.getContentResolver(),  key,style);
                break;
            case 2:
              Settings.Secure.putInt(context.getContentResolver(), key,style);
                break;
            default:
              Settings.System.putInt(context.getContentResolver(), key,style);
                break;
        }
    }
    public static void putIntSaltSettings2(int mode, Context context,String key,int  style,String mBroadcastKey){

        switch (mode){
            case 1:
                Settings.Global.putInt(context.getContentResolver(),  key,style);
                break;
            case 2:
                Settings.Secure.putInt(context.getContentResolver(), key,style);
                break;
            default:
                context.sendBroadcast(new Intent(mBroadcastKey));
                Settings.System.putInt(context.getContentResolver(), key,style);
                break;
        }
    }

    public static String getStringSaltSettings(int mode, Context context, String key)  {

        String style;
        switch (mode){
            case 1:
                style =Settings.Global.getString( context.getContentResolver(), key);
                break;
            case 2:
                style= Settings.Secure.getString( context.getContentResolver(), key);
                break;
            default:
                style = Settings.System.getString( context.getContentResolver(), key);
                break;
        }
        return style;
    }
    public static void putStringSaltString2(int mode, Context context,String key,String value,String mBroadcastKey){
        context.sendBroadcast(new Intent(mBroadcastKey));
        switch (mode){
            case 1:
                Settings.Global.putString(context.getContentResolver(),  key,value);
                break;
            case 2:
                Settings.Secure.putString(context.getContentResolver(), key,value);
                break;
            default:
                Settings.System.putString(context.getContentResolver(), key,value);
                break;
        }
    }
    public static void putStringSaltString(int mode, Context context,String key,String value){

        switch (mode){
            case 1:
                Settings.Global.putString(context.getContentResolver(),  key,value);
                break;
            case 2:
                Settings.Secure.putString(context.getContentResolver(), key,value);
                break;
            default:
                Settings.System.putString(context.getContentResolver(), key,value);
                break;
        }
    }

    static float mDensity ;
    static void setPreview(Context context) {
        widgetFrameView.setOrientation(LinearLayout.HORIZONTAL);
        int size = Math.round(context.getResources().getDimension(R.dimen.button_size));
        mIconView= new ImageView(context);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(size, size);
        params.gravity = Gravity.CENTER;
        params.setMargins(0, 0, 15, 0);
        mIconView.setLayoutParams(params);
        if (widgetFrameView == null) return;
        widgetFrameView.setVisibility(View.VISIBLE);
        widgetFrameView.setPadding(
                widgetFrameView.getPaddingLeft(),
                widgetFrameView.getPaddingTop(),
                (int) (mDensity * 8),
                widgetFrameView.getPaddingBottom());
        // remove already create preview image
        int count = widgetFrameView.getChildCount();
        if (count > 0) {
            widgetFrameView.removeViews(0, count);
        }
        widgetFrameView.addView(mIconView);
        Drawable D=context.getDrawable(R.drawable.ic_arrows);
        widgetFrameView.setMinimumWidth(0);
        mIconView.setImageDrawable( D);
        mIconView.setColorFilter(getColorAttr(context,R.attr.colorAccent), PorterDuff.Mode.SRC_ATOP);
    }
    static ImageView mIconView;
   static LinearLayout widgetFrameView;

    public static  void showArrows(Context context,PreferenceViewHolder holder){
        widgetFrameView= (LinearLayout) holder.findViewById(android.R.id.widget_frame);
        setPreview( context);
    }

    public static void showrestart(Context a,String packageNameToKill) {
        new RestartSystemUITask(a,packageNameToKill).execute( a);
    }
    public static void showrestartDialog( Context a,String packageNameToKill) {
        RestartSystemUITask task = new RestartSystemUITask(a,packageNameToKill) {
            private ProgressDialog dialog;
            @Override
            protected void onPreExecute() {
                super.onPreExecute();
                dialog = new ProgressDialog(a);
                dialog.setMessage("正在执行中");
                dialog.setCancelable(false);
                dialog.setIndeterminate(true);
                dialog.show();
            }
            @Override
            protected Void doInBackground(Context... params) {
                // Give the user a second to see the dialog
                try {
                    Thread.sleep(1500);
                } catch (InterruptedException e) {
                    // Ignore
                }


                super.doInBackground(params);
                return null;
            }
            @Override
            protected void onPostExecute(Void param) {
                super.onPostExecute(param);
                dialog.dismiss();
            }
        };
        task.execute(a);
    }


    private static class RestartSystemUITask extends AsyncTask<Context, Void, Void> {
        private Context mContext;
        private String mString;
        public RestartSystemUITask(Context context,String str) {
            super();
            mContext = context;
            mString=str;
        }
        @Override
        protected Void doInBackground(Context... params) {
            try {
                Intent intent = new Intent();
                intent.setAction("com.leo.global.action");
                intent.putExtra("leo_action", 2001);
                intent.putExtra("leo_processName", mString);
                mContext.sendBroadcast(intent);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        }
    }
}
