package com.tweaks.leo.widget;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.AppCompatCheckBox;

import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import android.widget.Toast;

import com.tweaks.leo.LeoApp;
import com.tweaks.leo.R;
import com.tweaks.leo.utils.NetUtils;

import static android.view.View.GONE;

public class HelpDialog extends AlertDialog.Builder {
    private AlertDialog mDialog;
    private AppCompatCheckBox check;
    private  WebView webView;
    public HelpDialog(Context context,String title,String ss,String key) {
        super(context);
        initEulaDialog(context,title,ss,key);
    }
    private void initEulaDialog(final Context context , String title,String ss, final String key) {
        View welmsg = View.inflate(context,R.layout.dialog_webview, null);
        check = (AppCompatCheckBox) welmsg.findViewById(R.id.check_ok);
        setView(welmsg);
        setTitle(title);
        webView = (WebView) welmsg.findViewById(R.id.webview);
        webView.loadUrl(ss);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setAllowFileAccess(true);
        webView.getSettings().setDomStorageEnabled(true);
        webView.getSettings().setDatabaseEnabled(false);
        webView.getSettings().setDefaultTextEncodingName("UTF-8");
        webView.setWebChromeClient(new WebChromeClient());
        webView.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
        webView.getSettings().setSupportMultipleWindows(true);
        setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                String checkBoxResult = "NOT checked";
                if (check.isChecked())  checkBoxResult = "checked";
                SharedPreferences settings = context.getSharedPreferences(key, 0);
                SharedPreferences.Editor editor = settings.edit();
                editor.putString("skipMessage", checkBoxResult);
                editor.commit();
                return;
            }

        });

        SharedPreferences settings = context.getSharedPreferences(key, 0);
        String skipMessage = settings.getString("skipMessage", "NOT checked");
        mDialog = create();
        //mDialog.show();
        mDialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        mDialog.setCanceledOnTouchOutside(false);
        if (!skipMessage.equalsIgnoreCase("checked") ) mDialog.show();
        if (!skipMessage.equalsIgnoreCase("checked") )mDialog.setCancelable(false);
    }
}