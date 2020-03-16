
/*
 * Grouxho - espdroids.com - 2018

 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.

 */

package org.leo.tweaks.salt.prefssupport;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;

import org.leo.tweaks.salt.utils.Common;
import org.leo.tweaks.salt.utils.LeoSaltPrefsUtils;

import java.net.URISyntaxException;

public class LeoSaltAccessInfo {

    private String mUri;

    private String mLabel = null;
    private String mLeoSaltDrawableName = null;
    private String mLeoSaltValue = null;
    private String mLeoSaltIconPath = null;
    private int mLeoSaltTypeOfAccess = -1;

    Drawable mDrawableIcon;


    public LeoSaltAccessInfo(String uri, Context c){
        ini_access_info(uri, c);

    }


    public void ini_access_info(String uri, Context context){
        mUri=uri;

        Intent intent;
        try {
            intent = Intent.parseUri(uri, 0);
        }catch (URISyntaxException e) {
            return;
        }

        mLabel = LeoSaltPrefsUtils.getActivityLabelFromIntent(context, intent);
        mLeoSaltIconPath = LeoSaltPrefsUtils.getFileNameFromLeoSaltIntent(intent);
        mLeoSaltDrawableName = intent.getStringExtra(Common.EXTRA_URI_DRAWABLE_NAME);
        mLeoSaltValue = intent.getStringExtra(Common.EXTRA_URI_VALUE);
        mLeoSaltTypeOfAccess = intent.getIntExtra(Common.EXTRA_URI_TYPE,-1);
        mDrawableIcon = LeoSaltPrefsUtils.getDrawableFromLeoSaltIntent(context,intent);

      }


    public void update_uri(String uri){mUri=uri;}

    public int get_access_type(){return mLeoSaltTypeOfAccess;}

    public Drawable get_icon_drawable(){return mDrawableIcon;}

    public String get_uri(){return mUri;}

    public String get_label(){return (mLabel == null) ? "?" : mLabel;}

    public String get_icon_path(){return mLeoSaltIconPath;}

    public String get_drawable_name(){return mLeoSaltDrawableName;}

}
