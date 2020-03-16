package com.leo.download.provider.callback;

public interface UploadCallback extends FileCallback {

    void onStart();


    void onProgress(long currentSize, long totalSize, float progress);

    /**
     * 完成
     *
     * @param response 响应data
     */
    void onFinish(String response);


    /**
     * 出错
     *
     * @param error
     */
    void onError(String error);
}
