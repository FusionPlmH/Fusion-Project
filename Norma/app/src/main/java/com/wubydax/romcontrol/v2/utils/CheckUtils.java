package com.wubydax.romcontrol.v2.utils;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.wubydax.romcontrol.v2.MyApp;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.lang.ref.WeakReference;

import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class CheckUtils {

    private WeakReference<Activity> reference;

    public CheckUtils(Activity activity) {
        reference = new WeakReference<>(activity);
    }

    public void check() {
        String imei = getImei();
        if (TextUtils.isEmpty(imei)) {
            alert("获取IMEI失败,请联系QQ414485561");
            return;
        }
        Log.e("IMEI", imei);

        String url = "http://imei.lioil.cc/imei/add?imei=" + imei;
        Request request = new Request.Builder()
                .url(url)
                .get()
                .build();
        OkHttpClient client = new OkHttpClient();
        client.newCall(request).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, IOException e) {
                alert("网络连接失败,请联系QQ414485561");
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                String json = response.body().string();
                if (json == null) {
                    alert("网络连接失败,请联系QQ414485561");
                } else if (!isVip(json)) {
                    alert("请联系QQ414485561开通VIP");
                }
            }
        });

    }
    private final String UNKNOWN = "unknown";
    private String getProperty(String str) {
        String str3 =UNKNOWN;
        try {
            Class cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", new Class[]{String.class, String.class}).invoke(cls, new Object[]{str, UNKNOWN});
        } catch (Exception e) {
            e.printStackTrace();
            return str3;
        } catch (Throwable th) {
            return str3;
        }
    }

    private String getImei() {
        return getProperty("ril.serialnumber");
    }
    private String getImei2() {
        TelephonyManager tm = (TelephonyManager) reference.get().getSystemService(Context.TELEPHONY_SERVICE);
        String imei;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            imei = Settings.System.getString(reference.get().getContentResolver(), Settings.Secure.ANDROID_ID);
        } else {
            imei = tm.getDeviceId();
        }
        return imei;
    }

    private boolean isVip(String json) {
        try {
            return new JSONObject(json).getJSONObject("data").optBoolean("vip");
        } catch (JSONException e) {
            return false;
        }
    }

    private void alert(final String msg) {
        final Activity activity = reference.get();
        if (activity == null) {
            return;
        }
        activity.runOnUiThread(() ->
                new AlertDialog.Builder(activity)
                        .setTitle("提示")
                        .setMessage(msg)
                        .setCancelable(false)
                        .setPositiveButton("确定", (dialogInterface, i) -> activity.finish()).show()
        );

    }

    private void toast(String msg) {
        Toast.makeText(MyApp.getContext(), msg, Toast.LENGTH_SHORT).show();
    }
}
