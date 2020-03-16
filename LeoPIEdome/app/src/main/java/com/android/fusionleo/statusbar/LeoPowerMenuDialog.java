package com.android.fusionleo.statusbar;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.widget.SimpleAdapter;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.android.fusionleo.global.LeoGlobalUtils.*;
import static com.android.fusionleo.global.LeoGlobalValues.getAPPNAME;
import static com.android.fusionleo.global.LeoGlobalValues.hitomiA;
import static com.android.fusionleo.global.LeoGlobalValues.hitomiB;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;


public class LeoPowerMenuDialog extends AlertDialog.Builder {
    private AlertDialog mDialog;
    public LeoPowerMenuDialog(Context context,boolean s,String STR) {
        super(context);
       initLeoPowerMenu(context,s,STR);
    }

    private void initLeoPowerMenu(final Context context ,boolean style,String str) {

        setTitle(str)//设置对话框的标题
                .setItems(getLeoResource("array/leo_power_name"), (dialog1, which) -> {
                    switch (which) {
                        case 0:// 关机
                            LeoHitomiActiong(context,0);
                            break;
                        case 1://重启
                            if(style){
                                RestartMenu(context); //四键重启
                            } else{
                                LeoHitomiActiong(context,1); //重新启动
                            }
                            break;
                        case 2://快速重启
                            LeoHitomiActiong(context,2);
                            break;
                        case 3://卡刷
                            LeoHitomiActiong(context,4);
                            break;
                        case 4://线刷
                            LeoHitomiActiong(context,3);
                            break;
                        case 5://户外模式
                            LeoGlobalActiong(context,127,null);
                            break;
                        case 6://手电
                            LeoGlobalActiong(context,130,null);
                            break;
                        case 7://录制屏幕
                            LeoGlobalActiong(context,114,null);
                            break;
                        case 8://截图
                            LeoGlobalActiong(context,112,null);
                            break;
                        case 9://声音模式
                            LeoGlobalActiong(context,119,null);
                            break;
                        case 10://移动数据
                            LeoGlobalActiong(context,105,null);
                            break;
                        case 11://悬浮球
                            LeoGlobalActiong(context,131,null);
                            break;
                        case 12://屏幕助手
                            LeoGlobalActiong(context,132,null);
                            break;
                        case 13://飞机
                            LeoGlobalActiong(context,122,null);
                            break;
                    }
                    dialog1.dismiss();
                })
        .setNegativeButton(android.R.string.cancel, (dialog, which) -> dialog.dismiss());

        mDialog = create();
        mDialog.setCanceledOnTouchOutside(true);
        mDialog.getWindow().setType(2003);
        mDialog.show();
    }

    public  void  RestartMenu(Context context) {
                setItems(getLeoResource("array/leo_reboot_name"), (dialog1, which) -> {
                    switch (which) {
                        case 0:
                            LeoHitomiActiong(context,1);
                            break;
                        case 1:
                            LeoHitomiActiong(context,2);
                            break;
                        case 2:
                            LeoHitomiActiong(context,4);
                            break;
                        case 3:
                            LeoHitomiActiong(context,3);
                            break;
                    }
                    dialog1.dismiss();
                })
                        .setNegativeButton(android.R.string.cancel, (dialog, which) -> dialog.dismiss());
        mDialog = create();
        mDialog.setCanceledOnTouchOutside(true);
        mDialog.getWindow().setType(2003);
        mDialog.show();
    }


}