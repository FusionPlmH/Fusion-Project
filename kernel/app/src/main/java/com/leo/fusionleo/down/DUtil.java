package com.leo.fusionleo.down;

import android.content.Context;

import com.leo.fusionleo.down.download.DBuilder;

import java.io.File;


public class DUtil {

    /**
     * 下载
     *
     * @param context
     * @return
     */
    public static DBuilder init(Context context) {
        return new DBuilder(context);
    }


}
