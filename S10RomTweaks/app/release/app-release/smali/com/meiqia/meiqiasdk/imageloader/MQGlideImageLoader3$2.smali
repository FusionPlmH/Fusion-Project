.class Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$2;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "MQGlideImageLoader3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;->downloadImage(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;

.field final synthetic val$finalPath:Ljava/lang/String;

.field final synthetic val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$2;->this$0:Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$2;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;

    iput-object p3, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$2;->val$finalPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$2;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$2;->val$finalPath:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;->onFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$2;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$2;->val$finalPath:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$2;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
