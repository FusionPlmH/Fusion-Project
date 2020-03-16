package com.fusionleo.salt.widget;
import android.content.Context;
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

import com.fusionleo.salt.LeoApp;
import com.fusionleo.salt.R;


import static android.view.View.GONE;

public class SourceDialog extends AlertDialog.Builder {
    private AlertDialog mDialog;
    private AppCompatCheckBox check;
    WebView webView;
    public SourceDialog(Context context,String ss) {
        super(context);

        initSourceDialog(context,ss);
    }

    private void initSourceDialog(final Context context ,String ss) {
        View welmsg = View.inflate(context,R.layout.dialog_webview, null);
        check = (AppCompatCheckBox) welmsg.findViewById(R.id.check_ok);

      check.setVisibility(GONE);
        setView(welmsg);
       setTitle(R.string.list_grid_code);
         webView = (WebView) welmsg.findViewById(R.id.webview);

        webView.loadUrl(ss);
        //设置WebView属性，能够执行Javascript脚本
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setAllowFileAccess(true);
        webView.getSettings().setDomStorageEnabled(true);
        // 开启database storage API功能
        webView.getSettings().setDatabaseEnabled(false);
        webView.getSettings().setDefaultTextEncodingName("UTF-8");
        webView.setWebChromeClient(new WebChromeClient());

     webView.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
        // 支持多窗口
        webView.getSettings().setSupportMultipleWindows(true);
        // 开启 Application Caches 功能
      //  webView.getSettings().setAppCacheEnabled(true);
          setPositiveButton(android.R.string.ok,null);


        mDialog = create();
      mDialog.show();
        mDialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
      //  mDialog.setCanceledOnTouchOutside(false);


    }
}