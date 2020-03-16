package com.leo.download.provider.callback;

import java.io.File;

public interface DownloadCallback extends FileCallback {

    void onStart(long currentSize, long totalSize, float progress);


    void onProgress(long currentSize, long totalSize, float progress);


    void onPause();


    void onCancel();


    void onFinish(File file);


    void onWait();

    void onError(String error);


}
