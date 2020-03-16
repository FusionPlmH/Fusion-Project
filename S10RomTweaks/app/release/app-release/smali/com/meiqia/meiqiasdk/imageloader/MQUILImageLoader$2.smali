.class Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader$2;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "MQUILImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader;->downloadImage(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader;

.field final synthetic val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader$2;->this$0:Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader$2;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader$2;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, p3}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader$2;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;->onFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
