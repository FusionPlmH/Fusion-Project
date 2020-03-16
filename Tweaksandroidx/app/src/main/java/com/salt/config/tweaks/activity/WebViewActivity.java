package com.salt.config.tweaks.activity;

import android.annotation.TargetApi;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.salt.base.SaltActivity;
import com.salt.frame.saltview.SaltWebView;
import com.salt.config.R;
import com.salt.config.view.SaltSwipeRefreshLayout;

public class WebViewActivity extends SaltActivity implements SaltSwipeRefreshLayout.OnRefreshListener{
    private SaltWebView webView;
    private WebSettings mSettings;
    private String webViewUrl,webViewTitle;
    private ProgressBar mProgressBar;
    private TextView mWebViewTitle;
    private   SwipeRefreshLayout mSwipeRefreshLayout;

    @Override
    protected int initLayout() {
        return R.layout.activity_webview;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }

    @Override
    protected String initAppName() {
        return "";
    }
    @Override
    public void onRefresh() {
        intView();
    }
    private void intView(){
        Bundle bundle = getIntent().getExtras();
        if (bundle != null && !bundle.isEmpty()) {
            webViewTitle = bundle.getString("title");
            webViewUrl = bundle.getString("url");
            mWebViewTitle.setText(webViewTitle );
            webView.loadUrl(webViewUrl);
            mSettings = webView.getSettings();
            mSettings.setJavaScriptEnabled(true);// 开启javascript 如果访问的页面中有与js交互，则必须开启
            mSettings.setJavaScriptCanOpenWindowsAutomatically(true);////支持通过JS打开新窗口
            mSettings.setDomStorageEnabled(true);// 开启DOM
            mSettings.setDatabaseEnabled(true);//开启database
            mSettings.setDefaultTextEncodingName("utf-8");// 设置字符编码
            mSettings.setAllowFileAccess(true);// 设置支持文件流
//LOAD_DEFAULT默认缓存模式 根据cache-control决定是否从网络上取数据
//LOAD_CACHE_ONLY: 不使用网络，只读取本地缓存数据
//LOAD_NO_CACHE: 不使用缓存，只从网络获取数据.
////LOAD_CACHE_ELSE_NETWORK，只要本地有，无论是否过期，或者no-cache，都使用缓存中的数据。
            mSettings.setCacheMode(WebSettings.LOAD_DEFAULT);// 设置缓存模式
            mSettings.setSupportZoom(true); //支持缩放，默认为true。是下面那个的前提。
            mSettings.setBuiltInZoomControls(true); //设置内置的缩放控件。若为false，则该WebView不可缩放
            mSettings.setDisplayZoomControls(false); //隐藏原生的缩放控件
            mSettings.setUseWideViewPort(true); //将图片调整到适合webview的大小
            mSettings.setLoadWithOverviewMode(true); // 缩放至屏幕的大小
// 提高网页加载速度，暂时阻塞图片加载，然后网页加载好了，在进行加载图片
            mSettings.setBlockNetworkImage(false);
            mSettings.setAppCacheEnabled(true);// 开启缓存机制
            WebViewClient(webView);
            webView.setWebChromeClient(new WebChromeClient(){
                /**
                 * 处理进度条
                 */
                @Override
                public void onProgressChanged(WebView view, int newProgress) {
                    if (newProgress >= 100) {
                        mProgressBar.setVisibility(View.GONE);
                        if (mSwipeLayout.isRefreshing()) {
                            mSwipeLayout.setRefreshing(false);
                        }
                    } else {
                        if (View.GONE == mProgressBar.getVisibility()) {
                            mProgressBar.setVisibility(View.VISIBLE);
                        }
                        mProgressBar.setProgress(newProgress);
                    }
                    super.onProgressChanged(view, newProgress);
                }
                /**
                 * 获取网站的标题
                 */
                @Override
                public void onReceivedTitle(WebView view, String title) {
                    super.onReceivedTitle(view, title);
                    if(webViewTitle==null){
                        mWebViewTitle.setText(title);
                    }

                }

            });

        }
    }
    @Override
    protected void initData() {
        webView =(SaltWebView)findViewById(R.id.salt_webview);
        mWebViewTitle = (TextView) findViewById(R.id.web_title);
        mWebViewTitle.setSelected(true);
        SwipeLayout(R.id.swipe_ly);
        mSwipeLayout.setOnRefreshListener(this);
        mProgressBar = (ProgressBar)findViewById(R.id.salt_webprogress);
        intView();

    }
    private void WebViewClient(WebView webView){
        webView.setWebViewClient(new WebViewClient(){

            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                if (url.endsWith(".apk")) {//添加下载
                    startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(url)));
                } else {
                    view.loadUrl(url);
                }
                return false;
            }
            @Override
            public void onPageStarted(WebView view, String url, Bitmap favicon) {
                super.onPageStarted(view, url, favicon);
            }
            /**
             * 页面加载完成回调的方法
             *
             */
            @Override
            public void onPageFinished(WebView view, String url) {
                super.onPageFinished(view, url);

            }
            /**
             * 页面加载过程中，加载资源回调的方法，每一个资源（比如图片）的加载都会调用一次
             *
             */
            @Override
            public void onLoadResource(WebView view, String url) {
                super.onLoadResource(view, url);
            }
            // 新版本，只会在Android6及以上调用
            @TargetApi(Build.VERSION_CODES.M)
            @Override
            public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
                super.onReceivedError(view, request, error);
                if (request.isForMainFrame()){ // 或者： if(request.getUrl().toString() .equals(getUrl()))
                    view.loadUrl("http://os.leorom.cc/app404/index.html");
                }
            }

            /**
             *加载网页发生证书认证错误时
             */
            @Override
            public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
                handler.cancel();      //取消加载
                // handler.proceed();    //如果要上传到google play ,回调中使用此方法是无法通过审核的
                // handler.handleMessage(null);    //可做其他处理
            }
        });
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        webView.destroy();
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
    protected void onPause() {
        super.onPause();
        webView.onPause();
        webView.reload();
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

}
