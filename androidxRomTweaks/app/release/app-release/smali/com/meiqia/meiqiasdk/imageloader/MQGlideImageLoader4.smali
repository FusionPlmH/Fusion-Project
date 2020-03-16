.class public Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;
.super Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;
.source "MQGlideImageLoader4.java"


# instance fields
.field private mGlideImageLoader3:Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V
    .locals 11

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual {p0, p3}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v5, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v5}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move v6, p4

    :try_start_1
    invoke-virtual {v5, p4}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/request/RequestOptions;
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v7, p5

    :try_start_2
    invoke-virtual {v5, v7}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/request/RequestOptions;
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    move/from16 v8, p6

    move/from16 v9, p7

    :try_start_3
    invoke-virtual {v5, v8, v9}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v5, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4$1;
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v10, p8

    :try_start_4
    invoke-direct {v5, p0, v10, p2, v1}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4$1;-><init>(Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move v6, p4

    :catch_2
    move/from16 v7, p5

    :catch_3
    move/from16 v8, p6

    move/from16 v9, p7

    :catch_4
    move-object/from16 v10, p8

    :goto_0
    iget-object v1, v0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;->mGlideImageLoader3:Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;

    if-nez v1, :cond_0

    new-instance v1, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;

    invoke-direct {v1}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;-><init>()V

    iput-object v1, v0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;->mGlideImageLoader3:Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;

    :cond_0
    iget-object v1, v0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;->mGlideImageLoader3:Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;->displayImage(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;IIIILcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;)V

    :goto_1
    return-void
.end method

.method public downloadImage(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4$2;

    invoke-direct {v2, p0, p3, v0}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4$2;-><init>(Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;->mGlideImageLoader3:Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;->mGlideImageLoader3:Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader4;->mGlideImageLoader3:Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meiqia/meiqiasdk/imageloader/MQGlideImageLoader3;->downloadImage(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;)V

    :goto_0
    return-void
.end method
