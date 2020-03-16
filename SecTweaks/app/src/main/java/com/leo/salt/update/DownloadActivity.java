package com.leo.salt.update;

import android.Manifest;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.os.IBinder;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.app.AlertDialog;
import android.support.v7.widget.Toolbar;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.leo.salt.R;

import com.leo.salt.base.BaseActivity;
import com.leo.salt.theme.Utils;
import com.leo.salt.utils.AndroidUtils;
import com.leo.salt.utils.root.DownloadService;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import static com.leo.salt.utils.Constants.Hitomi_ROM;
import static com.leo.salt.utils.Constants.Hitomi_ROMOTAHTTP;
import static com.leo.salt.utils.Constants.Hitomi_ROMOTAUS_LINE;
import static com.leo.salt.utils.Constants.LEO_ROMOTAUS_LING;
import static com.leo.salt.utils.Constants.LeoOTAHTTP;
import static com.leo.salt.utils.Constants.OS_VERSION;
import static com.leo.salt.utils.Constants.OtaUrl;
import static com.leo.salt.utils.NetUtils.hasNetWork;


public class DownloadActivity extends BaseActivity implements View.OnClickListener {
    private ProgressDialog progressDialog;
    private ListView lv_main_list;
  //  String currentTag=null;

    private List<FQ> lists=new ArrayList<>();
    private OTAanalysis myAdapter;
    class OTAanalysis extends BaseAdapter {

        @Override
        public int getCount() {
            return lists.size();
        }

        @Override
        public Object getItem(int i) {
            return lists.get(i);
        }

        @Override
        public long getItemId(int i) {
            return i;
        }

        @Override
        public View getView(int i, View view, ViewGroup viewGroup) {
            if(view==null){
                view=LayoutInflater.from(DownloadActivity.this).inflate(R.layout.ota_item_listview,null);
                ItemTag itemTag=new ItemTag();
                itemTag.ROMVersions= (TextView) view.findViewById(R.id.rom_raw_versions_name);
                itemTag.ROMDate= (TextView) view.findViewById(R.id.rom_raw_date);
                itemTag.OtaVersions= (TextView) view.findViewById(R.id.ota_versions);
                itemTag.OtaDate= (TextView) view.findViewById(R.id.ota_date);
                itemTag.ChangeLog= (TextView) view.findViewById(R.id.change_log);
                itemTag.OtaStopDate= (TextView) view.findViewById(R.id.ota_stop_date);
                itemTag.OtaPush= (TextView) view.findViewById(R.id.ota_push);
                view.setTag(itemTag);
            }
            ItemTag itemTag= (ItemTag) view.getTag();
            itemTag.ROMVersions.setText(mContext.getResources().getString(R.string.now_versions)+AndroidUtils.getROMVersion());
            itemTag.ROMDate.setText(mContext.getResources().getString(R.string.publish_date)+lists.get(i).getContent());
            itemTag.OtaVersions.setText(mContext.getResources().getString(R.string.ota_versions)+lists.get(i).getTime());
            itemTag.OtaDate.setText(mContext.getResources().getString(R.string.publish_date)+lists.get(i).getOTA());
            itemTag.OtaStopDate.setText(mContext.getResources().getString(R.string.stop_date)+lists.get(i).getOtaStopDate());
            itemTag.OtaPush.setText(mContext.getResources().getString(R.string.push)+lists.get(i).getOtaPush());
            itemTag.ChangeLog.setText(mContext.getResources().getString(R.string.nav_changelog)+": "+lists.get(i).getChangeLog());
            return view;
        }
    }


    class MyTask extends AsyncTask {

        private FQ fq;
        private FQ fq1;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            progressDialog.show();
        }

