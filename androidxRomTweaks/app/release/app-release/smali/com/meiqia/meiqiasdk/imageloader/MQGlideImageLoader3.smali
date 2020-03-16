.class public Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;
.super Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;
.source "MQGlideImageLoader3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/bumptech/glide/BitmapTypeRequest;->placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/bumptech/glide/BitmapRequestBuilder;->error(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p6, p7}, Lcom/bumptech/glide/BitmapRequestBuilder;->override(II)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    new-instance p4, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$1;

    invoke-direct {p4, p0, p8, p2, p3}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$1;-><init>(Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lcom/bumptech/glide/BitmapRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public downloadImage(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object p1

    new-instance v0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$2;

    invoke-direct {v0, p0, p3, p2}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3$2;-><init>(Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/BitmapTypeRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method
