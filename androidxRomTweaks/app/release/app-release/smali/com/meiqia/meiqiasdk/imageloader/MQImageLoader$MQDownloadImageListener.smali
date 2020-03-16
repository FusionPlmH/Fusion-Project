.class public interface abstract Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;
.super Ljava/lang/Object;
.source "MQImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MQDownloadImageListener"
.end annotation


# virtual methods
.method public abstract onFailed(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method
