package com.salt.config.picker;
import java.net.URISyntaxException;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.Intent.ShortcutIconResource;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;

import android.util.Log;


import androidx.fragment.app.Fragment;

import com.salt.base.SaltPreferenceFragmentCompat;


import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.config.SaltApp.getContext;


@SuppressLint("WrongConstant")
public abstract class ShortcutPickerHelper {
    public static final int REQUEST_CREATE_SHORTCUT = 102;
    public static final int REQUEST_PICK_SHORTCUT = 100;
    private Fragment mParent;



    public ShortcutPickerHelper(Fragment fragment) {
        this.mParent = fragment;
    }

    @SuppressLint({"LongLogTag"})
    private void completeSetCustomShortcut(Intent intent) {
        Intent intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.shortcut.INTENT");
        String str = "android.intent.extra.shortcut.NAME";
        intent2.putExtra(str, intent.getStringExtra(str));
        str = intent2.toUri(0).replaceAll("com.android.contacts.action.QUICK_CONTACT", "android.intent.action.VIEW");
        Bitmap bitmap = null;
        Parcelable parcelableExtra = intent.getParcelableExtra("android.intent.extra.shortcut.ICON");
        if (parcelableExtra != null && (parcelableExtra instanceof Bitmap)) {
            bitmap = (Bitmap) parcelableExtra;
        }
        if (bitmap == null) {
            parcelableExtra = intent.getParcelableExtra("android.intent.extra.shortcut.ICON_RESOURCE");
            if (parcelableExtra != null && (parcelableExtra instanceof ShortcutIconResource)) {
                try {
                    ShortcutIconResource shortcutIconResource = (ShortcutIconResource) parcelableExtra;
                    Resources resourcesForApplication = this.mParent.getActivity().getPackageManager().getResourcesForApplication(shortcutIconResource.packageName);
                    bitmap = BitmapFactory.decodeResource(resourcesForApplication, resourcesForApplication.getIdentifier(shortcutIconResource.resourceName, null, null));
                } catch (Exception e) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Could not load shortcut icon: ");
                    stringBuilder.append(parcelableExtra);
                    Log.w("LeoSettings.ShortcutPicker", stringBuilder.toString());
                }
            }
        }
        onListViewItemClickActivity(str, getFriendlyShortcutName(intent2), bitmap);
    }

    private String getFriendlyActivityName(Intent intent, boolean z) {
        PackageManager packageManager = this.mParent.getActivity().getPackageManager();
        ActivityInfo resolveActivityInfo = intent.resolveActivityInfo(packageManager, 1);
        String str = null;
        if (resolveActivityInfo != null) {
            str = resolveActivityInfo.loadLabel(packageManager).toString();
            if (str == null && !z) {
                str = resolveActivityInfo.name;
            }
        }
        return (str != null || z) ? str : intent.toUri(0);
    }

    private String getFriendlyShortcutName(Intent intent) {
        String friendlyActivityName = getFriendlyActivityName(intent, true);
        String stringExtra = intent.getStringExtra("android.intent.extra.shortcut.NAME");
        if (friendlyActivityName == null || stringExtra == null) {
            return stringExtra != null ? stringExtra : intent.toUri(0);
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(friendlyActivityName);
        stringBuilder.append(": ");
        stringBuilder.append(stringExtra);
        return stringBuilder.toString();
    }

    public String getFriendlyNameForUri(String str) {
        if (str == null) {
            return null;
        }
        try {
            Intent parseUri = Intent.parseUri(str, 0);
            return "android.intent.action.MAIN".equals(parseUri.getAction()) ? getFriendlyActivityName(parseUri, false) : getFriendlyShortcutName(parseUri);
        } catch (URISyntaxException e) {
            return str;
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 != -1) {
            return;
        }
        if (i == 100) {
            processShortcut(intent, 101, REQUEST_CREATE_SHORTCUT);
        } else if (i == REQUEST_CREATE_SHORTCUT) {
            completeSetCustomShortcut(intent);
        }
    }

    public abstract void onListViewItemClickActivity(String str, String str2, Bitmap bitmap);

    public void pickShortcut() {
        Bundle bundle = new Bundle();
        Intent intent = new Intent("android.intent.action.PICK_ACTIVITY");
        intent.putExtra("android.intent.extra.INTENT", new Intent("android.intent.action.CREATE_SHORTCUT"));
        intent.putExtra("android.intent.extra.TITLE", getStringIdentifier(getContext(), "picker_activities"));
        intent.putExtras(bundle);
        this.mParent.startActivityForResult(intent, 100);
    }

    public void processShortcut(Intent intent, int i, int i2) {
        if ("".equals(intent.getStringExtra("android.intent.extra.shortcut.NAME"))) {
            Intent intent2 = new Intent("android.intent.action.MAIN", null);
            intent2.addCategory("android.intent.category.LAUNCHER");
            Intent intent3 = new Intent("android.intent.action.PICK_ACTIVITY");
            intent3.putExtra("android.intent.extra.INTENT", intent2);
            this.mParent.startActivityForResult(intent3, i);
            return;
        }
        this.mParent.startActivityForResult(intent, i2);
    }

}