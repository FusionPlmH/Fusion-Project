.class Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$1;
.super Ljava/lang/Object;
.source "MQGlideImageLoader3.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;->displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;

.field final synthetic val$finalPath:Ljava/lang/String;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$1;->this$0:Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$1;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;

    iput-object p3, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$1;->val$finalPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$1;->onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result p1

    return p1
.end method

.method public onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/Bitmap;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/Bitmap;",
            ">;ZZ)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$1;->val$listener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$1;->val$imageView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$1;->val$finalPath:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;->onSuccess(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$1;->onResourceReady(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result p1

    return p1
.end method
