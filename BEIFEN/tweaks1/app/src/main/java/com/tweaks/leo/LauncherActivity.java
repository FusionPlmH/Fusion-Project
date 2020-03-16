/*
 * Copyright (C) 2017 AICP
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


package com.tweaks.leo;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.View;
import android.widget.Toast;

import com.tweaks.leo.activity.SubActivity;
import com.tweaks.leo.utils.AndroidUtils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static com.tweaks.leo.LeoApp.mContext;
import static com.tweaks.leo.utils.root.Helpers.CODE;
import static com.tweaks.leo.widget.DialogUtil.Promptdonate;


public class LauncherActivity extends MainActivity {



        protected void onCreate(Bundle savedInstanceState) {
                super.onCreate(savedInstanceState);

                if (AndroidUtils.getCustomOTA().equals(CODE)) {
                        Toast.makeText(mContext, "你当前使用的是<<捐赠版>>",
                                Toast.LENGTH_SHORT).show();
                }else {
                        Toast.makeText(mContext, "你当前使用的是<<普通版>>,如需升级捐赠版,请捐赠并且联系开发者",
                                Toast.LENGTH_SHORT).show();
                }
        }

        }
