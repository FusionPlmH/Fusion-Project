package com.tweaks.leo.utils.root;


import android.os.AsyncTask;
import android.os.Environment;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;


public class DownloadTask extends AsyncTask<String,Integer,Integer> {
    //4个整型常量用于表示下载的状态
    public static final int TYPE_SUCCESS=0;
    public static final int TYPE_FAILED=1;
    public  static final int TYPE_PAUSED=2;
    public static final int TYPE_CANCELED=3;

    private DownloadListener listener;

    private boolean isCanceled=false;

    private boolean isPaused=false;

    private int lastProgress;

    //在构造函数中传入一个刚刚定义的DownLoadListener参数，待会用这个参数进行下载状态的回调
    public DownloadTask(DownloadListener listener){
        this.listener=listener;
    }

    //doInBackground方法用于在后台执行具体的下载逻辑
    @Override
    protected Integer doInBackground(String... params) {
        InputStream is=null;
        RandomAccessFile savedFile=null;
        File file=null;
        try {
            long downloadedLength=0;//记录已下载的文件的长度
            //获取到下载的URL地址
            String downloadUrl=params[0];//下载地址
            //根据URL解析出下载的文件名
            String fileName=downloadUrl.substring(downloadUrl.lastIndexOf("/"));
            //将文件下载到Environment.DIRECTORY_DOWNLOADS目录下，也就是SD卡的Download目录
            String directory= Environment.getExternalStoragePublicDirectory(Environment
                    .DIRECTORY_DOWNLOADS).getPath();
            String path="/sdcard/LeoTweaks/ota/";
            file=new File(path+fileName);
            //判断目录中是否已经存在要下载的文件
            if (file.exists()){
                //如果已经存在，则读取已下载的字节数，这样就可以在后面使用断点续传的功能
                downloadedLength=file.length();
            }

            //使用get。。方法来获取待下载文件的总长度
            long contentLength=getContentLength(downloadUrl);
            //若文件长度=0，则文件有问题，直接返回下载失败
            if (contentLength==0){
                return TYPE_FAILED;
                //若文件长度=已经下载的文件的长度
            }else if (contentLength==downloadedLength){
                //已下载的字节和文件总字节相同,则下载成功
                return TYPE_SUCCESS;
            }

            //建立网络链接
            OkHttpClient client=new OkHttpClient();
            //要发起一个http请求，首先创建一个Request对象
            Request request=new Request.Builder()
                    //断点下载，这里添加了一个header，指定从那个字节开始下载，因为已经下载过的就不要下载了
                    .addHeader("RANGE","bytes="+downloadedLength+"-")
                    .url(downloadUrl)
                    .build();
            //调用Okhttp的newCall方法返回根据request请求，服务器返回的数据
            Response response=client.newCall(request).execute();

            /**
             * 采用java流的方式，不断从网络上读取数据，不断写入到本地
             * 一直到文件全部下载完为止，在整个过程中，我们还要判断用户有没有
             * 触发暂停、取消等操作，有的话通过TYPE的响应方式返回，
             * 没有的话则实时计算当前的下载进度
             */
            if (response!=null){
                //用inputstream的实例得到服务器返回的数据的详细内容
                is= response.body().byteStream();
                //把文件进行保存到本地
                savedFile=new RandomAccessFile(file,"rw");
                savedFile.seek(downloadedLength);//跳过已下载的字节
                byte[] b=new byte[1024];
                int total=0;
                int len;
                while ((len=is.read(b))!=-1){
                    //判断用户是否触发取消事件
                    if (isCanceled){
                        return TYPE_CANCELED;
                    }else if (isPaused){
                        //判断用户是否触发暂停事件
                        return TYPE_PAUSED;
                    }else {
                        total=total+len;
                        savedFile.write(b,0,len);
                        //计算下载的百分比
                        int progress= (int) ((total+downloadedLength )*100/contentLength);
                        //调用 publishProgress进行通知
                        publishProgress(progress);
                    }
                }
                //关流
                response.body().close();
                //返回下载成功
                return TYPE_SUCCESS;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                if (is!=null){
                    is.close();
                }
                if (savedFile!=null){
                    savedFile.close();
                }
                if (isCanceled&&file!=null){
                    file.delete();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return TYPE_FAILED;
    }

    //这个方法用于在界面上更新当前的下载进度
    @Override
    protected void onProgressUpdate(Integer... values) {
        int progress=values[0];
        if (progress>lastProgress){
            //如果下一次的下载进度大于上一次的，则通过progress通知一下下载进度
            listener.onProgress(progress);
            //然后把当前的进度当作上一次的进度
            lastProgress=progress;
        }
    }

    //这个方法用于通知最终的下载结果,根据参数中传入的下载状态进行回调
    @Override
    protected void onPostExecute(Integer integer) {
        switch (integer){
            case TYPE_SUCCESS:
                listener.onSuccess();
                break;
            case TYPE_FAILED:
                listener.onFailed();
                break;
            case TYPE_PAUSED:
                listener.onPaused();
                break;
            case TYPE_CANCELED:
                listener.onCanceled();
                break;
            default:
                break;
        }
    }

    public void pauseDownload(){
        isPaused=true;
    }

    public void cancelDownload(){
        isCanceled=true;
    }

    private long getContentLength(String downloadUrl) throws IOException{
        //建立网络链接
        OkHttpClient client=new OkHttpClient();
        //要发起一个http请求，首先创建一个Request对象
        Request request=new Request.Builder()
                .url(downloadUrl)
                .build();
        //调用Okhttp的newCall方法返回根据request请求，服务器返回的数据
        Response response=client.newCall(request).execute();
        if (response!=null&&response.isSuccessful()){
            //用contentLength接收服务器返回的详细数据
            long contentLength=response.body().contentLength();
            response.body().close();
            return contentLength;
        }
        return 0;
    }
}
