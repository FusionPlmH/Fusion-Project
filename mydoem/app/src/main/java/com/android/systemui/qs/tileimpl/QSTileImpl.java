package com.android.systemui.qs.tileimpl;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.ArraySet;
import android.util.Log;
import android.util.SparseArray;

import com.android.internal.logging.MetricsLogger;

import com.android.systemui.Dependency;

import com.android.systemui.plugins.qs.QSIconView;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.qs.QSTile.State;

import com.android.systemui.qs.QSHost;

import java.util.ArrayList;

public abstract class QSTileImpl<TState extends State> implements QSTile {
    protected static final boolean DEBUG = Log.isLoggable("Tile", 3);
    public static final int TYPE_UNLOCK_INDUCE_IN_SECURE = 1;
    public static final int TYPE_UNLOCK_NONE = 0;
    protected final String TAG = ("Tile." + getClass().getSimpleName());
    private boolean mAnnounceNextStateChange;
    private final ArrayList<Callback> mCallbacks = new ArrayList();
    protected final Context mContext;

    protected final H mHandler = new H(this, (Looper) Dependency.get(Dependency.BG_LOOPER), null);
    protected final QSHost mHost;
    private final ArraySet<Object> mListeners = new ArraySet();
    private final MetricsLogger mMetricsLogger = ((MetricsLogger) Dependency.get(MetricsLogger.class));
    private boolean mShowingDetail;
    protected TState mState = newTileState();
    protected String mTileSpec;
    private TState mTmpState = newTileState();
    protected final Handler mUiHandler = new Handler(Looper.getMainLooper());

    public static class ResourceIcon extends Icon {
        private static final SparseArray<Icon> ICONS = new SparseArray();
        protected final int mResId;

        private ResourceIcon(int i) {
            this.mResId = i;
        }

        /* synthetic */ ResourceIcon(int i, ResourceIcon resourceIcon) {
            this(i);
        }

        public static Icon get(int i) {
            Icon icon = (Icon) ICONS.get(i);
            if (icon != null) {
                return icon;
            }
            icon = new ResourceIcon(i);
            ICONS.put(i, icon);
            return icon;
        }

        public boolean equals(Object obj) {
            return (obj instanceof ResourceIcon) && ((ResourceIcon) obj).mResId == this.mResId;
        }

        public Drawable getDrawable(Context context) {
            return context.getDrawable(this.mResId);
        }

        public Drawable getInvisibleDrawable(Context context) {
            return context.getDrawable(this.mResId);
        }

        public String toString() {
            return String.format("ResourceIcon[resId=0x%08x]", new Object[]{Integer.valueOf(this.mResId)});
        }
    }

    protected class AnimationIcon extends ResourceIcon {
        private final int mAnimatedResId;

        public AnimationIcon(int i, int i2) {
            super(i2, null);
            this.mAnimatedResId = i;
        }

        public Drawable getDrawable(Context context) {
            return context.getDrawable(this.mAnimatedResId).getConstantState().newDrawable();
        }
    }

    public static class DrawableIcon extends Icon {
        protected final Drawable mDrawable;

        public DrawableIcon(Drawable drawable) {
            this.mDrawable = drawable;
        }

        public Drawable getDrawable(Context context) {
            return this.mDrawable;
        }
    }

    public static class DrawableIconWithRes extends DrawableIcon {
        private final int mId;

        public DrawableIconWithRes(Drawable drawable, int mId) {
            super(drawable);
            this.mId = mId;
        }

        public boolean equals(Object obj) {
            return (obj instanceof DrawableIconWithRes) && ((DrawableIconWithRes) obj).mId == this.mId;
        }
    }

    protected final class H extends Handler {
        private H(Looper looper) {
            super(looper);
        }

        /* synthetic */ H(QSTileImpl qSTileImpl, Looper looper, H h) {
            this(looper);
        }

