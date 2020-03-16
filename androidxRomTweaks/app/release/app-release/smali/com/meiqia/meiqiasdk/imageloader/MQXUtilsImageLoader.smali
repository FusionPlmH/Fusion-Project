.class public Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader;
.super Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;
.source "MQXUtilsImageLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/x$Ext;->init(Landroid/app/Application;)V

    new-instance p1, Lorg/xutils/image/ImageOptions$Builder;

    invoke-direct {p1}, Lorg/xutils/image/ImageOptions$Builder;-><init>()V

    invoke-virtual {p1, p4}, Lorg/xutils/image/ImageOptions$Builder;->setLoadingDrawableId(I)Lorg/xutils/image/ImageOptions$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/xutils/image/ImageOptions$Builder;->setFailureDrawableId(I)Lorg/xutils/image/ImageOptions$Builder;

    move-result-object p1

    invoke-virtual {p1, p6, p7}, Lorg/xutils/image/ImageOptions$Builder;->setSize(II)Lorg/xutils/image/ImageOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions$Builder;->build()Lorg/xutils/image/ImageOptions;

    move-result-object p1

    invoke-virtual {p0, p3}, Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lorg/xutils/x;->image()Lorg/xutils/ImageManager;

    move-result-object p4

    new-instance p5, Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader$1;

    invoke-direct {p5, p0, p8, p2, p3}, Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader$1;-><init>(Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-interface {p4, p2, p3, p1, p5}, Lorg/xutils/ImageManager;->bind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)V

    return-void
.end method

.method public downloadImage(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lorg/xutils/x$Ext;->init(Landroid/app/Application;)V

    invoke-virtual {p0, p2}, Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/xutils/x;->image()Lorg/xutils/ImageManager;

    move-result-object p2

    new-instance v0, Lorg/xutils/image/ImageOptions$Builder;

    invoke-direct {v0}, Lorg/xutils/image/ImageOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/xutils/image/ImageOptions$Builder;->build()Lorg/xutils/image/ImageOptions;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader$2;-><init>(Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;Ljava/lang/String;)V

    invoke-interface {p2, p1, v0, v1}, Lorg/xutils/ImageManager;->loadDrawable(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    return-void
.end method
