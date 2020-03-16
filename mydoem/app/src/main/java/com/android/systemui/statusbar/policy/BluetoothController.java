package com.android.systemui.statusbar.policy;

import android.bluetooth.BluetoothDevice;
import android.view.KeyEvent;

import java.util.Collection;
import java.util.List;

public interface BluetoothController  {

    public interface Callback {
        void onBluetoothDevicesChanged();

        void onBluetoothScanStateChanged(boolean z);

        void onBluetoothStateChange(boolean z);
    }

    boolean canConfigBluetooth();



    int getBluetoothState();

    List<BluetoothDevice> getConnectedDevices();



    String getLastDeviceName();

    boolean isBluetoothConnected();

    boolean isBluetoothConnecting();

    boolean isBluetoothEnabled();

    boolean isBluetoothSupported();

    void scan(boolean z);

    void setBluetoothEnabled(boolean z, boolean z2);

    void updateListDevices();
}