        @Override
        protected Object doInBackground(Object[] objects) {

            final List<FQ> fqs=new ArrayList<>();

            //获取网络数据
            //01.定义获取网络的数据的路径
            String path=OtaUrl;
            try {
                //02.实例化Url
                URL url=new URL(path);
                //03.获取连接对象
                HttpURLConnection conn= (HttpURLConnection) url.openConnection();
                //04.设置请求方式
                conn.setRequestMethod("GET");
                //05.设置请求连接超时的时间
                conn.setConnectTimeout(5000);

                //06.获取响应码
                int code=conn.getResponseCode();
                if(code==200){
                    //07.获取返回过来的数据（XML）
                    InputStream is =conn.getInputStream();
                    //08.测试（删除-注释）
                    //缓冲字符流
                    String str=null;
//                    BufferedReader br=new BufferedReader(new InputStreamReader(is));
//                    while((str=br.readLine())!=null){
//                        Log.i("test",str);
//                    }
                    //09.解析XML
                    //方式：DOM  SAX  PULL
                    //09.1  使用DOM解析

//                    try {
//                        DocumentBuilderFactory documentBuilderFactory=DocumentBuilderFactory.newInstance();
//                        DocumentBuilder documentBuilder=documentBuilderFactory.newDocumentBuilder();
//                        Document document=documentBuilder.parse(is);
//                        //获取跟标签
//                        Element root=document.getDocumentElement();
//                        Log.i("test","跟标签："+root.getTagName());
//
//                        //Node  Element
//                        NodeList nodeList=root.getElementsByTagName("fq");
//                        for (int i = 0; i <nodeList.getLength() ; i++) {
//                            Element element= (Element) nodeList.item(i);
//                            //获取属性name
//                            String name=element.getAttribute("name");
//
//                            //获取子标签<content><time>
//                            Element elementContent= (Element) element.getElementsByTagName("content").item(0);
//                            String content=elementContent.getTextContent();
//
//                            Element elementTime= (Element) element.getElementsByTagName("time").item(0);
//                            String time=elementTime.getTextContent();
//                            Log.i("test",name+" "+content+" "+time);
//
//                            FQ fq=new FQ(name,content,time);
//                            fqs.add(fq);
//                        }
//                    }
//                    catch (ParserConfigurationException e) {
//                        e.printStackTrace();
//                    } catch (SAXException e) {
//                        e.printStackTrace();
//                    }

                    //02.使用SAX解析：特点：边读边解析  基于事件（方法）驱动方式

                    //<name>张三</name>
//                    try {
//                        SAXParserFactory saxParserFactory=SAXParserFactory.newInstance();
//                        SAXParser saxParser=saxParserFactory.newSAXParser();
//
//                        saxParser.parse(is,new DefaultHandler(){
//                            @Override
//                            public void startDocument() throws SAXException {
//                                super.startDocument();
//                            }
//
//                            @Override
//                            public void endDocument() throws SAXException {
//                                super.endDocument();
//                            }
//
//                            @Override
//                            public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
//                                super.startElement(uri, localName, qName, attributes);
//                                currentTag=localName;
//                                if("fq".equals(localName)){
//                                    //实例化对象
//                                    fq = new FQ();
//                                    String name=attributes.getValue(0);
//                                    fq.setName(name);
//                                }
//
//                            }
//
//                            @Override
//                            public void endElement(String uri, String localName, String qName) throws SAXException {
//                                super.endElement(uri, localName, qName);
//                                //细节：
//                                currentTag=null;
//                                if("fq".equals(localName)){
//                                    fqs.add(fq);
//                                }
//                            }
//
//                            @Override
//                            public void characters(char[] ch, int start, int length) throws SAXException {
//                                super.characters(ch, start, length);
//                                if("content".equals(currentTag)){
//                                    String content=new String(ch,start,length);
//                                    fq.setContent(content);
//                                } else if("time".equals(currentTag)){
//                                    String time=new String(ch,start,length);
//                                    fq.setTime(time);
//                                }
//                            }
//                        });
//                    } catch (ParserConfigurationException e) {
//                        e.printStackTrace();
//                    } catch (SAXException e) {
//                        e.printStackTrace();
//                    }

                    try {
                        //03.使用PULL解析
                        XmlPullParser pullParser= Xml.newPullParser();
                        pullParser.setInput(is,"UTF-8");
                        int type=pullParser.getEventType();

                        while(type!=XmlPullParser.END_DOCUMENT){
                            switch (type) {
                                case XmlPullParser.START_TAG:
                                    //获取开始标签的名字
                                    String startTagName=pullParser.getName();
                                    if("rom_versions".equals(startTagName)){
                                        fq1 = new FQ();
                                        String name=pullParser.getAttributeValue(0);
                                        fq1.setName(name);
                                    }else if("rom_date".equals(startTagName)){
                                        String content= pullParser.nextText();
                                        fq1.setContent(content);
                                    }else if("ota_versions".equals(startTagName)){
                                        String time= pullParser.nextText();
                                        fq1.setTime(time);
                                    }else if("ota_date".equals(startTagName)){
                                        String ota= pullParser.nextText();
                                        fq1.setOTA(ota);
                                    }
                                    else if("push".equals(startTagName)){
                                        String Push= pullParser.nextText();
                                        fq1.setOtaPush(Push);
                                    }
                                    else if("stop_date".equals(startTagName)){
                                        String StopDate= pullParser.nextText();
                                        fq1.setOtaStopDate(StopDate);
                                    }   else if("changelog".equals(startTagName)){
                                        String log= pullParser.nextText();
                                        fq1.setChangeLog(log);
                                    }
                                    break;
                                case XmlPullParser.END_TAG:
                                    //获取结束标签的名字
                                    String endTagName=pullParser.getName();
                                    if("rom_versions".equals(endTagName)){
                                        fqs.add(fq1);
                                    }
                                    break;
                            }
                            type=pullParser.next();
                        }
                    } catch (XmlPullParserException e) {
                        e.printStackTrace();
                    }


                }
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return fqs;
        }

        //更新UI
        @Override
        protected void onPostExecute(Object o) {
            super.onPostExecute(o);

            List<FQ> fqs= (List<FQ>) o;

            lists.addAll(fqs);

            myAdapter.notifyDataSetChanged();

            progressDialog.cancel();
        }
    }

