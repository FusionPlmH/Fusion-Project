/*
 * Copyright (C) 2015 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.tweaks.salt.utils;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.provider.Settings;
import android.support.v4.app.NotificationCompat;
import com.tweaks.salt.R;
import static android.content.Context.NOTIFICATION_SERVICE;


public  class NotificationUtils {



    public static void  getRebootInfo(Context context){
        Intent showIntent = new Intent(Constants.REBOOT_DEVICE);
        showIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        PendingIntent contentIntent = PendingIntent.getBroadcast(context, 0,
                showIntent,
                PendingIntent.FLAG_UPDATE_CURRENT);
        NotificationCompat.Action action = new NotificationCompat.Action.Builder(R.drawable.nav_power_meun,"重启",contentIntent).build();
        // 创建notification，使用设置优先级的方式创建悬浮通知，则会自动消失
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context)
                .setSmallIcon(R.drawable.ic_stat_name)
                .setContentTitle("Leo ROM 建议你:")
                .setContentText(context.getResources().getString(R.string.dpi_toast))
                .setLargeIcon(BitmapFactory.decodeResource( context.getResources(), R.drawable.nav_power_meun))
                .setPriority(Notification.PRIORITY_MAX) // 设置优先级为Max，则为悬浮通知
                 .setDefaults( Notification.DEFAULT_SOUND)
                .setVibrate(null)
                .addAction(action ) // 设置回复action
                .setAutoCancel(true)

                .setDefaults(Notification.DEFAULT_ALL) ;// 想要悬浮出来， 这里必须要设置

        NotificationManager manager=
                (NotificationManager)context.getSystemService(NOTIFICATION_SERVICE);
        manager.notify(1, builder.build());
    }

    public static void showWallpaperNotification(Context context) {
        Notification notification = new NotificationCompat.Builder(context)
                /**设置通知左边的大图标**/
                .setLargeIcon(BitmapFactory.decodeResource(context.getResources(), R.mipmap.ic_launcher))
                /**设置通知右边的小图标**/
                .setSmallIcon(R.drawable.ic_stat_name)
                /**通知首次出现在通知栏，带上升动画效果的**/
                .setContentTitle(context.getResources().getString(R.string.activity_componetname))
                /**设置通知的内容**/
                .setContentText(context.getResources().getString(R.string.wallpaper_select))
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


}
