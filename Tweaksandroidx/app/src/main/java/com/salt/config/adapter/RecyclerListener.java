package com.salt.config.adapter;

import android.content.Context;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;


import androidx.recyclerview.widget.RecyclerView;

import com.salt.config.R;
import com.salt.config.bean.DataBean;

import java.util.List;

public interface RecyclerListener {
   //RecyclerView的点击事件，将信息回调给view
    void onItemClick(int Position, List<DataBean> dataBeanList);
}