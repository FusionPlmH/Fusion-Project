package com.tweaks.salt.activity;

import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.tweaks.salt.R;
import com.tweaks.salt.base.BaseActivity;
import com.tweaks.salt.ui.CircleImageView;

import java.util.Arrays;
import java.util.List;



public class ThanksActivity extends BaseActivity {
    ImageView img;

    private Integer[]mTeamIds,mTest, mCreditsIds;
    protected int initLayout() {
        return R.layout.activity_thanks;
    }

    @Override
    protected boolean initStatusBarColor() {
        return false;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setTitle(R.string.list_grid_code);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
       // setUpAboutItems();
        setOpenSourceItems();
       setTestOrgItems();
        setUpCreditsItems();
        img = (ImageView) findViewById(R.id.th_img);
        img.setBackgroundResource(R.drawable.timg);
    }

    private void setUpCreditsItems() {
        String[] textItems = getResources().getStringArray(R.array.opensource_names);
        mCreditsIds = new Integer[textItems.length];
        TypedArray typedArray = getResources().obtainTypedArray(R.array.opensource_drawables);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.thanks_container);
        assert linearLayout != null;
        for (int i = 0; i < textItems.length; i++) {
            View itemView = LayoutInflater.from(this).inflate(R.layout.opensource_item, linearLayout, false);
            ((CircleImageView) itemView.findViewById(R.id.opensource_icon)).setImageResource(typedArray.getResourceId(i, -1));
            ((TextView) itemView.findViewById(R.id.opensource_text)).setText(textItems[i]);
            int id = View.generateViewId();
            itemView.setId(id);
            mCreditsIds[i] = id;
            linearLayout.addView(itemView, i);
        }
        typedArray.recycle();
    }
  private void setOpenSourceItems() {
        String[] textItems = getResources().getStringArray(R.array.romtame_names);

        mTeamIds = new Integer[textItems.length];
        TypedArray typedArray = getResources().obtainTypedArray(R.array.romtame_drawables);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.opensource_container);
        assert linearLayout != null;
        for (int i = 0; i < textItems.length; i++) {
            View itemView = LayoutInflater.from(this).inflate(R.layout.opensource_item, linearLayout, false);
            ((CircleImageView) itemView.findViewById(R.id.opensource_icon)).setImageResource(typedArray.getResourceId(i, -1));
            ((TextView) itemView.findViewById(R.id.opensource_text)).setText(textItems[i]);
            int id = View.generateViewId();
            itemView.setId(id);
            mTeamIds[i] = id;

            linearLayout.addView(itemView, i);
        }
        typedArray.recycle();

    }

  private void setTestOrgItems() {
        String[] textItems = getResources().getStringArray(R.array.test_names);
        mTest = new Integer[textItems.length];
        TypedArray typedArray = getResources().obtainTypedArray(R.array.test_drawables);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.test_container);
        assert linearLayout != null;
        for (int i = 0; i < textItems.length; i++) {
            View itemView = LayoutInflater.from(this).inflate(R.layout.opensource_item, linearLayout, false);
            ((CircleImageView) itemView.findViewById(R.id.opensource_icon)).setImageResource(typedArray.getResourceId(i, -1));
            ((TextView) itemView.findViewById(R.id.opensource_text)).setText(textItems[i]);
            int id = View.generateViewId();
            itemView.setId(id);
            mTest[i] = id;
            linearLayout.addView(itemView, i);
        }
        typedArray.recycle();

    }

    public void onClick(View view) {
        Integer id = view.getId();
        List<String> linksList;
        String url = null;
        List teamIds = Arrays.asList(mCreditsIds);
        List test = Arrays.asList(mTest);
        List creditsIds = Arrays.asList(mTeamIds);
        if (teamIds.contains(id)) {
            linksList = Arrays.asList(getResources().getStringArray(R.array.opensource_links));
            url = linksList.get(teamIds.indexOf(id));
        } else if(test.contains(id)) {
            linksList = Arrays.asList(getResources().getStringArray(R.array.test_links));
            url = linksList.get(test.indexOf(id));
        } else if(creditsIds.contains(id)) {
            linksList = Arrays.asList(getResources().getStringArray(R.array.romtame_links));
            url = linksList.get(creditsIds.indexOf(id));
        }
        if(url != null) {
            openUrl(url);
        } else {
            Toast.makeText(mContext, "网址错误", Toast.LENGTH_SHORT).show();
        }
    }

    private void openUrl(String url) {
        Intent webViewIntent = new Intent(mContext, WebViewActivity.class);
        webViewIntent.putExtra("url", url);
        mContext.startActivity(webViewIntent);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                finish();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }
}
