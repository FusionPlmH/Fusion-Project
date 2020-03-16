package com.salt.widget;



import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import android.widget.SimpleAdapter;

import androidx.appcompat.app.AlertDialog;

import com.salt.frame.saltview.OverScrollListView;
import com.salt.config.R;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class AndroidDialog extends  AlertDialog.Builder {

    public AndroidDialog(Context context, String ame, String[] name, String[] message) {
        super(context);
        intView(context,ame,name,message);
    }


    private  void intView(Context context,String ame, String[] name, String[] message){
        setTitle(ame);
        LayoutInflater welmsgInflater = LayoutInflater.from(context);
        View welmsgLayout = welmsgInflater.inflate(R.layout.scroll_list_view, null);
        setView(welmsgLayout);
        List<Map<String, Object>> listItems = new ArrayList<Map<String, Object>>();
        for (int i = 0; i < name.length; i++ ) {
            Map<String, Object> listItem = new HashMap<String, Object>();
            listItem.put("name",name[i]);
            listItem.put("message",message[i]);
            listItems.add(listItem);
        }
        SimpleAdapter sampleAdapter = new SimpleAdapter(context
                , listItems
                , R.layout.info_items
                , new String[] {"name", "message"}
                , new int[] { R.id.info_name, R.id.info_message}
        );
        OverScrollListView listview = (OverScrollListView)welmsgLayout .findViewById(R.id.saltListView);
        listview.setMaxOverScrollY(300);
        listview.setAdapter(sampleAdapter);
    setPositiveButton(android.R.string.ok, (dialog, which) -> {
            dialog.dismiss();
        }).create();
    show();
    }
}