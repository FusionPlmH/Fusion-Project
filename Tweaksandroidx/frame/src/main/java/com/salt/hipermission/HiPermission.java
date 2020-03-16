package com.salt.hipermission;

import android.Manifest;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;


import androidx.core.content.ContextCompat;

import com.salt.frame.R;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import static android.Manifest.permission.READ_EXTERNAL_STORAGE;
import static android.Manifest.permission.READ_PHONE_STATE;
import static android.Manifest.permission.WRITE_EXTERNAL_STORAGE;


/**
 * Created by Administrator on 2017/5/10 0010.
 */

public class HiPermission {
    private final Context mContext;
//    private static HiPermission mInstance;

    private String mTitle;
    private String mMsg;
    private int mStyleResId = -1;
    private PermissionCallback mCallback;
    private List<PermissionItem> mCheckPermissions;


    private String[] mNormalPermissionNames;
    private String[] mNormalPermissions = {
            Manifest.permission.WRITE_EXTERNAL_STORAGE,

            Manifest.permission.READ_PHONE_STATE, Manifest.permission.REQUEST_INSTALL_PACKAGES};
    private int[] mNormalPermissionIconRes = {
            R.drawable.permission_ic_storage, R.drawable.permission_ic_phone};
    private int mFilterColor = 0;
    private int mAnimStyleId = -1;

    public static HiPermission create(Context context) {
        return new HiPermission(context);
    }

    public HiPermission(Context context) {
        mContext = context;
        mNormalPermissionNames = mContext.getResources().getStringArray(R.array.permissionNames);
    }

    public HiPermission title(String title) {
        mTitle = title;
        return this;
    }

    public HiPermission msg(String msg) {
        mMsg = msg;
        return this;
    }

    public HiPermission permissions(List<PermissionItem> permissionItems) {
        mCheckPermissions = permissionItems;
        return this;
    }

    public HiPermission filterColor(int color) {
        mFilterColor = color;
        return this;
    }

    public HiPermission animStyle(int styleId) {
        mAnimStyleId = styleId;
        return this;
    }

    public HiPermission style(int styleResIdsId) {
        mStyleResId = styleResIdsId;
        return this;
    }

    private List<PermissionItem> getNormalPermissions() {
        List<PermissionItem> permissionItems = new ArrayList<>();
        for (int i = 0; i < mNormalPermissionNames.length; i++) {
            permissionItems.add(new PermissionItem(mNormalPermissions[i], mNormalPermissionNames[i], mNormalPermissionIconRes[i]));
        }
        return permissionItems;
    }

    public static boolean checkPermission(Context context, String permission) {
        int checkPermission = ContextCompat.checkSelfPermission(context, permission);
        if (checkPermission == PackageManager.PERMISSION_GRANTED) {
            return true;
        }
        return false;
    }

    /**
     * 检查多个权限
     *
     * @param callback
     */
    public void checkMutiPermission(PermissionCallback callback) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.P) {
            if (callback != null)
                callback.onFinish();
            return;
        }

        if (mCheckPermissions == null) {
            mCheckPermissions = new ArrayList<>();
            mCheckPermissions.addAll(getNormalPermissions());
        }

        //检查权限，过滤已允许的权限
        Iterator<PermissionItem> iterator = mCheckPermissions.listIterator();
        while (iterator.hasNext()) {
            if (checkPermission(mContext, iterator.next().Permission))
                iterator.remove();
        }
        mCallback = callback;
        if (mCheckPermissions.size() > 0) {
            startActivity();
        } else {
            if (callback != null)
                callback.onFinish();
        }


    }

    /**
     * 检查单个权限
     *
     * @param permission
     * @param callback
     */
    public void checkSinglePermission(String permission, PermissionCallback callback) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.M || checkPermission(mContext, permission)) {
            if (callback != null)
                callback.onGuarantee(permission, 0);
            return;
        }
        mCallback = callback;
        mPermissionType = PermissionActivity.PERMISSION_TYPE_SINGLE;
        mCheckPermissions = new ArrayList<>();
        mCheckPermissions.add(new PermissionItem(permission));
        startActivity();
    }
    private void startActivity() {
        PermissionActivity.setCallBack(mCallback);
        Intent intent = new Intent(mContext, PermissionActivity.class);
        intent.putExtra(ConstantValue.DATA_TITLE, mTitle);
        intent.putExtra(ConstantValue.DATA_PERMISSION_TYPE, mPermissionType);
        intent.putExtra(ConstantValue.DATA_MSG, mMsg);
        intent.putExtra(ConstantValue.DATA_FILTER_COLOR, mFilterColor);
        intent.putExtra(ConstantValue.DATA_STYLE_ID, mStyleResId);
        intent.putExtra(ConstantValue.DATA_ANIM_STYLE, mAnimStyleId);
        intent.putExtra(ConstantValue.DATA_PERMISSIONS, (Serializable) mCheckPermissions);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        mContext.startActivity(intent);
    }
    private int mPermissionType;
}
