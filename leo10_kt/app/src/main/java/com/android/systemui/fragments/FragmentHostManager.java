package com.android.systemui.fragments;

import android.app.Fragment;
import android.app.FragmentController;
import android.app.FragmentHostCallback;
import android.app.FragmentManager;
import android.app.FragmentManager.FragmentLifecycleCallbacks;
import android.app.FragmentManagerNonConfig;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;

import android.util.ArrayMap;
import android.view.LayoutInflater;
import android.view.View;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

import com.android.systemui.Dependency;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

public class FragmentHostManager {

    public final ExtensionFragmentManager mPlugins = new ExtensionFragmentManager();


    public interface FragmentListener {
        void onFragmentViewCreated(String str, Fragment fragment);


    }

    class ExtensionFragmentManager {
        private final ArrayMap<String, Context> mExtensionLookup = new ArrayMap();

        ExtensionFragmentManager() {
        }

        private void reloadFragments() {
            FragmentHostManager.this.createFragmentHost(FragmentHostManager.this.destroyFragmentHost());
        }

        /* access modifiers changed from: 0000 */
        public Fragment instantiate(Context context, String str, Bundle bundle) {
            Context context2 = (Context) this.mExtensionLookup.get(str);
            if (context2 == null) {
                return Fragment.instantiate(context, str, bundle);
            }
            Fragment instantiate = Fragment.instantiate(context2, str, bundle);

            return instantiate;
        }

        public void setCurrentExtension(int i, @NonNull String str, String str2, @NonNull String str3, Context context) {
            if (str2 != null) {
                this.mExtensionLookup.remove(str2);
            }
            this.mExtensionLookup.put(str3, context);
            FragmentHostManager.this.getFragmentManager().beginTransaction().replace(i, instantiate(context, str3, null), str).commit();
            reloadFragments();
        }
    }

    @RequiresApi(api = Build.VERSION_CODES.M)
    class HostCallbacks extends FragmentHostCallback<FragmentHostManager> {


        public HostCallbacks(Context context, Handler handler, int windowAnimations) {
            super(context, handler, windowAnimations);
        }

        public Fragment instantiate(Context context, String str, Bundle bundle) {
            return FragmentHostManager.this.mPlugins.instantiate(context, str, bundle);
        }

        public void onAttachFragment(Fragment fragment) {
        }

        public void onDump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            FragmentHostManager.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        public <T extends View> T onFindViewById(int i) {
            return FragmentHostManager.this.findViewById(i);
        }

        public FragmentHostManager onGetHost() {
            return FragmentHostManager.this;
        }

        public LayoutInflater onGetLayoutInflater() {

            return null;
        }

        public int onGetWindowAnimations() {
            return 0;
        }

        public boolean onHasView() {
            return true;
        }

        public boolean onHasWindowAnimations() {
            return false;
        }

        public boolean onShouldSaveFragmentState(Fragment fragment) {
            return true;
        }

        public boolean onUseFragmentManagerInflaterFactory() {
            return true;
        }
    }

    private static class PluginState {
    }

    FragmentHostManager(Context context, FragmentService fragmentService, View view) {

    }


    public void createFragmentHost(Parcelable parcelable) {

    }

    /* access modifiers changed from: private */
    public Parcelable destroyFragmentHost() {

        return null;
    }

    /* access modifiers changed from: private */
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    /* access modifiers changed from: private */
    public <T extends View> T findViewById(int i) {

        return null;
    }

    public static FragmentHostManager get(View view) {
        try {
            return ((FragmentService) Dependency.get(FragmentService.class)).getFragmentHostManager(view);
        } catch (ClassCastException e) {
            throw e;
        }
    }

    /* access modifiers changed from: private */
    public void onFragmentViewCreated(Fragment fragment) {

    }

    /* access modifiers changed from: private */
    public void onFragmentViewDestroyed(Fragment fragment) {

    }

    public FragmentHostManager addTagListener(String str, FragmentListener fragmentListener) {

        return this;
    }

    /* access modifiers changed from: 0000 */
    public void destroy() {

    }

    /* access modifiers changed from: 0000 */
    public ExtensionFragmentManager getExtensionManager() {
        return this.mPlugins;
    }

    public FragmentManager getFragmentManager() {

        return null;
    }

    /* access modifiers changed from: protected */
    public void onConfigurationChanged(Configuration configuration) {

    }

    public void reloadFragments() {
        createFragmentHost(destroyFragmentHost());
    }

    public void removeTagListener(String str, FragmentListener fragmentListener) {

    }
}
