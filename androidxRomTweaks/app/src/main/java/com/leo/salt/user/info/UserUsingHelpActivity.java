package com.leo.salt.user.info;


import android.app.ProgressDialog;
import android.content.Intent;

import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

import android.support.design.widget.CollapsingToolbarLayout;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.Toolbar;
import android.widget.TextView;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BaseActivity;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.utils.NetUtils.LeoFoatJsonServer;


public class UserUsingHelpActivity extends BaseActivity  {


   public TextView mName;
    private void intView(){
        mName= (TextView) findViewById(R.id.help_name);
    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        CollapsingToolbarLayout collapsingToolbarLayout=(CollapsingToolbarLayout) findViewById(R.id.toolbar_layout);
        collapsingToolbarLayout.setTitle(getApksStringInt("leo_slide_meun_help"));
        intView();
        new fetchdata().execute();
    }

    @Override
    protected int initLayout() {
        return R.layout.activity_help;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }




    public String data = "";
    public String CN= "help_cn";
    public String EN = "help_en";
    public int Carid;
    public String Carnumber=null;
    public String Carnumber2=null;
    public  List<Integer> CarId_list = new ArrayList<>();
    public List<String> CarNumber_list = new ArrayList<>();
    public  List<String> CarNumber_list2 = new ArrayList<>();
    public class fetchdata extends AsyncTask<Void,Void,Void> {
     @Override
    protected Void doInBackground(Void... voids) {
         try {
             URL url = new URL(LeoFoatJsonServer(help()));
             HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
             InputStream inputStream = urlConnection.getInputStream();
             BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
             String temp = "";
             while (temp != null){
                 temp = bufferedReader.readLine();data = data + temp;
             }
             JSONArray jsonArray = new JSONArray(data);
             for(int i=0;i<jsonArray.length();i++){
                 JSONObject object  = jsonArray.getJSONObject(i);
                 Carid= object.getInt("CarId");
                 Carnumber = object.getString("Name");
                 Carnumber2 = object.getString("info");
                 CarId_list.add(Carid);
                 CarNumber_list2.add(Carnumber2);
                 CarNumber_list.add(Carnumber);
             }
         } catch (MalformedURLException e) {
             e.printStackTrace();
         } catch (IOException e) {
             e.printStackTrace();
         } catch (JSONException e) {
             e.printStackTrace();
         }

         return null;
     }
        public String help(){
         String str;
            if(isChineseLanguage() ){
                str=CN;
            }else {
                str=EN;
            }
            return str;
        }
        @Override
        protected void onPostExecute(Void aVoid) {
            super.onPostExecute(aVoid);
            for(int i=0;i<CarNumber_list2.size();i++){
                mName.append("\n");
                mName.append(CarId_list.get(i).toString()+" "+CarNumber_list.get(i));
                mName.append(CarNumber_list2.get(i));
            }
        }

    }
}