    private DownloadService.DownloadBinder downloadBinder;
    public void createSDCardDirimg(){
        // if (Version.equals(leoversion())) {
        //  getCopyrightAlertDialog();
        //   return;
        //  }
        //  Copyright ( );
        if(Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())){
            // 创建一个文件夹对象，赋值为外部存储器的目录
            // 创建一个文件夹对象，赋值为外部存储器的目录
            File sdcardDir =Environment.getExternalStorageDirectory();
            //得到一个路径，内容是sdcard的文件夹路径和名字
            String path=sdcardDir.getPath()+"/Android/ota";
            File path1 = new File(path);
            if (!path1.exists()) {
                //若不存在，创建目录，可以在应用启动的时候创建
                path1.mkdirs();
                setTitle("paht ok,path:"+path);
            }
        }
        else{
            setTitle("false");
            return;

        }

    }

    //创建了一个ServiceConnection匿名类
    private ServiceConnection connection=new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            //获取到DownloadBinder的实例，用这个实例在活动中调用服务提供的各种方法

            downloadBinder= (DownloadService.DownloadBinder) service;
        }
 
        @Override
        public void onServiceDisconnected(ComponentName name) {
 
        }
    };
 
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        lv_main_list = (ListView) findViewById(R.id.lv_main_list);
        myAdapter = new OTAanalysis();
        //给listView设置适配器
        lv_main_list.setAdapter(myAdapter);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setTitle(R.string.update_ota);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        //创建适配器
        Utils.StatusBarColor(this);
        createSDCardDirimg();
        Button startDownload= (Button) findViewById(R.id.start_download);
        Button pauseDownload= (Button) findViewById(R.id.pause_download);
        Button canelDownload= (Button) findViewById(R.id.cancel_download);
        startDownload.setOnClickListener(this);
        pauseDownload.setOnClickListener(this);
        canelDownload.setOnClickListener(this);
        //开启下载后台服务,启动服务可以让服务在后台一直运行
        Intent intent=new Intent(this,DownloadService.class);
        startService(intent);
        bindService(intent,connection,BIND_AUTO_CREATE);//绑定服务，可以让服务与活动进行通信

        //WRITE_EXTERNAL_STORAGE的权限申请，文件是要下载到SD卡的Download目录下的，没有权限，无法工作
        if (ContextCompat.checkSelfPermission(DownloadActivity.this, Manifest.permission.WRITE_EXTERNAL_STORAGE)!=
                PackageManager.PERMISSION_GRANTED){
            ActivityCompat.requestPermissions(DownloadActivity.this,new
                    String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE},1);
        }

            checkNetworkInf0();

    }


    private void checkNetworkInf0() {

       if (hasNetWork(getApplicationContext()) == 0) {
           AlertDialog dialog = new AlertDialog.Builder(mContext)
                   .setTitle("\uD83D\uDE13\uD83D\uDE13\uD83D\uDE13\uD83D\uDE13")
                   .setMessage(R.string.network_no)//设置对话框的内容
                   //设置对话框的按钮
                   .setPositiveButton("我知道了", new DialogInterface.OnClickListener() {

                       @Override
                       public void onClick(DialogInterface dialog, int which) {
                           // TODO Auto-generated method stub
                           onBackPressed();
                           dialog.dismiss();
                       }
                   })
                   .create();
           dialog.show();
           dialog.setCanceledOnTouchOutside(false);
           dialog.setCancelable(false);
        //   dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);

       } else if (hasNetWork(getApplicationContext()) == 1) {
           AlertDialog dialog = new AlertDialog.Builder(this)
                   .setTitle("\uD83D\uDE31\uD83D\uDE31\uD83D\uDE31\uD83D\uDE31")
                   .setMessage(R.string.network_data)//设置对话框的内容
                   //设置对话框的按钮
                   .setNeutralButton(R.string.next, new DialogInterface.OnClickListener() {
                       @Override
                       public void onClick(DialogInterface dialog, int which) {
                           onBackPressed();

                           dialog.dismiss();
                       }
                   })
                   .setPositiveButton(R.string.wilful, new DialogInterface.OnClickListener() {
                       @Override
                       public void onClick(DialogInterface dialog, int which) {
                           checkOTAInfo(true);
                           dialog.dismiss();
                       }
                   }).create();
           dialog.show();
           dialog.setCanceledOnTouchOutside(false);
           dialog.setCancelable(false);
         //  dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
       } else {
           checkOTAInfo(true);
       }
   }
    private void checkOTAInfo(boolean Network){
        if(Network){
            progressDialog = new ProgressDialog(this);
            progressDialog.setMessage(mContext.getResources().getString(R.string.upload_ota));
            new MyTask().execute();
        }

    }
    @Override
    protected int initLayout() {
        return R.layout.activity_ota;
    }

    @Override
    protected boolean initStatusBarColor() {
        return true;
    }

    @Override
    public void onClick(View v) {
        if (downloadBinder==null){
            return;
        }
        switch (v.getId()){
            case R.id.start_download:
                OTA();
                break;
            case R.id.pause_download:
                downloadBinder.pauseDownload();
                break;
            case R.id.cancel_download:
                downloadBinder.cancelDownload();
                break;
            default:
                break;
        }
    }
    public  void  OTA() {
        getDownload(mContext);
     //   downloadSize();
    }


    public  void  getDownload(final Activity context) {
        final String items[] = {context.getResources().getString(R.string.ota_update_url),context.getResources().getString(R.string.ota_update_url_2)};
        AlertDialog dialog = new AlertDialog.Builder(context)
                .setTitle(R.string.ota_update_system)//设置对话框的标题
                .setItems(items, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        switch (which) {
                            case 0:  //线路1
                                if(AndroidUtils.getROMVersion().equals(OS_VERSION)) {
                                    downloadBinder.startDownload(LeoOTAHTTP);//LEO线路1
                                } else if(AndroidUtils.getROMVersion().equals(Hitomi_ROM)) {
                                    downloadBinder.startDownload(Hitomi_ROMOTAHTTP);//Hitomi线路1
                                }else {
                                    Toast.makeText(DownloadActivity.this,mContext.getResources().getString(R.string.no_ota),Toast.LENGTH_SHORT).show();
                                }
                                break;
                            case 1://线路2
                                if(AndroidUtils.getROMVersion().equals(OS_VERSION)) {
                                    downloadBinder.startDownload(LEO_ROMOTAUS_LING);//leo线路2
                                } else if(AndroidUtils.getROMVersion().equals(Hitomi_ROM)) {
                                    downloadBinder.startDownload(Hitomi_ROMOTAUS_LINE);//Hitomi线路2
                                }else {
                                    Toast.makeText(DownloadActivity.this,mContext.getResources().getString(R.string.no_ota),Toast.LENGTH_SHORT).show();
                                }
                                break;
                        }
                        dialog.dismiss();
                    }
                })
                .create();
    //    dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        dialog.show();


    }

    //请求权限返回的结果
    @Override
    public void onRequestPermissionsResult(int requestCode,  String[] permissions, int[] grantResults) {
        switch (requestCode){
            case 1:
                if (grantResults.length>0&&grantResults[0]!=PackageManager.PERMISSION_GRANTED){
                    Toast.makeText(this,"权限被拒绝，无法使用程序",Toast.LENGTH_SHORT).show();
                    finish();
                }
                break;
            default:
                break;
        }
    }
 
    //一定要记得写下代码对服务进行接触绑定，不然可能会造成内存泄漏
    @Override
    protected void onDestroy() {
        super.onDestroy();
        unbindService(connection);
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
