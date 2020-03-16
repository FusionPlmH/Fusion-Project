package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import com.android.internal.statusbar.StatusBarIcon;
import com.android.systemui.DemoMode;
import com.android.systemui.Dependency;

import com.android.systemui.statusbar.policy.DarkIconDispatcher;
import com.android.systemui.statusbar.policy.DarkIconDispatcher.DarkReceiver;

import java.util.List;

public interface StatusBarIconController {

    public static class IconManager implements DemoMode {
        protected final Context mContext;

        protected boolean mDemoable = true;
        protected final ViewGroup mGroup;
        protected int mIconSize;
        private boolean mIsInDemoMode;
        protected boolean mShouldLog = false;
        private GroupType mType;

        public enum GroupType {
            INDICATOR,
            QUICKHEADER
        }

        public IconManager(ViewGroup viewGroup) {
            this.mGroup = viewGroup;
            this.mContext = viewGroup.getContext();
            this.mIconSize = this.mContext.getResources().getDimensionPixelSize(17105770);

        }
        public void setTint(int i) {

        }

        private void setHeightAndCenter(ImageView imageView, int i) {
            LayoutParams layoutParams = imageView.getLayoutParams();
            layoutParams.height = i;
            if (layoutParams instanceof LinearLayout.LayoutParams) {
                ((LinearLayout.LayoutParams) layoutParams).gravity = 16;
            }
            imageView.setLayoutParams(layoutParams);
        }





        protected void destroy() {
            this.mGroup.removeAllViews();
        }

        @Override
        public void disable(int state1, int state2, boolean animate) {

        }

        public void dispatchDemoCommand(String str, Bundle bundle) {
            if (this.mDemoable) {
                if (str.equals("exit")) {

                    this.mIsInDemoMode = false;
                } else {

                }
            }
        }

        protected void exitDemoMode() {

        }

        protected void forceUpdateState() {
            Log.d("IconManager", "forceUpdateState");
            for (int i = 0; i < this.mGroup.getChildCount(); i++) {

            }
        }

        public GroupType getType() {
            return this.mType;
        }

        public boolean isDemoable() {
            return this.mDemoable;
        }

        protected LinearLayout.LayoutParams onCreateLayoutParams() {
            return new LinearLayout.LayoutParams(-2, this.mIconSize);
        }

        protected void onDensityOrFontScaleChanged() {
            this.mIconSize = this.mContext.getResources().getDimensionPixelSize(17105770);
            for (int i = 0; i < this.mGroup.getChildCount(); i++) {
                View childAt = this.mGroup.getChildAt(i);
                childAt.setLayoutParams(new LinearLayout.LayoutParams(-2, this.mIconSize));
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("IconManager - child = ");
                stringBuilder.append(childAt);


            }
        }



        /* renamed from: onIconExternal */
        protected void lambda$setExternalIcon$1(int i, int i2) {
            ImageView imageView = (ImageView) this.mGroup.getChildAt(i);
            imageView.setScaleType(ScaleType.FIT_CENTER);
            imageView.setAdjustViewBounds(true);
            setHeightAndCenter(imageView, i2);
        }



        public void onSetIcon(int i, StatusBarIcon statusBarIcon) {

        }





        public void setShouldLog(boolean z) {
            this.mShouldLog = z;
            if (z) {
                this.mGroup.setTag("ShouldLog");
            } else {
                this.mGroup.setTag("");
            }
        }

        public void setType(GroupType groupType) {
            this.mType = groupType;
        }

        public boolean shouldLog() {
            return this.mShouldLog;
        }
    }

    public static class DarkIconManager extends IconManager {
        private final DarkIconDispatcher mDarkIconDispatcher = ((DarkIconDispatcher) Dependency.get(DarkIconDispatcher.class));
        private int mIconHPadding = this.mContext.getResources().getDimensionPixelSize(2131167116);

        public DarkIconManager(LinearLayout linearLayout) {
            super(linearLayout);
        }



        protected void destroy() {
            for (int i = 0; i < this.mGroup.getChildCount(); i++) {
                this.mDarkIconDispatcher.removeDarkReceiver((DarkReceiver) this.mGroup.getChildAt(i));
            }
            this.mGroup.removeAllViews();
        }

        protected void exitDemoMode() {

            super.exitDemoMode();
        }

        protected LinearLayout.LayoutParams onCreateLayoutParams() {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, this.mIconSize);
            layoutParams.setMargins(this.mIconHPadding, 0, this.mIconHPadding, 0);
            return layoutParams;
        }


        protected void onRemoveIcon(int i) {
            this.mDarkIconDispatcher.removeDarkReceiver((DarkReceiver) this.mGroup.getChildAt(i));

        }

        public void onSetIcon(int i, StatusBarIcon statusBarIcon) {

        }
    }

    public static class TintedIconManager extends IconManager {
        private int mColor;

        public TintedIconManager(ViewGroup viewGroup) {
            super(viewGroup);
        }


    }

    static ArraySet<String> getIconBlacklist(String str) {
        ArraySet<String> arraySet = new ArraySet();
        if (str == null) {
            str = "rotate,headset";
        }
        for (CharSequence charSequence : str.split(",")) {
            if (!TextUtils.isEmpty(charSequence)) {
                arraySet.add((String) charSequence);
            }
        }
        return arraySet;
    }

    void addIconGroup(IconManager iconManager);

    void removeAllIconsForSlot(String str);

    void removeIconGroup(IconManager iconManager);



    void setExternalIcon(String str);

    void setIcon(String str, int i, CharSequence charSequence);

    void setIcon(String str, StatusBarIcon statusBarIcon);

    void setIconVisibility(String str, boolean z);


}
