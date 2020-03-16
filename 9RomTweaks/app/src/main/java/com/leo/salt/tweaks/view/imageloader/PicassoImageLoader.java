package com.leo.salt.tweaks.view.imageloader;

import android.content.Context;
import android.widget.ImageView;

import com.leo.salt.tweaks.view.BannerLayout;
import com.squareup.picasso.Picasso;


/**
 * Created by Administrator on 2016/12/21 0021.
 */

public class PicassoImageLoader implements BannerLayout.ImageLoader {
    @Override
    public void displayImage(Context context, String path, ImageView imageView) {
        Picasso.with(context).load(path).into(imageView);
    }
}
