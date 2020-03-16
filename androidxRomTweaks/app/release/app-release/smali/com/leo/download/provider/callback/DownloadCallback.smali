.class public interface abstract Lcom/leo/download/provider/callback/DownloadCallback;
.super Ljava/lang/Object;
.source "DownloadCallback.java"

# interfaces
.implements Lcom/leo/download/provider/callback/FileCallback;


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onFinish(Ljava/io/File;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onProgress(JJF)V
.end method

.method public abstract onStart(JJF)V
.end method

.method public abstract onWait()V
.end method
