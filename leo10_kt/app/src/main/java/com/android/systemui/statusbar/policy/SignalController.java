package com.android.systemui.statusbar.policy;

import android.content.Context;
import android.text.format.DateFormat;
import android.util.Log;

import java.io.PrintWriter;
import java.util.BitSet;




public abstract class SignalController<T extends SignalController.State, I extends SignalController.IconGroup> {
    protected static final boolean CHATTY = false;
    protected static final boolean DEBUG = false;
  //  private final CallbackHandler mCallbackHandler;
    protected final Context mContext;
    protected final T mCurrentState = cleanState();
    private final State[] mHistory = new State[64];
    private int mHistoryIndex;
    protected final T mLastState = cleanState();
    protected final NetworkControllerImpl mNetworkController;
    protected String mTag;
    protected final int mTransportType;

    public abstract void notifyListeners(NetworkController.SignalCallback signalCallback);

    static class IconGroup {
        final int[] mContentDesc;
        final int mDiscContentDesc;
        final String mName;
        final int mQsDiscState;
        final int[][] mQsIcons;
        final int mQsNullState;
        final int mSbDiscState;
        final int[][] mSbIcons;
        final int mSbNullState;

        public IconGroup(String str, int[][] iArr, int[][] iArr2, int[] iArr3, int i, int i2, int i3, int i4, int i5) {
            this.mName = str;
            this.mSbIcons = iArr;
            this.mQsIcons = iArr2;
            this.mContentDesc = iArr3;
            this.mSbNullState = i;
            this.mQsNullState = i2;
            this.mSbDiscState = i3;
            this.mQsDiscState = i4;
            this.mDiscContentDesc = i5;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("IconGroup(");
            stringBuilder.append(this.mName);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }
    }

    static class State {
        boolean activityIn;
        boolean activityOut;
        boolean connected;
        boolean enabled;
        IconGroup iconGroup;
        int inetCondition;
        int level;
        int rssi;
        long time;

        State() {
        }

        public void copyFrom(State state) {
            this.connected = state.connected;
            this.enabled = state.enabled;
            this.level = state.level;
            this.iconGroup = state.iconGroup;
            this.inetCondition = state.inetCondition;
            this.activityIn = state.activityIn;
            this.activityOut = state.activityOut;
            this.rssi = state.rssi;
            this.time = state.time;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (!obj.getClass().equals(getClass())) {
                return false;
            }
            State state = (State) obj;
            if (state.connected == this.connected && state.enabled == this.enabled && state.level == this.level && state.inetCondition == this.inetCondition && state.iconGroup == this.iconGroup && state.activityIn == this.activityIn && state.activityOut == this.activityOut && state.rssi == this.rssi) {
                z = true;
            }
            return z;
        }

        public String toString() {
            StringBuilder stringBuilder;
            if (this.time != 0) {
                stringBuilder = new StringBuilder();
                toString(stringBuilder);
                return stringBuilder.toString();
            }
            stringBuilder = new StringBuilder();
            stringBuilder.append("Empty ");
            stringBuilder.append(getClass().getSimpleName());
            return stringBuilder.toString();
        }

        /* access modifiers changed from: protected */
        public void toString(StringBuilder stringBuilder) {
            stringBuilder.append("connected=");
            stringBuilder.append(this.connected);
            stringBuilder.append(',');
            stringBuilder.append("enabled=");
            stringBuilder.append(this.enabled);
            stringBuilder.append(',');
            stringBuilder.append("level=");
            stringBuilder.append(this.level);
            stringBuilder.append(',');
            stringBuilder.append("inetCondition=");
            stringBuilder.append(this.inetCondition);
            stringBuilder.append(',');
            stringBuilder.append("iconGroup=");
            stringBuilder.append(this.iconGroup);
            stringBuilder.append(',');
            stringBuilder.append("activityIn=");
            stringBuilder.append(this.activityIn);
            stringBuilder.append(',');
            stringBuilder.append("activityOut=");
            stringBuilder.append(this.activityOut);
            stringBuilder.append(',');
            stringBuilder.append("rssi=");
            stringBuilder.append(this.rssi);
            stringBuilder.append(',');
            stringBuilder.append("lastModified=");
            stringBuilder.append(DateFormat.format("MM-dd HH:mm:ss", this.time));
        }
    }

