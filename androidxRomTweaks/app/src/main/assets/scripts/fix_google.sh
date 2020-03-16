#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /system_root
mount -o rw,remount /system
mount -o rw,remount /cache
mount -o rw,remount /data

pm grant com.google.android.gms android.permission.BODY_SENSORS
pm grant com.google.android.gms android.permission.READ_EXTERNAL_STORAGE
pm grant com.google.android.gms android.permission.WRITE_EXTERNAL_STORAGE
pm grant com.google.android.gms android.permission.READ_CALENDAR
pm grant com.google.android.gms android.permission.CAMERA
pm grant com.google.android.gms android.permission.READ_CONTACTS
pm grant com.google.android.gms android.permission.WRITE_CONTACTS
pm grant com.google.android.gms android.permission.GET_ACCOUNTS
pm grant com.google.android.gms android.permission.ACCESS_FINE_LOCATION
pm grant com.google.android.gms android.permission.ACCESS_COARSE_LOCATION
pm grant com.google.android.gms android.permission.RECORD_AUDIO
pm grant com.google.android.gms android.permission.READ_PHONE_STATE
pm grant com.google.android.gms android.permission.CALL_PHONE
pm grant com.google.android.gms android.permission.READ_CALL_LOG
pm grant com.google.android.gms android.permission.PROCESS_OUTGOING_CALLS
pm grant com.google.android.gms android.permission.READ_SMS
pm grant com.google.android.gms android.permission.SEND_SMS
pm grant com.google.android.gms android.permission.RECEIVE_SMS

pm grant com.android.vending android.permission.BODY_SENSORS
pm grant com.android.vending android.permission.READ_EXTERNAL_STORAGE
pm grant com.android.vending android.permission.WRITE_EXTERNAL_STORAGE

pm grant com.android.vending android.permission.READ_CONTACTS
pm grant com.android.vending android.permission.WRITE_CONTACTS
pm grant com.android.vending android.permission.GET_ACCOUNTS
pm grant com.android.vending android.permission.ACCESS_FINE_LOCATION
pm grant com.android.vending android.permission.ACCESS_COARSE_LOCATION
pm grant com.android.vending android.permission.RECORD_AUDIO
pm grant com.android.vending android.permission.READ_PHONE_STATE
pm grant com.android.vending android.permission.CALL_PHONE
pm grant com.android.vending android.permission.READ_SMS
pm grant com.android.vending android.permission.SEND_SMS
pm grant com.android.vending android.permission.RECEIVE_SMS
