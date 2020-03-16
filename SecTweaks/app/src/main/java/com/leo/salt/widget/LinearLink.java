package com.leo.salt.widget;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

import com.leo.salt.activity.WebViewActivity;

public class LinearLink extends LinearLayout implements View.OnClickListener{

    private String mUrl;
    public static String INFO_ATTR_ULR = "LeoURL";
    public LinearLink(Context context){
        super(context);
    }

    public LinearLink(Context context, AttributeSet attrs){
        super(context, attrs);
        ini_params(context,attrs);
    }
    private void ini_params(Context context, AttributeSet attributeSet) {
        mUrl = attributeSet.getAttributeValue(null,INFO_ATTR_ULR);
        if(mUrl!=null) {
            setClickable(true);
            setOnClickListener(this);
        }
    }
    @Override
    public void onClick(View view){
        if(mUrl!=null){
            openUrl(mUrl,getContext());
        }
    }
    private void openUrl(String url,Context context) {
        Intent webViewIntent = new Intent(context, WebViewActivity.class);
        webViewIntent.putExtra("url", url);
        context.startActivity(webViewIntent);
    }
}
