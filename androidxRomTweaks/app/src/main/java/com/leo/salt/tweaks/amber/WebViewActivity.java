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
import android.support.v4.widget.SwipeRefreshLayout;
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
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BaseActivity;
import com.leo.salt.tweaks.view.widget.LeoWebView;
import com.leo.salt.utils.NetUtils;

import java.io.File;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.openUrl;


public class WebViewActivity extends BaseActivity implements SwipeRefreshLayout.OnRefreshListener{
    private SwipeRefreshLayout mSwipeLayout;
    private LeoWebView webView;
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
        mSwipeLayout = (SwipeRefreshLayout) findViewById(R.id.swipe_ly);
        mSwipeLayout .setColorSchemeResources(R.color.colorAccentMain,
                R.color.violet, R.color.pretty, R.color.pink);
        mSwipeLayout .setProgressViewEndTarget(true, 150);
        mSwipeLayout .setOnRefreshListener(this);
        initWebView();
    }


    private void initWebView(){

        progressDialog = (ProgressBar)findViewById(R.id.progressBar);
        final TextView webViewBar = (TextView) findViewById(R.id.web_title);
        webViewBar.setSelected(true);
        Bundle bundle = getIntent().getExtras();
        if (bundle != null && !bundle.isEmpty()) {
            webViewTitle = bundle.getString("title");
            webView = (LeoWebView) findViewById(R.id.webView);
            new Handler().postDelayed(() -> {
                webView.setVisibility(View.VISIBLE);
                webView.requestFocus(); }, 1000);

            //   Intent intent = getIntent();
            webViewUrl = bundle.getString("url");
//加载某个指定网址
            webView.loadUrl(webViewUrl);
//禁止跳转到第三方浏览器
            WebSettings webSettings = webView.getSettings();
            webSettings.setJavaScriptEnabled(true);

//支持插件
         //   webSettings.setPluginsEnabled(true);

//设置自适应屏幕，两者合用
            webSettings.setUseWideViewPort(true); //将图片调整到适合webview的大小
            webSettings.setLoadWithOverviewMode(true); // 缩放至屏幕的大小

//缩放操作
            webSettings.setSupportZoom(true); //支持缩放，默认为true。是下面那个的前提。
            webSettings.setBuiltInZoomControls(true); //设置内置的缩放控件。若为false，则该WebView不可缩放
            webSettings.setDisplayZoomControls(false); //隐藏原生的缩放控件

//其他细节操作
            webSettings.setCacheMode(WebSettings.LOAD_CACHE_ELSE_NETWORK); //关闭webview中缓存
            webSettings.setAllowFileAccess(true); //设置可以访问文件
            webSettings.setJavaScriptCanOpenWindowsAutomatically(true); //支持通过JS打开新窗口
            webSettings.setLoadsImagesAutomatically(true); //支持自动加载图片
            webSettings.setDefaultTextEncodingName("utf-8");//设置编码格式


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
            webSettings.setJavaScriptEnabled(true);
            webView.getSettings().setDomStorageEnabled(true);
            newWin(webSettings);
            webView.setWebViewClient(new WebViewClient(){
                // 页面加载结束
                @Override
                public void onPageFinished(WebView view, String url) {
                    super.onPageFinished(view, url);
                    // 编写javaScript方法-执行修改样式
                    String javascript = "javascript:function hide() {" +
                            "document.getElementById('hideElem').style.display='none';" +
                            "}";
                    // 网页添加方法
                    view.loadUrl(javascript);
                    // 执行方法
                    view.loadUrl("javascript:hide();");
                }
                @Override
                public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error){
                    handler.proceed();
                }

                @Override
                public WebResourceResponse shouldInterceptRequest(WebView view, String url) {
                    if (url.startsWith("http") || url.startsWith("https")) { //http和https协议开头的执行正常的流程
                        return super.shouldInterceptRequest(view, url);
                    } else { //其他的URL则会开启一个Acitity然后去调用原生APP
                        Intent in = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
                        startActivity(in);
                        return null;
                    }
                }
            });

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
                        if (mSwipeLayout.isRefreshing()) {
                            mSwipeLayout.setRefreshing(false);
                        }
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

    @Override
    public void onRefresh() {
        initWebView();
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
    class MyWebviewclient extends WebViewClient {
        @Override
        public void onPageStarted(WebView view, String url, android.graphics.Bitmap favicon) {
            if (url.startsWith("mqqwpa")) {
                view.stopLoading();
                Intent in = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
                startActivity(in);
            }else{
                super.onPageStarted(view, url, favicon);
            }
        }


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

        webView.destroy();
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