        public void handleMessage(Message message) {
            boolean z = true;
            try {
                String str;
                QSTileImpl qSTileImpl;
                if (message.what == 1) {
                    str = "handleAddCallback";

                } else if (message.what == 12) {
                    str = "handleRemoveCallbacks";
                    QSTileImpl.this.handleRemoveCallbacks();
                } else if (message.what == 13) {

                } else if (message.what == 2) {
                    str = "handleClick";
                    if (QSTileImpl.this.mState.disabledByPolicy) {
                       // ((ActivityStarter) Dependency.get(ActivityStarter.class)).postStartActivityDismissingKeyguard(RestrictedLockUtils.getShowAdminSupportDetailsIntent(QSTileImpl.this.mContext, QSTileImpl.this.mEnforcedAdmin), 0);
                        return;
                    }
                    QSTileImpl.this.mAnnounceNextStateChange = true;
                    QSTileImpl.this.handleClick();
                } else if (message.what == 3) {
                    str = "handleSecondaryClick";
                    QSTileImpl.this.handleSecondaryClick();
                } else if (message.what == 4) {
                    str = "handleLongClick";
                    QSTileImpl.this.handleLongClick();
                } else if (message.what == 5) {
                    str = "handleRefreshState";
                    QSTileImpl.this.handleRefreshState(message.obj);
                } else if (message.what == 6) {
                    str = "handleShowDetail";
                    qSTileImpl = QSTileImpl.this;
                    if (message.arg1 == 0) {
                        z = false;
                    }
                    qSTileImpl.handleShowDetail(z);
                } else if (message.what == 7) {
                    str = "handleUserSwitch";
                    QSTileImpl.this.handleUserSwitch(message.arg1);
                } else if (message.what == 8) {
                    str = "handleToggleStateChanged";
                    qSTileImpl = QSTileImpl.this;
                    if (message.arg1 == 0) {
                        z = false;
                    }
                    qSTileImpl.handleToggleStateChanged(z);
                } else if (message.what == 9) {
                    str = "handleScanStateChanged";
                    qSTileImpl = QSTileImpl.this;
                    if (message.arg1 == 0) {
                        z = false;
                    }
                    qSTileImpl.handleScanStateChanged(z);
                } else if (message.what == 10) {
                    str = "handleDestroy";
                    QSTileImpl.this.handleDestroy();
                } else if (message.what == 11) {
                    str = "handleClearState";
                    QSTileImpl.this.handleClearState();
                } else if (message.what == 14) {
                    str = "setListening";
                    qSTileImpl = QSTileImpl.this;
                    if (message.arg1 == 0) {
                        z = false;
                    }
                    qSTileImpl.setListening(z);
                } else if (message.what == 15) {
                    str = "handleUpdateDetail";
                    QSTileImpl.this.handleUpdateDetail();
                } else if (message.what == 16) {
                    str = "handleScrollToDetail";
                    QSTileImpl.this.handleScrollToDetail(message.arg1, message.arg2);
                } else if (message.what == 17) {
                    str = "make current state to string";
                    QSTileImpl.this.sendStateString();
                } else if (message.what == 18) {
                    str = "make string to current state";
                    QSTileImpl.this.makeStringToCurrentState((String) message.obj);
                } else {
                    throw new IllegalArgumentException("Unknown msg: " + message.what);
                }
            } catch (Throwable th) {
                String str2 = "Error in " + null;
                Log.w(QSTileImpl.this.TAG, str2, th);
                QSTileImpl.this.mHost.warn(str2, th);
            }
        }
    }

    protected QSTileImpl(QSHost qSHost) {
        this.mHost = qSHost;
        this.mContext = qSHost.getContext();
    }

    public static int getColorForState(Context context, int i) {


        return i;
    }

    private void handleAddCallback(Callback callback) {
        this.mCallbacks.add(callback);
        callback.onStateChanged(this.mState);
    }

    private void handleRemoveCallback(Callback callback) {
        this.mCallbacks.remove(callback);
    }

    private void handleRemoveCallbacks() {
        this.mCallbacks.clear();
    }