    public SignalController(String str, Context context, int i, NetworkControllerImpl networkControllerImpl) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("NetworkController.");
        stringBuilder.append(str);
        this.mTag = stringBuilder.toString();
        this.mNetworkController = networkControllerImpl;
        this.mTransportType = i;
        this.mContext = context;

        for (int i2 = 0; i2 < 64; i2++) {
            this.mHistory[i2] = cleanState();
        }
    }

    public abstract T cleanState();

    public void dump(PrintWriter printWriter) {
        int i;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("  - ");
        stringBuilder.append(this.mTag);
        stringBuilder.append(" -----");
        printWriter.println(stringBuilder.toString());
        stringBuilder = new StringBuilder();
        stringBuilder.append("  Current State: ");
        stringBuilder.append(this.mCurrentState);
        printWriter.println(stringBuilder.toString());
        int i2 = 0;
        for (i = 0; i < 64; i++) {
            if (this.mHistory[i].time != 0) {
                i2++;
            }
        }
        i = this.mHistoryIndex + 64;
        while (true) {
            i--;
            if (i >= (this.mHistoryIndex + 64) - i2) {
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("  Previous State(");
                stringBuilder2.append((this.mHistoryIndex + 64) - i);
                stringBuilder2.append("): ");
                stringBuilder2.append(this.mHistory[i & 63]);
                printWriter.println(stringBuilder2.toString());
            } else {
                return;
            }
        }
    }

    public int getContentDescription() {
        return this.mCurrentState.connected ? getIcons().mContentDesc[this.mCurrentState.level] : getIcons().mDiscContentDesc;
    }

    public int getCurrentIconId() {
        return this.mCurrentState.connected ? getIcons().mSbIcons[this.mCurrentState.inetCondition][this.mCurrentState.level] : this.mCurrentState.enabled ? getIcons().mSbDiscState : getIcons().mSbNullState;
    }

    /* access modifiers changed from: protected */
    public IconGroup getIcons() {
        return this.mCurrentState.iconGroup;
    }

    public int getQsCurrentIconId() {
        return this.mCurrentState.connected ? getIcons().mQsIcons[this.mCurrentState.inetCondition][this.mCurrentState.level] : this.mCurrentState.enabled ? getIcons().mQsDiscState : getIcons().mQsNullState;
    }

    public NetworkController.SignalCallback getSignalCallback() {
        ;
        return null;
    }

    public T getState() {
        return this.mCurrentState;
    }

    /* access modifiers changed from: protected */
    public String getStringIfExists(int i) {
        return i != 0 ? this.mContext.getString(i) : "";
    }

    public boolean isDirty() {
        if (this.mLastState.equals(this.mCurrentState)) {
            return false;
        }
        if (DEBUG) {
            String str = this.mTag;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Change in state from: ");
            stringBuilder.append(this.mLastState);
            stringBuilder.append("\n\tto: ");
            stringBuilder.append(this.mCurrentState);
            Log.d(str, stringBuilder.toString());
        }
        return true;
    }

    public void notifyListeners() {
        notifyListeners();
    }

   // public abstract void notifyListeners(NetworkController.SignalCallback signalCallback);

    public void notifyListenersIfNecessary() {
        if (isDirty()) {
            saveLastState();
            notifyListeners();
        }
    }

    /* access modifiers changed from: protected */
    public void recordLastState() {
        State[] stateArr = this.mHistory;
        int i = this.mHistoryIndex;
        this.mHistoryIndex = i + 1;
        stateArr[i & 63].copyFrom(this.mLastState);
    }

    public void resetLastState() {
        this.mCurrentState.copyFrom(this.mLastState);
    }

    public void saveLastState() {
        recordLastState();
        this.mCurrentState.time = System.currentTimeMillis();
        this.mLastState.copyFrom(this.mCurrentState);
    }

    public void updateConnectivity(BitSet bitSet, BitSet bitSet2) {
      //  this.mCurrentState.inetCondition = bitSet2.get(this.mTransportType);
        notifyListenersIfNecessary();
    }
}
