package com.android.systemui.fragments;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.util.ArrayMap;
import android.view.View;

import java.io.FileDescriptor;
import java.io.PrintWriter;

public class FragmentService {
    /* access modifiers changed from: private|final */
    public final Context mContext;
    /* access modifiers changed from: private|final */
    public final Handler mHandler = new Handler();
    private final ArrayMap<View, FragmentHostState> mHosts = new ArrayMap();

    private class FragmentHostState {
        /* access modifiers changed from: private */
        public FragmentHostManager mFragmentHostManager;
        private final View mView;

        public FragmentHostState(View view) {
            this.mView = view;
            this.mFragmentHostManager = new FragmentHostManager(FragmentService.this.mContext, FragmentService.this, this.mView);
        }

        /* access modifiers changed from: private */
        public void handleSendConfigurationChange(Configuration configuration) {
            this.mFragmentHostManager.onConfigurationChanged(configuration);
        }

        public FragmentHostManager getFragmentHostManager() {
            return this.mFragmentHostManager;
        }

        public void sendConfigurationChange(Configuration configuration) {

        }
    }

    public FragmentService(Context context) {
        this.mContext = context;
    }

    public void destroyAll() {
        for (FragmentHostState access$000 : this.mHosts.values()) {
            access$000.mFragmentHostManager.destroy();
        }
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.println("Dumping fragments:");
        for (FragmentHostState access$000 : this.mHosts.values()) {
            access$000.mFragmentHostManager.getFragmentManager().dump("  ", fileDescriptor, printWriter, strArr);
        }
    }

    public FragmentHostManager getFragmentHostManager(View view) {
        View rootView = view.getRootView();
        FragmentHostState fragmentHostState = (FragmentHostState) this.mHosts.get(rootView);
        if (fragmentHostState == null) {
            fragmentHostState = new FragmentHostState(rootView);
            this.mHosts.put(rootView, fragmentHostState);
        }
        return fragmentHostState.getFragmentHostManager();
    }

    public void onConfigurationChanged(Configuration configuration) {
        for (FragmentHostState sendConfigurationChange : this.mHosts.values()) {
            sendConfigurationChange.sendConfigurationChange(configuration);
        }
    }
}
