package com.tweaks.leo.activity;


import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.tweaks.leo.R;
import com.tweaks.leo.base.BaseActivity;
import com.tweaks.leo.theme.Utils;
import com.tweaks.leo.utils.NetUtils;
import com.tweaks.leo.utils.root.Verify;

import java.io.InputStream;

import static com.tweaks.leo.utils.NetUtils.hasNetWork;


public class WebViewActivity extends BaseActivity {
    private WebView webView;
    private ProgressBar mProgressBar;

    private String webViewUrl, webViewTitle;

    private static final String TAG = "WebView";

    @Override
    protected int initLayout() {
        return R.layout.activity_webview;

    }
    private void checkNetworkInf0(){

        if (hasNetWork(getApplicationContext()) == 0) {
            AlertDialog dialog = new AlertDialog.Builder(mContext)
                    .setTitle("\uD83D\uDE13\uD83D\uDE13\uD83D\uDE13\uD83D\uDE13")
                    .setMessage("当前未联网哦!")//设置对话框的内容
                    //设置对话框的按钮
                    .setPositiveButton("我知道了", new DialogInterface.OnClickListener() {

                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            // TODO Auto-generated method stub
                            onBackPressed();
                            dialog.dismiss();
                        }
                    })
                    .create();
            dialog.show();
            dialog.setCanceledOnTouchOutside(false);
            dialog.setCancelable(false);
            dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);

        }

    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
       // Verify.get(this);
        getToolbarViews();
        mContext = this;
        final TextView webViewBar = (TextView) findViewById(R.id.webview_bar);
        webViewBar.setText(webViewTitle);
        checkNetworkInf0();
        Utils.StatusBarColor(this);
        Bundle bundle = getIntent().getExtras();
        if (bundle != null && !bundle.isEmpty()) {
            webViewTitle = bundle.getString("title");
            webView = (WebView) findViewById(R.id.webView);
            new Handler().postDelayed(new Runnable() {
                public void run() {
              webView.setVisibility(View.VISIBLE);
                    webView.requestFocus(); }
            }, 1000);
            mProgressBar = (ProgressBar) findViewById(R.id.progress_bar);
         //   Intent intent = getIntent();
            webViewUrl = bundle.getString("url");
//加载某个指定网址
           webView.loadUrl(webViewUrl);
//禁止跳转到第三方浏览器

            webView.setWebViewClient(new WebViewClient());
            //设置WebView属性，能够执行Javascript脚本
            webView.getSettings().setJavaScriptEnabled(true);
            webView.getSettings().setAllowFileAccess(true);
            // 开启DOM storage API 功能
            webView.getSettings().setDomStorageEnabled(true);
            // 开启database storage API功能
            webView.getSettings().setDatabaseEnabled(true);
            webView.getSettings().setDefaultTextEncodingName("UTF-8");
            // 设置出现缩放工具
            webView.getSettings().setSupportZoom(true);
            webView.getSettings().setBuiltInZoomControls(true);
            webView.getSettings().setDisplayZoomControls(false);

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1) {
                webView.getSettings().setMediaPlaybackRequiresUserGesture(false);
            }
            webView.getSettings().setUseWideViewPort(true);
            if (NetUtils.isNetworkAvailable(this)) {
                webView.getSettings().setCacheMode(WebSettings.LOAD_DEFAULT);
            } else {
                webView.getSettings().setCacheMode(
                        WebSettings.LOAD_CACHE_ELSE_NETWORK);
            }
            webView.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
            // 支持多窗口
            webView.getSettings().setSupportMultipleWindows(true);
            // 开启 Application Caches 功能
            webView.getSettings().setAppCacheEnabled(true);
            webView.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
            webView.getSettings().setLoadWithOverviewMode(true);
            webView.getSettings().setJavaScriptEnabled(true);

            webView.setDownloadListener(new MyWebViewDownLoadListener());
            webView.setWebChromeClient(new WebChromeClient(){
                @Override
                public void onReceivedTitle(WebView view, String title) {
                    super.onReceivedTitle(view, title);
                    webViewBar.setText("" +title);
                }
                @Override
                public void onProgressChanged(WebView view, int newProgress) {
                    if(newProgress==100){
                        mProgressBar.setVisibility(View.GONE);
                    }else {
                        mProgressBar.setVisibility(View.VISIBLE);
                        mProgressBar.setProgress(newProgress);
                    }
                    super.onProgressChanged(view, newProgress);
                }
            });

        } else {
            Log.w(TAG, "webView is null, please check...");
        }


    }
    private class MyWebViewDownLoadListener implements DownloadListener{

        @Override
        public void onDownloadStart(String url, String userAgent, String contentDisposition, String mimetype,
                                    long contentLength) {

            Uri uri = Uri.parse(url);
            Intent intent = new Intent(Intent.ACTION_VIEW, uri);
            startActivity(intent);
        }
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (event.getAction() == KeyEvent.ACTION_DOWN) {
            switch (keyCode) {
                case KeyEvent.KEYCODE_BACK:
                    if (webView.canGoBack()) {
                        webView.goBack();
                    } else {
                        finish();
                    }
                    return true;
            }

        }
        return super.onKeyDown(keyCode, event);
    }
    private void getToolbarViews(){
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        assert getSupportActionBar() != null;
        getSupportActionBar().setTitle( null);

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    }
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()){
            case android.R.id.home:
                onBackPressed();
                break;
        }
        return super.onOptionsItemSelected(item);
    }
    @Override
    public void onBackPressed() {
        if (webView.canGoBack()) {

            webView.goBack();

            return;
        }
        super.onBackPressed();
    }

    @Override
    protected void onResume() {
        super.onResume();
        webView.onResume();
    }
    @Override
    protected void onDestroy() {
        super.onDestroy();
        //为了使WebView退出时音频或视频关闭
        webView.destroy();
    }
    @Override
    protected void onPause() {
        super.onPause();
        webView.onPause();

        webView.reload();
    }



}
