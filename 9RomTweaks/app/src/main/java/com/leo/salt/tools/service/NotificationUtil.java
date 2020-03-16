package com.leo.salt.tools.service;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.support.v4.app.NotificationCompat;
import android.util.SparseArray;

import com.leo.salt.down.utils.Utils;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.updates.ServiceTaskActivity;


public class NotificationUtil {

    private static SparseArray<NotificationCompat.Builder> notificationMap = new SparseArray<>();

    private static NotificationManager notificationManager;


    private static NotificationManager initNotificationManager(Context context) {
        if (notificationManager == null) {
            notificationManager = (NotificationManager) context.getSystemService(Context.NOTIFICATION_SERVICE);
        }

        return notificationManager;
    }

    /**
     * 创建进度通知栏
     *
     * @param context
     * @param title
     * @param content
     * @param icon
     */
    public static void createProgressNotification(Context context, String title, String content, int icon, int notifyId) {
        initNotificationManager(context);

        NotificationCompat.Builder builder = initBaseBuilder(context, title, content, icon);
        builder.setOngoing(true);
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.HONEYCOMB) {
            Intent intent = new Intent();
            PendingIntent contentIntent = PendingIntent.getActivity(context, 0, intent, 0);
            builder.setContentIntent(contentIntent);
        }


        notificationManager.notify(notifyId, builder.build());

        notificationMap.put(notifyId, builder);
    }


    /**
     * 初始化Builder
     *
     * @param context
     * @param title
     * @param content
     * @param icon
     * @return
     */
    private static NotificationCompat.Builder initBaseBuilder(Context context, String title, String content, int icon) {
        Intent intent = new Intent(context, ServiceTaskActivity.class);
        PendingIntent pendingIntent = PendingIntent.getActivity(context, 0, intent, 0);
        return new NotificationCompat.Builder(context)
                .setContentTitle(title)
                .setContentText(content)
                .setSmallIcon(icon)
                .setLargeIcon(BitmapFactory.decodeResource(context.getResources(), icon))
                .setDefaults(Notification.DEFAULT_ALL)
                .setOnlyAlertOnce(true)
                .setAutoCancel(true)
                .setContentIntent(pendingIntent)
                .setWhen(System.currentTimeMillis());


    }

    /**
     * 取消进度通知栏
     *
     * @param notifyId
     */
    public static void cancelNotification(int notifyId) {
        notificationManager.cancel(notifyId);
        notificationMap.remove(notifyId);
    }

    /**
     * 更新通知栏进度
     *
     * @param notifyId
     * @param progress
     */
    public static void updateNotification(int notifyId,long currentSize, long totalSize ,float progress) {
        NotificationCompat.Builder builder = notificationMap.get(notifyId);
        builder.setProgress(100, (int) progress, false);
        builder.setContentText("［"+Utils.formatSize(totalSize)+"/"+Utils.formatSize(currentSize)+"］"+progress + "%");
        notificationManager.notify(notifyId, builder.build());
    }

    public static void showWallpaperNotification(Context context,String name,String str) {
        Notification notification = new NotificationCompat.Builder(context)
                /**设置通知左边的大图标**/
                .setLargeIcon(BitmapFactory.decodeResource(context.getResources(), R.drawable.ic_ota))
                .setSmallIcon(R.drawable.ic_ota)
                /**通知首次出现在通知栏，带上升动画效果的**/
                .setContentTitle(name)
                /**设置通知的内容**/
                .setContentText(str)
                /**通知产生的时间，会在通知信息里显示**/
                .setWhen(System.currentTimeMillis())
                /**设置该通知优先级**/
                .setPriority(Notification.PRIORITY_MAX)
                /**设置这个标志当用户单击面板就可以让通知将自动取消**/
                .setAutoCancel(true)
                /**设置他为一个正在进行的通知。他们通常是用来表示一个后台任务,用户积极参与(如播放音乐)或以某种方式正在等待,因此占用设备(如一个文件下载,同步操作,主动网络连接)**/
                .setOngoing(false)
                /**向通知添加声音、闪灯和振动效果的最简单、最一致的方式是使用当前的用户默认设置，使用defaults属性，可以组合：**/
                .setDefaults(Notification.DEFAULT_SOUND)

                .build();
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(context.NOTIFICATION_SERVICE);
        /**发起通知**/
        notificationManager.notify(0, notification);
    }

    public static void showOTANotification(Context context,String name,String str,String str2) {
        Intent intent = new Intent(context, ServiceTaskActivity.class);
        PendingIntent pendingIntent = PendingIntent.getActivity(context, 0, intent, 0);


        Notification notification  = new NotificationCompat.Builder(context)
                    /**设置通知左边的大图标**/
                    .setLargeIcon(BitmapFactory.decodeResource(context.getResources(), R.drawable.ic_ota))
                    .setTicker(str)
                    .setSmallIcon(R.drawable.ic_ota)
                    /**通知首次出现在通知栏，带上升动画效果的**/
                    .setContentTitle(name)
                    /**设置通知的内容**/
                    .setContentText(str)
                   .setSubText(str2)
                    /**通知产生的时间，会在通知信息里显示**/
                    .setWhen(System.currentTimeMillis())
                    /**设置该通知优先级**/
                    .setPriority(Notification.PRIORITY_MAX)
                    /**设置这个标志当用户单击面板就可以让通知将自动取消**/
                    .setAutoCancel(true)
                    /**设置他为一个正在进行的通知。他们通常是用来表示一个后台任务,用户积极参与(如播放音乐)或以某种方式正在等待,因此占用设备(如一个文件下载,同步操作,主动网络连接)**/
                    .setOngoing(false)
                    /**向通知添加声音、闪灯和振动效果的最简单、最一致的方式是使用当前的用户默认设置，使用defaults属性，可以组合：**/
                    .setDefaults(Notification.DEFAULT_SOUND)
                    .setContentIntent(pendingIntent)

                    .build();

        NotificationManager notificationManager = (NotificationManager) context.getSystemService(context.NOTIFICATION_SERVICE);
        /**发起通知**/
        notificationManager.notify(0, notification);
    }
}
