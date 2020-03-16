package com.fusionleo.salt.utils.root;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.app.Service;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.os.Binder;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import android.util.Base64;
import android.view.WindowManager;
import android.widget.Toast;

import com.fusionleo.salt.MainActivity;
import com.fusionleo.salt.R;
import com.fusionleo.salt.update.DownloadActivity;

import static com.fusionleo.salt.utils.Constants.OTAURL;
import static com.fusionleo.salt.utils.Constants.OTAZIP;
import static com.fusionleo.salt.utils.Constants.OTApath;


/**
 * 为了保证下载任务可以一直在后台运行，我们创建一个下载的服务
 */
public class DownloadService extends Service {

    private DownloadTask downloadTask;

    private String downloadUrl;

    //创建 DownloadListener的匿名类实例，并在类中实现了5个方法
    private DownloadListener listener=new DownloadListener() {
        @Override
        public void onProgress(int progress) {
            //调用getNotification方法构建了一个用于显示下载进度的通知
            //然后调用NotificationManager()的notify方法去触发这个通知
            //这样就可以在状态栏看到下载进度了
            getNotificationManager().notify(1,getNotification(getApplicationContext().getResources().getString(R.string.process_download),progress));
        }
        public  void main() {
            //想命名的原文件的路径
            File file = new File(OTAURL+OTAZIP);
            //将原文件更改为f:\a\b.xlsx，其中路径是必要的。注意
            file.renameTo(new File(OTApath));

        }
        Handler handler;
        @Override
        public void onSuccess() {
            downloadTask=null;
            //下载成功时，将前台服务通知关闭，并创建一个下载成功的通知
            //关闭前台服务通知
            stopForeground(true);
            getNotificationManager().notify(1,getNotification(getApplicationContext().getResources().getString(R.string.download_ok),-1));
            main();
            Startupdate();
        }
        public void Startupdate() {
            Startupdateprompt(2000,"8");
            Startupdateprompt(4000,"6");
            Startupdateprompt(6000,"4");
            Startupdateprompt(8000,"2");
            new Handler().postDelayed(new Runnable() {
                @Override
                public void run() {
                    Loaddialog = new ProgressDialog(getApplicationContext(),ProgressDialog.THEME_DEVICE_DEFAULT_LIGHT);
                    Loaddialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);// 设置进度条的形式为圆形转动的进度条
                    Loaddialog.setCancelable(false);// 设置是否可以通过点击Back键取消
                    Loaddialog.setCanceledOnTouchOutside(false);// 设置在点击Dialog外是否取消Dialog进度条
                    Loaddialog.setMessage(getApplicationContext().getResources().getString(R.string.process_update));
                    new Thread(new Runnable() {
                        @Override
                        public void run() {
                            try {
                                Thread.sleep(1000);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                            Helpers.Companion.OtaCode();
                            Loaddialog.cancel();
                        }
                    }).start();
                    Loaddialog.getWindow().setType(WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);
                    Loaddialog.show();
                }
            }, 10000);

        }
     ProgressDialog Loaddialog;
        @Override
        public void onFailed() {
            downloadTask=null;
            //下载失败时，将前台服务通知关闭，并创建一个下载失败的通知
            //关闭前台服务通知
            String srt=getApplicationContext().getResources().getString(R.string.download_without);
            stopForeground(true);
            getNotificationManager().notify(1,getNotification(srt,-1));
            AlertDialog.Builder builder = new AlertDialog.Builder(getApplicationContext(),R.style.MyDialogStyle);
            builder.setMessage(srt);
            builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    // 具体操作
                }
            });
            final Dialog dialog = builder.create();
            dialog.getWindow().setType(WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);
            dialog.show();
            dialog.setCanceledOnTouchOutside(false);
            dialog.setCancelable(false);

        }
        public void Startupdateprompt(int mms, final String string) {
            handler = new Handler();
            handler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    Toast.makeText(DownloadService.this,getApplicationContext().getResources().getString(R.string.update_count_down)+string+getApplicationContext().getResources().getString(R.string.second),Toast.LENGTH_SHORT).show();
                }
            }, mms);

        }
        @Override
        public void onPaused() {
            downloadTask=null;
            Toast.makeText(DownloadService.this,getApplicationContext().getResources().getString(R.string.download_pause),Toast.LENGTH_SHORT).show();

        }

        @Override
        public void onCanceled() {
            downloadTask=null;
            stopForeground(true);
            Toast.makeText(DownloadService.this,getApplicationContext().getResources().getString(R.string.download_cancel),Toast.LENGTH_SHORT).show();

        }
    };


    /**
     * 下面的内容是为了让服务（service）与活动（Activity）进行通信
     */
    private DownloadBinder mBinder=new DownloadBinder();

    @Override
    public IBinder onBind(Intent intent) {
        return mBinder;
    }

    //创建DownloadBinder
    public class DownloadBinder extends Binder{
        //开始下载
        public void startDownload(String url){
            if (downloadTask==null){
                downloadUrl=url;
                //创建一个downloadTask实例，把DownloadListener作为参数传入
                downloadTask=new DownloadTask(listener);
                //调用execute方法开始下载，方法中传入下载的url
                downloadTask.execute(downloadUrl);
                //前台显示下载
                startForeground(1,getNotification(getApplicationContext().getResources().getString(R.string.download_start),0));
            }
        }

        //暂停下载
        public void pauseDownload(){
            //暂停下载，直接调用DownloadTask的pauseDownload方法
            if (downloadTask!=null){
                downloadTask.pauseDownload();
            }

        }
        //取消下载
        public void cancelDownload(){
            if (downloadTask!=null){
                downloadTask.cancelDownload();
            }
            if (downloadUrl!=null){
                //取消下载时需要将文件删除，并将通知关闭
                //根据URL解析出下载的文件名
                String fileName=downloadUrl.substring(downloadUrl.lastIndexOf("/"));
                //将文件下载到Environment.DIRECTORY_DOWNLOADS目录下，也就是SD卡的Download目录
                String directory= Environment.getExternalStoragePublicDirectory(
                        Environment.DIRECTORY_DOWNLOADS).getPath();
                File file=new File(directory+fileName);
                //取消下载时需要将文件删除，并将通知关闭
                if (file.exists()){
                    file.delete();
                }
                getNotificationManager().cancel(1);
                stopForeground(true);
                Toast.makeText(DownloadService.this,"已经取消",Toast.LENGTH_SHORT).show();
            }
        }
    }


    private NotificationManager getNotificationManager(){
        return (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
    }

    private Notification getNotification(String title,int progress){
        Intent intent=new Intent(this,DownloadActivity.class);
        PendingIntent pi=PendingIntent.getActivity(this,0,intent,0);
        NotificationCompat.Builder builder=new NotificationCompat.Builder(this);
        builder.setSmallIcon(R.mipmap.ic_launcher);
        builder.setLargeIcon(BitmapFactory.decodeResource(getResources(),R.mipmap.ic_launcher));
        builder.setContentIntent(pi);
        builder.setContentTitle(title);
        if (progress>=0){
            //当progress大于等于0时才需要显示下载进度
            builder.setContentText(progress+"%");
            //第一个参数传入通知的最大进度，第二个是通知的当前进度，第三个是是否使用模糊进度条
            builder.setProgress(100,progress,false);
        }
        return builder.build();
    }
}
