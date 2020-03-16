
package com.android.systemui;



import android.content.Context;

import java.util.Random;

import static com.leo.utils.Constants.getLeoAndroidResource;
import static com.leo.utils.Constants.getLeoResource;
import static com.leo.utils.Constants.mLeoRom;



public class UI{

    public  static int getLeoRandomColor(Context c) {
        int[] customizedColors = c.getResources().getIntArray(getLeoResource("array/leo_colors"));
        int customizedColor = customizedColors[new Random().nextInt(customizedColors.length)];
        return customizedColor;
    }



}

