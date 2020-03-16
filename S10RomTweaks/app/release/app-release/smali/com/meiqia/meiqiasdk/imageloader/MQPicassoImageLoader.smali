.class public Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader;
.super Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;
.source "MQPicassoImageLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, p6, p7}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    new-instance p4, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$1;

    invoke-direct {p4, p0, p8, p2, p3}, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$1;-><init>(Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    return-void
.end method

.method public downloadImage(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    new-instance v0, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$2;

    invoke-direct {v0, p0, p3, p2}, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader$2;-><init>(Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    return-void
.end method
