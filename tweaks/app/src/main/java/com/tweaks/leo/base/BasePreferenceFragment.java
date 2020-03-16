package com.tweaks.leo.base;



import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceGroup;
import android.preference.PreferenceScreen;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.Toolbar;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;

import com.tweaks.leo.LeoApp;
import com.tweaks.leo.R;
import com.tweaks.leo.theme.Utils;
import com.tweaks.leo.utils.AndroidUtils;
import com.tweaks.leo.utils.root.Helpers;

import static com.tweaks.leo.widget.DialogUtil.ResetSuccess;


public abstract class BasePreferenceFragment extends PreferenceFragment {
    public Activity mContext;
    protected   Intent intentFragment;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mContext = (Activity) getActivity();

    }

}