    private void handleScanStateChanged(boolean z) {
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            ((Callback) this.mCallbacks.get(i)).onScanStateChanged(z);
        }
    }

    private void handleScrollToDetail(int i, int i2) {
        for (int i3 = 0; i3 < this.mCallbacks.size(); i3++) {
            ((Callback) this.mCallbacks.get(i3)).onScrollToDetail(i, i2);
        }
    }

    private void handleShowDetail(boolean z) {
        this.mShowingDetail = z;
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            ((Callback) this.mCallbacks.get(i)).onShowDetail(z);
        }
    }

    private void handleStateChanged() {

    }

    private void handleToggleStateChanged(boolean z) {
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            ((Callback) this.mCallbacks.get(i)).onToggleStateChanged(z);
        }
    }

    private void handleUpdateDetail() {
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            ((Callback) this.mCallbacks.get(i)).onUpdateDetail();
        }
    }

    public void addCallback(Callback callback) {
        this.mHandler.obtainMessage(1, callback).sendToTarget();
    }

    protected void checkIfRestrictionEnforcedByAdminOnly(State state, String str) {

    }

    public void clearState() {
        this.mHandler.sendEmptyMessage(11);
    }

    public void click() {

        this.mHandler.sendEmptyMessage(2);
    }

    protected String composeChangeAnnouncement() {
        return composeChangeAnnouncement(this.mState);
    }

    protected String composeChangeAnnouncement(State state) {

        return null;
    }



    public QSIconView createTileView(Context context) {

        return null;
    }

    public void destroy() {
        this.mHandler.sendEmptyMessage(10);

    }

    public void fireScanStateChanged(boolean z) {
        this.mHandler.obtainMessage(9, z ? 1 : 0, 0).sendToTarget();
    }

    public void fireScrollToDetail(int i, int i2) {
        this.mHandler.obtainMessage(16, i, i2).sendToTarget();
    }

    public void fireToggleStateChanged(boolean z) {
        this.mHandler.obtainMessage(8, z ? 1 : 0, 0).sendToTarget();
    }


    public QSHost getHost() {
        return this.mHost;
    }

    public String getLoggingKey() {
        return this.mState.isCustomTile ? this.mState.tileClassName : this.mTileSpec;
    }

    public int getLoggingValue(boolean z) {
        int i = 1;
        int i2 = 0;
        if (z) {
            if (this.mState.state != 2) {
                i2 = 1;
            }
            return i2;
        }
        if (this.mTmpState.state != 2) {
            i = 0;
        }
        return i;
    }

    public abstract Intent getLongClickIntent();

    public abstract int getMetricsCategory();

    public String getSavableName() {
        return this.mTileSpec;
    }

    public TState getState() {
        return this.mState;
    }

    public abstract CharSequence getTileLabel();

    public String getTileSpec() {
        return this.mTileSpec;
    }

    public boolean getToggleState() {
        return ((BooleanState) this.mState).value;
    }

    public int getUnlockTypeInSecure() {
        return 0;
    }

    protected void handleClearState() {
        this.mTmpState = newTileState();
        this.mState = newTileState();
    }

    protected abstract void handleClick();

    protected void handleDestroy() {
        setListening(false);
        this.mCallbacks.clear();
    }

    protected void handleLongClick() {
        Intent longClickIntent = getLongClickIntent();
        if (longClickIntent != null) {

        }
    }

    protected void handleRefreshState(Object obj) {
        handleUpdateState(this.mTmpState, obj);
        if (!((this.mTmpState.state == 2 ? 1 : null) == (this.mState.state == 2 ? 1 : null) || this.mTileSpec == null || this.mHost == null)) {
            this.mHost.onTileStateChanged(this.mTileSpec, getLoggingValue(false));
        }
        if (this.mTmpState.copyTo(this.mState)) {
            handleStateChanged();
        }
    }

    protected void handleSecondaryClick() {

    }

    protected abstract void handleUpdateState(TState tState, Object obj);

    protected void handleUserSwitch(int i) {
        handleRefreshState(null);
    }

    public boolean isAvailable() {

        return false;
    }

    protected boolean isShowingDetail() {
        return this.mShowingDetail;
    }

    public void longClick() {

    }

    protected String makeCurrentStateToString() {
        return getState().state == 2 ? "1" : "0";
    }

    protected void makeStringToCurrentState(String str) {
    }

    public abstract TState newTileState();

    public void onPluginConnected() {
        if (!getState().isCustomTile) {

        }
    }

    public void onProfileCreated() {
        if (!getState().isCustomTile) {
            this.mHandler.obtainMessage(17, 0, 0).sendToTarget();
        }
    }

    public void onProfileSelected() {

    }


    public void refreshState() {
        refreshState(null);
    }

    protected final void refreshState(Object obj) {
        this.mHandler.obtainMessage(5, obj).sendToTarget();
    }

    public void removeCallback(Callback callback) {
        this.mHandler.obtainMessage(13, callback).sendToTarget();
    }

    public void removeCallbacks() {
        this.mHandler.sendEmptyMessage(12);
    }

    public void secondaryClick() {

    }

    protected void sendStateString() {

    }

    public void setDetailListening(boolean z) {
    }

    public void setDialogWindowType(AlertDialog alertDialog) {

    }

    public void setListening(Object obj, boolean z) {
        if (z) {
            if (this.mListeners.add(obj) && this.mListeners.size() == 1) {
                if (DEBUG) {
                    Log.d(this.TAG, "setListening true");
                }
                this.mHandler.obtainMessage(14, 1, 0).sendToTarget();
            }
        } else if (this.mListeners.remove(obj) && this.mListeners.size() == 0) {
            if (DEBUG) {
                Log.d(this.TAG, "setListening false");
            }
            this.mHandler.obtainMessage(14, 0, 0).sendToTarget();
        }
    }

    public abstract void handleSetListening(boolean listening);

    protected abstract void setListening(boolean z);

    public void setTileSpec(String str) {
        this.mTileSpec = str;
       // ((QSProfileServiceManager) Dependency.get(QSProfileServiceManager.class)).addSavable(this);
    }

    protected boolean shouldAnnouncementBeDelayed() {
        return this.mState.isCustomTile && this.mState.state == 0;
    }

    public void showDetail(boolean z) {
        this.mHandler.obtainMessage(6, z ? 1 : 0, 0).sendToTarget();
    }

    protected void showItPolicyToast(int i) {
        Context context = this.mContext;
        Context context2 = this.mContext;
        Object[] objArr = new Object[1];
        objArr[0] = i == 0 ? getTileLabel() : this.mContext.getString(i);


    }

    public void updateDetail() {
        this.mHandler.obtainMessage(15, 0, 0).sendToTarget();
    }

    public void userSwitch(int i) {
        this.mHandler.obtainMessage(7, i, 0).sendToTarget();
    }
}
