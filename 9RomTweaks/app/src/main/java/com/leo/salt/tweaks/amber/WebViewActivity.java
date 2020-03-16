package com.leo.salt.tweaks.amber;

import android.app.Activity;
import android.app.ProgressDialog;
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
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BaseActivity;
import com.leo.salt.utils.NetUtils;

import java.io.File;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.openUrl;


public class WebViewActivity extends BaseActivity {

    private WebView webView;
    private  ProgressBar progressDialog;

    private String webViewUrl, webViewTitle;

    private static final String TAG = "WebView";

    @Override
    protected int initLayout() {
        return R.layout.activity_webview;
    }

    @Override
    protected int initAppBarLayout() {
        return 0;
    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // Verify.get(this);
        getToolbarViews();
        mContext = this;

        progressDialog = (ProgressBar)findViewById(R.id.progressBar);
        final TextView webViewBar = (TextView) findViewById(R.id.web_title);





     //   webViewBar.setText(webViewTitle);
        webViewBar.setSelected(true);
        Bundle bundle = getIntent().getExtras();
        if (bundle != null && !bundle.isEmpty()) {
            webViewTitle = bundle.getString("title");
            webView = (WebView) findViewById(R.id.webView);
            new Handler().postDelayed(() -> {
                webView.setVisibility(View.VISIBLE);
                webView.requestFocus(); }, 1000);

            //   Intent intent = getIntent();
            webViewUrl = bundle.getString("url");
//加载某个指定网址
            webView.loadUrl(webViewUrl);
//禁止跳转到第三方浏览器
            WebSettings mWebSettings = webView.getSettings();
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
            newWin(mWebSettings);
            https();
            webView.setDownloadListener(new MyWebViewDownLoadListener());
            webView.setWebChromeClient(new WebChromeClient(){
                @Override
                public void onReceivedTitle(WebView view, String title) {
                    super.onReceivedTitle(view, title);
                    webViewBar.setText("" +title);

                }
                @Override
                public void onProgressChanged(WebView view, int newProgress) {
                    if (newProgress < 100) {
                        progressDialog.setVisibility(View.VISIBLE);
                    } else if(newProgress>95){
                        progressDialog.setVisibility(View.GONE);
                    }else {
                        progressDialog.setVisibility(View.GONE);
                    }

                    super.onProgressChanged(view, newProgress);
                }
            });

        } else {
            Log.w(TAG, "webView is null, please check...");
        }


    }
    private void newWin(WebSettings mWebSettings) {
        //html中的_bank标签就是新建窗口打开，有时会打不开，需要加以下
        //然后 复写 WebChromeClient的onCreateWindow方法
        mWebSettings.setSupportMultipleWindows(false);
        mWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
    }
    public void https(){
        webView.setWebViewClient(new WebViewClient(){
                                     @Override
                                     public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error){
                                         handler.proceed();
                                     }
                                 }
        );
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

    public void openLink() {
        openUrl(webViewUrl,mContext);
    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        switch (item.getItemId()){
            case android.R.id.home:
                onBackPressed();
                break;
            case R.id.action__browser:
                openLink();
                break;
        }




        return super.onOptionsItemSelected(item);
    }

}