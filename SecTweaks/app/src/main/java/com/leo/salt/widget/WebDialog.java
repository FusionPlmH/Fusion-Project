package com.leo.salt.widget;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;

import android.support.v7.widget.AppCompatCheckBox;

import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;

import com.leo.salt.MainActivity;
import com.leo.salt.R;

import static com.leo.salt.widget.DialogUtil.followUS;
import static com.leo.salt.widget.DialogUtil.language;


public class WebDialog extends AlertDialog.Builder {
    private AlertDialog mDialog;
    private AppCompatCheckBox check;
    private  WebView webView;
    public WebDialog(Context context,String title,String ss,String key,boolean yes) {
        super(context);
        initWebDialog(context,title,ss,key,yes);
    }
    private void initWebDialog(final Context context , String title,String ss, final String key ,final boolean yes) {
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
                if(yes) {
                    followUS(context);
                }

                return;
            }

        });

        SharedPreferences settings = context.getSharedPreferences(key, 0);
        String skipMessage = settings.getString("skipMessage", "NOT checked");
        mDialog = create();
        //mDialog.show();
       // mDialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        mDialog.setCanceledOnTouchOutside(false);
        if (!skipMessage.equalsIgnoreCase("checked") ) mDialog.show();
        if (!skipMessage.equalsIgnoreCase("checked") )mDialog.setCancelable(false);
    }
}