.class Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4$1;
.super Ljava/lang/Object;
.source "MQGlideImageLoader4.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;->displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;

.field final synthetic val$displayImageListener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;

.field final synthetic val$finalPath:Ljava/lang/String;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4$1;->this$0:Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4$1;->val$displayImageListener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;

    iput-object p3, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4$1;->val$finalPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4$1;->val$displayImageListener:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4$1;->val$imageView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4$1;->val$finalPath:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;->onSuccess(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
