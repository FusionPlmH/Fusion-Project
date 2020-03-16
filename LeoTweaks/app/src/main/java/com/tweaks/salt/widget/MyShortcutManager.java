package com.tweaks.salt.widget;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.support.annotation.RequiresApi;
import android.support.v4.content.pm.ShortcutInfoCompat;
import android.support.v4.content.pm.ShortcutManagerCompat;

import com.tweaks.salt.R;
import com.tweaks.salt.activity.CleanActivity;
import com.tweaks.salt.activity.LockScreenActivity;


/**
 * Created by Tian on 17/8/7.
 */

public final class MyShortcutManager {

    /**
     * android O 添加桌面快捷方式
     *
     * @param context
     */
    @RequiresApi(api = Build.VERSION_CODES.O)
    public static void addShortCut(Context context) {
        ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService(Context.SHORTCUT_SERVICE);

        if (shortcutManager.isRequestPinShortcutSupported()) {
            Intent shortcutInfoIntent = new Intent(context, CleanActivity.class);
            shortcutInfoIntent.setAction(Intent.ACTION_VIEW); //action必须设置，不然报错

            ShortcutInfo info = new ShortcutInfo.Builder(context, "The only id")
                    .setIcon(Icon.createWithResource(context, R.drawable.ic_clear))
                    .setShortLabel("一键加速")
                    .setIntent(shortcutInfoIntent)
                    .build();

            //当添加快捷方式的确认弹框弹出来时，将被回调
            PendingIntent shortcutCallbackIntent = PendingIntent.getBroadcast(context, 0, new Intent(context, MyReceiver.class), PendingIntent.FLAG_UPDATE_CURRENT);

            shortcutManager.requestPinShortcut(info, shortcutCallbackIntent.getIntentSender());
        }

    }
    @RequiresApi(api = Build.VERSION_CODES.O)
    public static void addLockScreenShortCut(Context context) {
        ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService(Context.SHORTCUT_SERVICE);

        if (shortcutManager.isRequestPinShortcutSupported()) {
            Intent shortcutInfoIntent = new Intent(context,LockScreenActivity.class);
            shortcutInfoIntent.setAction(Intent.ACTION_VIEW); //action必须设置，不然报错

            ShortcutInfo info = new ShortcutInfo.Builder(context, "The only id")
                    .setIcon(Icon.createWithResource(context, R.drawable.ic_lock_screen))
                    .setShortLabel("一键锁屏")
                    .setIntent(shortcutInfoIntent)
                    .build();

            //当添加快捷方式的确认弹框弹出来时，将被回调
            PendingIntent shortcutCallbackIntent = PendingIntent.getBroadcast(context, 0, new Intent(context, Receiver.class), PendingIntent.FLAG_UPDATE_CURRENT);

            shortcutManager.requestPinShortcut(info, shortcutCallbackIntent.getIntentSender());
        }

    }

    /**
     * Android 7.1及以下 添加桌面
     *
     * @param context
     */
    public static final String ACTION_ADD_SHORTCUT = "com.android.launcher.action.INSTALL_SHORTCUT";

    public static void addShortcutBelowAndroidN(Context context) {
        Intent addShortcutIntent = new Intent(ACTION_ADD_SHORTCUT);

        // 不允许重复创建，不是根据快捷方式的名字判断重复的
        addShortcutIntent.putExtra("duplicate", false);

        addShortcutIntent.putExtra(Intent.EXTRA_SHORTCUT_NAME, "一键加速");

        //图标
        addShortcutIntent.putExtra(Intent.EXTRA_SHORTCUT_ICON_RESOURCE, Intent.ShortcutIconResource.fromContext(context, R.drawable.ic_clear));

        // 设置关联程序
        Intent launcherIntent = new Intent();
        launcherIntent.setClass(context, CleanActivity.class);
        addShortcutIntent.putExtra(Intent.EXTRA_SHORTCUT_INTENT, launcherIntent);

        // 发送广播
        context.sendBroadcast(addShortcutIntent);
    }

//    @RequiresApi(api = Build.VERSION_CODES.O)
//    public static void createShortcutResultIntent(Context context) {
//        Intent shortcutInfoIntent = new Intent(context, ShortcutActivity.class);
//        shortcutInfoIntent.setAction(Intent.ACTION_VIEW); //action必须设置，不然报错
//
//        ShortcutInfo info = new ShortcutInfo.Builder(context, "The only id")
//                .setIcon(Icon.createWithResource(context, R.mipmap.ic_shortcut))
//                .setShortLabel("Short Label")
//                .setIntent(shortcutInfoIntent)
//                .build();
//
//        //当添加快捷方式的确认弹框弹出来时，将被回调
////        PendingIntent shortcutCallbackIntent = PendingIntent.getBroadcast(context, 0, new Intent(context, MyReceiver.class), PendingIntent.FLAG_UPDATE_CURRENT);
//
//        ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService(Context.SHORTCUT_SERVICE);
//        shortcutManager.createShortcutResultIntent(info);
//    }
}
