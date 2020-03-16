package com.leo.salt.tweaks.view.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.leo.salt.tweaks.R;

import java.util.List;

import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomDrawable;


public class ListViewAdapter extends BaseAdapter {
    private  int COUNT;
    private  Drawable[] Icon ;
    private String[] itemName;
    private String[] SumarryitemName ;
    private LayoutInflater inflater;
    public  ListViewAdapter(Context context,int ss,String[] name,String[] sumarr,Drawable[] icon){
        inflater = LayoutInflater.from(context);
        COUNT=ss;
        itemName=name;
        SumarryitemName=sumarr;
        Icon=icon;
    }
    public int getCount() {
        return COUNT;
    }
    public Object getItem(int position) {
        return null;
    }
    public long getItemId(int position) {
        return position;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        View view = inflater.inflate(R.layout.man_view, null);
        ImageView iv = (ImageView) view.findViewById(R.id.viewimage);
        iv.setImageDrawable(Icon[position]);
        TextView name = (TextView) view.findViewById(R.id.viewName);
        name.setText(itemName[position]);
        int Size=17;
        name.setTextSize(Size);
        TextView Sumarry = (TextView) view.findViewById(R.id.viewsummary);
        Sumarry.setText(SumarryitemName[position]);

        return view;
    }


}

