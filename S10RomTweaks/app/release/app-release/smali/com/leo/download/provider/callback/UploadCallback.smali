.class public interface abstract Lcom/leo/download/provider/callback/UploadCallback;
.super Ljava/lang/Object;
.source "UploadCallback.java"

# interfaces
.implements Lcom/leo/download/provider/callback/FileCallback;


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onFinish(Ljava/lang/String;)V
.end method

.method public abstract onProgress(JJF)V
.end method

.method public abstract onStart()V
.end method