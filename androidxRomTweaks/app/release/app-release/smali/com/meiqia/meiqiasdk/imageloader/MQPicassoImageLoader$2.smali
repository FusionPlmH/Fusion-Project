.class Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$2;
.super Ljava/lang/Object;
.source "MQPicassoImageLoader.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader;->downloadImage(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader;

.field final synthetic val$finalPath:Ljava/lang/String;

.field final synthetic val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$2;->this$0:Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$2;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;

    iput-object p3, p0, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$2;->val$finalPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$2;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$2;->val$finalPath:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;->onFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 1

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$2;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$2;->val$finalPath:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
