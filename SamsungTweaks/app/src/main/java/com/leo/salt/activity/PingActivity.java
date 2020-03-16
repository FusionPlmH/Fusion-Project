package com.fusionleo.salt.activity;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.fusionleo.salt.R;
import com.fusionleo.salt.base.BaseActivity;
import com.fusionleo.salt.theme.Utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class PingActivity extends BaseActivity implements View.OnClickListener {

    private static final int msgKey1 = 1;
    private static final String pingRes = "pingRes";

    private static String startPingStr;
    private static String stopLastPingStr;
    private static String stopPingStr;
    private static String exitPingStr;
    private static String failPingStr;
    private static String cannotReachStr;
    private static String finishPingStr;
    private static String timeOutStr;

    private AutoCompleteTextView ipaddr_etxt;
    private Button start_btn, cancel_btn;
    private TextView show_txt;
    private Toast tst;
    private PingThread pingThread;
    private KeeperThread keeperThread;
    volatile boolean pingIsAlive;
    @Override
    protected int initLayout() {
        return R.layout.activity_ping;

    }

    @Override
    protected boolean initStatusBarColor() {
        return true;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //setContentView(R.layout.activity_ping);

        start_btn = (Button) findViewById(R.id.start_btn);
        cancel_btn = (Button) findViewById(R.id.cancel_btn);
        ipaddr_etxt = (AutoCompleteTextView) findViewById(R.id.ipaddr_etxt);
        show_txt =(TextView)findViewById(R.id.show_txt);

        startPingStr = getResources().getString(R.string.start_ping);
        stopLastPingStr = getResources().getString(R.string.stop_last_ping);
        stopPingStr = getResources().getString(R.string.stop_ping);
        exitPingStr = getResources().getString(R.string.exit_ping);
        failPingStr = getResources().getString(R.string.fail_ping);
        cannotReachStr = getResources().getString(R.string.cannot_reach);
        finishPingStr = getResources().getString(R.string.finish_ping);
        timeOutStr = getResources().getString(R.string.time_out);
        Utils.StatusBarColor(this);
        start_btn.setOnClickListener(this);
        cancel_btn.setOnClickListener(this);
        pingThread=new PingThread();
        keeperThread=new KeeperThread();
        getToolbarViews();
        initAutoComplete("history", ipaddr_etxt);
    }
    private void getToolbarViews(){
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setTitle(R.string.show_dsp);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    }
    @Override
    public void onClick(View v) {
        if(tst !=null)
            tst.cancel();
        switch (v.getId()) {
            case R.id.start_btn:
                if (pingThread.isAlive())
                {
                    setTimeToast(stopLastPingStr);
                    pingThread.interrupt();
                    keeperThread.interrupt();
                }
                setTimeToast(startPingStr);
                Thread.State pingThreadState= pingThread.getState();
                if(pingThreadState == Thread.State.TERMINATED) {
                    pingThread = new PingThread();
                    keeperThread =new KeeperThread();
                }
                pingIsAlive =true;
                pingThread.start();
                keeperThread.start();

                saveHistory("history", ipaddr_etxt);
                break;
            case R.id.cancel_btn:
                if (pingThread.isAlive())
                {
                    setTimeToast(stopPingStr);
                    pingThread.interrupt();
                    keeperThread.interrupt();
                }else
                {
                    setTimeToast(exitPingStr);
                    finish();
                }
                break;
            default:
                break;
        }
    }

    private class PingThread extends  Thread{
        private Process process;
        @Override
        public void run() {
            super.run();
            boolean isRun =true;
            do{
                String ipaddr_str=ipaddr_etxt.getText().toString();
                String line =null;
                BufferedReader successReader =null;
                String command = "ping " + ipaddr_str;
                Bundle bundle = new Bundle();

                try {
                    process = Runtime.getRuntime().exec(command);
                    if (process == null) {
                        bundle.putString(pingRes, failPingStr);
                        Message msg = new Message();
                        msg.what = msgKey1;
                        msg.setData(bundle);
                        mHandler.sendMessage(msg);
                    }else
                    {
                        successReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
                        while ((line = successReader.readLine()) != null) {
                            pingIsAlive =true;
                            bundle.putString(pingRes, line);
                            Message msg = new Message();
                            msg.what = msgKey1;
                            msg.setData(bundle);
                            mHandler.sendMessage(msg);
                        }
                        bundle.putString(pingRes, cannotReachStr);
                        Message msg = new Message();
                        msg.what = msgKey1;
                        msg.setData(bundle);
                        mHandler.sendMessage(msg);
                    }
                }catch (IOException e) {
                    bundle.putString(pingRes, failPingStr);
                    Message msg = new Message();
                    msg.what = msgKey1;
                    msg.setData(bundle);
                    mHandler.sendMessage(msg);
                }
                isRun =false;
            }while (isRun);
        }
        @Override
        public void interrupt() {
            super.interrupt();
            if(process != null)
            {
                process.destroy();
                Bundle bundle = new Bundle();
                if(pingIsAlive)
                    bundle.putString(pingRes, finishPingStr);
                else
                    bundle.putString(pingRes, timeOutStr);
                Message msg = new Message();
                msg.what = msgKey1;
                msg.setData(bundle);
                mHandler.sendMessage(msg);
            }
            pingIsAlive =false;
        }
    }

    private Handler mHandler = new Handler(){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            Bundle bundle;
            switch (msg.what){
                case msgKey1:
                    bundle =msg.getData();
                    show_txt.setText(bundle.getString(pingRes));
                    break;
                default:
                    break;
            }
        }
    };
    private void setTimeToast(String showTxt) {
        tst = Toast.makeText(this, showTxt,
                Toast.LENGTH_SHORT);
        tst.show();
    }

    private class KeeperThread extends  Thread {
        @Override
        public void run() {
            super.run();
            while (true)
            {
                if(pingIsAlive)
                {
                    pingIsAlive =false;
                    try {
                        sleep(5000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }else
                {
                    if (pingThread.isAlive())
                    {
                        pingThread.interrupt();
                    }
                    break;
                }
            }
        }
    }
    private void saveHistory(String field,
                             AutoCompleteTextView autoCompleteTextView) {
        String text = autoCompleteTextView.getText().toString();
        SharedPreferences sp = getSharedPreferences("network_url", 0);
        String longhistory = sp.getString(field, "www.leorom.cc");
        if (!longhistory.contains(text + ",")) {
            StringBuilder sb = new StringBuilder(longhistory);
            sb.insert(0, text + ",");
            sp.edit().putString("history", sb.toString()).apply();
        }
    }
    private void initAutoComplete(String field,
                                  AutoCompleteTextView autoCompleteTextView) {
        SharedPreferences sp = getSharedPreferences("network_url", 0);
        String longhistory = sp.getString("history", "www.leorom.cc");
        String[] histories = longhistory.split(",");
        ArrayAdapter<String> adapter = new ArrayAdapter<>(this,
                android.R.layout.simple_dropdown_item_1line, histories);
        // 只保留最近的50条的记录
        if (histories.length > 50) {
            String[] newHistories = new String[50];
            System.arraycopy(histories, 0, newHistories, 0, 50);
            adapter = new ArrayAdapter<>(this,
                    android.R.layout.simple_dropdown_item_1line, newHistories);
        }
        autoCompleteTextView.setAdapter(adapter);
        autoCompleteTextView
                .setOnFocusChangeListener(new View.OnFocusChangeListener() {
                    @Override
                    public void onFocusChange(View v, boolean hasFocus) {
                        AutoCompleteTextView view = (AutoCompleteTextView) v;
                        if (hasFocus) {
                     //      view.showDropDown();
                        }
                    }
                });

    }
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        /* 获取菜单项的ID */
        int id = item.getItemId();
        switch (id) {
            case android.R.id.home:
                onBackPressed();
                break;

        }
        /* 响应消息 方法回调 */
        return super.onOptionsItemSelected(item);
    }
}
