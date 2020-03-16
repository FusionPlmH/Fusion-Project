/*
 * Copyright (C) 2006 The Android Open Source Project
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

package android.app;

import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;
import static com.os.leo.utils.LeoUserValues.China;
import static com.os.leo.utils.LeoUserValues.Transparency;
import static com.os.leo.utils.LeoUserValues.mIgnoreApps;
import static com.os.leo.utils.LeoUserValues.mWhitePrimary;
import static com.os.leo.utils.LeoUserValues.mYellowColor;
import static com.os.leo.utils.LeoUtils.LeoGradientDrawable;
import static com.os.leo.utils.LeoUtils.getLeoWallpaperAlpha;
import static com.os.leo.utils.LeoUtils.getLeoWallpaperColor;


import android.annotation.NonNull;
import android.annotation.Nullable;
import android.annotation.RequiresPermission;

import android.app.VoiceInteractor.Request;
import android.app.admin.DevicePolicyManager;
import android.app.assist.AssistContent;
import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.CursorLoader;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.media.session.MediaController;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.os.RemoteException;

import android.os.StrictMode;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.Settings;
import android.support.annotation.LayoutRes;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.TextKeyListener;
import android.transition.Scene;
import android.transition.TransitionManager;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.EventLog;
import android.util.Log;
import android.util.PrintWriterPrinter;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SuperNotCalledException;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.ContextThemeWrapper;
import android.view.DragAndDropPermissions;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.KeyboardShortcutInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewManager;
import android.view.ViewRootImpl;

import android.view.Window;
import android.view.Window.WindowControllerCallback;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import android.view.accessibility.AccessibilityEvent;
import android.view.autofill.AutofillManager;

import android.widget.AdapterView;
import android.widget.Toast;
import android.widget.Toolbar;

import com.android.internal.annotations.GuardedBy;
import com.android.internal.app.IVoiceInteractor;
import com.android.internal.app.ToolbarActionBar;
import com.android.internal.app.WindowDecorActionBar;
import com.android.internal.policy.DecorView;
import com.android.internal.policy.PhoneWindow;
import com.os.leo.utils.LeoBlur;
import com.os.leo.utils.LeoUserSettings;

import java.io.File;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


public class Activity1 extends ContextThemeWrapper

        //Window.OnWindowDismissedCallback, WindowControllerCallback,
     //   AutofillManager.AutofillClient
        {
            private Window mWindow;
    public void setContentView(@LayoutRes int layoutResID) {
        getWindow().setContentView(layoutResID);


        initWindowDecorActionBar();
    }
            private  boolean  CreateExcludedAppsSet(String excludedApps) {
                if (!TextUtils.isEmpty(excludedApps)) {
                    mExcludedApps = new HashSet(Arrays.asList(excludedApps.split("\\|")));
                }
                return mExcludedApps .contains(excludedApps);

            }
            public static Set<String> mExcludedApps = new HashSet();


            private boolean isHomeApplication(String packageName) {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.addCategory("android.intent.category.HOME");
                for (ResolveInfo resolveInfo : getPackageManager().queryIntentActivities(intent, 0)) {
                    if (packageName.equals(resolveInfo.activityInfo.packageName)) {
                        return true;
                    }
                }
                return false;
            }
            public ActionBar getActionBar() {
                initWindowDecorActionBar();
                return mActionBar;
            }

            public void setLeoAppsTitleBackground() {
                if(Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_bg_enable", 0)==1){
                    ColorDrawable backgroundcolor = new ColorDrawable(Color.TRANSPARENT);
                    getActionBar().setBackgroundDrawable(backgroundcolor);
                } else {

                }
            }

           public void setLeoWindowBackground() {
               View view;

               String mIgnoreApps="com.sec.android.app.launcher";
               if (!TextUtils.isEmpty(mIgnoreApps)) {
                   mExcludedApps = new HashSet(Arrays.asList(mIgnoreApps.split("\\|")));
               }
               int i;
               int i2 = ! mExcludedApps.contains(getPackageName()) ? 1 : 0;
               if (getPackageName().equals(mIgnoreApps)) {
                   i = 0;
               } else {
                   i = 1;
               }
               i &= i2;

               if ((i2 & i) != 0) {

               }
               if(!mExcludedApps.contains(getPackageName()) && Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_bg_enable", 0)==1){
                       int backgroundStyle=Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_bg_style", 0);
                       int colorstyle=(Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_bg_gradient_enable", 0));
                       if (backgroundStyle==0) {
                           view = getWindow().getDecorView();
                           if (colorstyle==0) {//基本颜色
                               ColorDrawable backgroundcolor = new ColorDrawable(Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_bg_color", 0));
                               view.setBackground(backgroundcolor);
                           }  else   if(colorstyle==1){
                               view.setBackground(LeoGradientDrawable(
                                       Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_bg_gradient_color_one", Color.BLACK),
                                       Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_bg_gradient_color_two", Color.BLACK),
                                       Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_bg_gradient_color_three",Color.BLACK),
                                       Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_bg_gradient_color_four", Color.BLACK),
                                       Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_bg_gradient_color_five",Color.BLACK),
                                       Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_bg_gradient_color_six", Color.BLACK),
                                       Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_bg_gradient_enable_six", Color.BLACK),
                                       Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_bg_gradient_style", Color.BLACK),
                                       false,
                                       0,
                                     0,
                                     0,
                                      0,
                                       Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_bg_corner_radius", 0)
                                       ,Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_bg_gradient_model", 0),
                                       Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_bg_gradient_radius", 360)
                               ));
                           }
                       }else   if (backgroundStyle==999) {
                           view = getWindow().getDecorView();
                           String str=Settings.System.getString(getContentResolver(), "leo_tweaks_activity_wallpaper");
                           if (str != null) {
                               File backgroundwallpaper = new File(Uri.parse(str).getPath());
                               if (backgroundwallpaper != null) {
                                   mLeoWallpaperDrawable= new BitmapDrawable(getResources(), BitmapFactory.decodeFile(backgroundwallpaper.getAbsolutePath()));
                                   Log.v(AUTHOR, CORYRIGHT+ China );
                               }
                               getLeoWallpaperColor(mLeoWallpaperDrawable,Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_wallpaper_color_enabled", 0), Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_wallpaper_color", 0));
                             getLeoWallpaperAlpha(mLeoWallpaperDrawable,Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_wallpaper_enabled_transparent", 0)==1,Settings.System.getInt(getContentResolver(), "leo_tweaks_activity_wallpaper_alpha", 255));
                               view.setBackground(mLeoWallpaperDrawable);
                           }

                       }
                   }

           }

            Drawable mLeoWallpaperDrawable;



            /*package*/ ActionBar mActionBar = null;
            private void initWindowDecorActionBar() {
                Window window = getWindow();

                // Initializing the window decor can change window feature flags.
                // Make sure that we have the correct set before performing the test below.
                window.getDecorView();

                if (isChild() || !window.hasFeature(Window.FEATURE_ACTION_BAR) || mActionBar != null) {
                    return;
                }

            //    mActionBar = new WindowDecorActionBar(this);

            }

            public Window getWindow() {
                return mWindow;
            }

            public final boolean isChild() {

                return false;
            }


        }
