package com.salt.utils;


import android.content.Context;

import com.salt.script.KeepShellPublic;

import java.io.File;

import static com.salt.config.SaltApp.getContext;
import static com.salt.utils.FileUtils.createSDCardImg;
import static com.salt.utils.SaltProper.SystemUrl.SystemABUrl;
import static com.salt.utils.utils.APP_FOLDER_NAME;
import static com.salt.utils.utils.FILES_SCRIPTS_FOLDER_PATH;
import static com.salt.utils.utils.SCRIPTS_FOLDER;

public class CopyAsset  {
    private Context mContext;
    private static CopyAsset instance;
    public static CopyAsset getInstance(Context context) {
        if (instance == null)
            instance = new CopyAsset(context);
        return instance;
    }


    public CopyAsset(Context context){
        mContext=context.getApplicationContext();
        copyAssetFolder();
    }
    public void copyAssetFolder() {
        FileUtils.getInstance(mContext).copyAssetsToSD(SCRIPTS_FOLDER ,APP_FOLDER_NAME+"/"+SCRIPTS_FOLDER );
        createSDCardImg();
    }


}
