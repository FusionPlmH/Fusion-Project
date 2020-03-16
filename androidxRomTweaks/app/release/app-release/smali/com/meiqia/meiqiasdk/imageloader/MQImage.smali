.class public Lcom/meiqia/meiqiasdk/imageloader/MQImage;
.super Ljava/lang/Object;
.source "MQImage.java"


# static fields
.field private static sImageLoader:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V
    .locals 11

    const-string v1, "meiqia"

    :try_start_0
    invoke-static {}, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->getImageLoader()Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;->displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayImage error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayImage exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static downloadImage(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;)V
    .locals 2

    const-string v0, "meiqia"

    :try_start_0
    invoke-static {}, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->getImageLoader()Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;->downloadImage(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "displayImage error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "downloadImage exception"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static final getImageLoader()Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;
    .locals 3

    sget-object v0, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->sImageLoader:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;

    if-nez v0, :cond_5

    const-class v0, Lcom/meiqia/meiqiasdk/imageloader/MQImage;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->sImageLoader:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;

    if-nez v1, :cond_4

    const-string v1, "com.bumptech.glide.Glide"

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->isClassExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;

    invoke-direct {v1}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;-><init>()V

    sput-object v1, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->sImageLoader:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;

    goto :goto_0

    :cond_0
    const-string v1, "com.squareup.picasso.Picasso"

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->isClassExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader;

    invoke-direct {v1}, Lcom/meiqia/meiqiasdk/imageloader/MQPicassoImageLoader;-><init>()V

    sput-object v1, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->sImageLoader:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;

    goto :goto_0

    :cond_1
    const-string v1, "com.nostra13.universalimageloader.core.ImageLoader"

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->isClassExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader;

    invoke-direct {v1}, Lcom/meiqia/meiqiasdk/imageloader/MQUILImageLoader;-><init>()V

    sput-object v1, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->sImageLoader:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;

    goto :goto_0

    :cond_2
    const-string v1, "org.xutils.x"

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->isClassExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader;

    invoke-direct {v1}, Lcom/meiqia/meiqiasdk/imageloader/MQXUtilsImageLoader;-><init>()V

    sput-object v1, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->sImageLoader:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "\u5fc5\u987b\u5728\u4f60\u7684 build.gradle \u6587\u4ef6\u4e2d\u914d\u7f6e\u300cGlide\u3001Picasso\u3001universal-image-loader\u3001XUtils3\u300d\u4e2d\u7684\u67d0\u4e00\u4e2a\u56fe\u7247\u52a0\u8f7d\u5e93\u7684\u4f9d\u8d56,\u6216\u8005\u68c0\u67e5\u662f\u5426\u6dfb\u52a0\u4e86\u56fe\u5e93\u7684\u6df7\u6dc6\u914d\u7f6e"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    :goto_1
    sget-object v0, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->sImageLoader:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;

    return-object v0
.end method

.method private static final isClassExists(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setImageLoader(Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;)V
    .locals 0

    sput-object p0, Lcom/meiqia/meiqiasdk/imageloader/MQImage;->sImageLoader:Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;

    return-void
.end method
