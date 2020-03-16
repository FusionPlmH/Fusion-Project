.class public Lcom/meiqia/core/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/core/g$i;,
        Lcom/meiqia/core/g$d;,
        Lcom/meiqia/core/g$e;,
        Lcom/meiqia/core/g$g;,
        Lcom/meiqia/core/g$j;,
        Lcom/meiqia/core/g$f;,
        Lcom/meiqia/core/g$h;,
        Lcom/meiqia/core/g$a;,
        Lcom/meiqia/core/g$c;,
        Lcom/meiqia/core/g$b;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static final b:Lokhttp3/MediaType;

.field private static c:Lcom/meiqia/core/g;

.field private static d:Lokhttp3/OkHttpClient;


# instance fields
.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/meiqia/core/g;->b:Lokhttp3/MediaType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meiqia/core/g;->e:Landroid/os/Handler;

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/meiqia/core/g;->d:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static a()Lcom/meiqia/core/g;
    .locals 2

    sget-object v0, Lcom/meiqia/core/g;->c:Lcom/meiqia/core/g;

    if-nez v0, :cond_1

    const-class v0, Lcom/meiqia/core/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/meiqia/core/g;->c:Lcom/meiqia/core/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/meiqia/core/g;

    invoke-direct {v1}, Lcom/meiqia/core/g;-><init>()V

    sput-object v1, Lcom/meiqia/core/g;->c:Lcom/meiqia/core/g;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/meiqia/core/g;->c:Lcom/meiqia/core/g;

    return-object v0
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1}, Lcom/meiqia/core/a/c;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getAESKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0, p1}, Lcom/meiqia/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/meiqia/core/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/core/g;->d()V

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/g;Ljava/io/File;Lokhttp3/Response;Lcom/meiqia/core/callback/OnProgressCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/core/g;->a(Ljava/io/File;Lokhttp3/Response;Lcom/meiqia/core/callback/OnProgressCallback;)V

    return-void
.end method

.method private a(Ljava/io/File;Lokhttp3/Response;Lcom/meiqia/core/callback/OnProgressCallback;)V
    .locals 11

    const-string v0, "download file failed"

    const/16 v1, 0x800

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x4e20

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    int-to-long v9, p1

    add-long/2addr v7, v9

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, p1}, Ljava/io/FileOutputStream;->write([BII)V

    if-eqz p3, :cond_0

    long-to-float p1, v7

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float p1, p1, v2

    long-to-float v2, v5

    div-float/2addr p1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float p1, p1, v2

    float-to-int p1, p1

    invoke-interface {p3, p1}, Lcom/meiqia/core/callback/OnProgressCallback;->onProgress(I)V

    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    invoke-interface {p3}, Lcom/meiqia/core/callback/OnProgressCallback;->onSuccess()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    if-eqz p3, :cond_2

    invoke-interface {p3, v3, v0}, Lcom/meiqia/core/callback/OnProgressCallback;->onFailure(ILjava/lang/String;)V

    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_b

    :catch_1
    if-eqz p3, :cond_8

    :goto_2
    invoke-interface {p3, v3, v0}, Lcom/meiqia/core/callback/OnProgressCallback;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_b

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object p2, v2

    :goto_3
    move-object v2, v4

    goto :goto_6

    :catch_3
    move-exception p1

    move-object p2, v2

    :goto_4
    move-object v2, v4

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object p2, v2

    goto :goto_6

    :catch_4
    move-exception p1

    move-object p2, v2

    :goto_5
    if-eqz p3, :cond_6

    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "cancel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x4e26

    const-string v1, "download is cancel"

    invoke-interface {p3, p1, v1}, Lcom/meiqia/core/callback/OnProgressCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_9

    :cond_3
    invoke-interface {p3, v3, v0}, Lcom/meiqia/core/callback/OnProgressCallback;->onFailure(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception p1

    :goto_6
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :catch_5
    if-eqz p3, :cond_4

    invoke-interface {p3, v3, v0}, Lcom/meiqia/core/callback/OnProgressCallback;->onFailure(ILjava/lang/String;)V

    :cond_4
    :goto_7
    if-eqz p2, :cond_5

    :try_start_7
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    if-eqz p3, :cond_5

    invoke-interface {p3, v3, v0}, Lcom/meiqia/core/callback/OnProgressCallback;->onFailure(ILjava/lang/String;)V

    :cond_5
    :goto_8
    throw p1

    :cond_6
    :goto_9
    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_a

    :catch_7
    if-eqz p3, :cond_7

    invoke-interface {p3, v3, v0}, Lcom/meiqia/core/callback/OnProgressCallback;->onFailure(ILjava/lang/String;)V

    :cond_7
    :goto_a
    if-eqz p2, :cond_8

    :try_start_9
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_b

    :catch_8
    if-eqz p3, :cond_8

    goto :goto_2

    :cond_8
    :goto_b
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/meiqia/core/g$b;",
            "Lcom/meiqia/core/callback/OnFailureCallBack;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/meiqia/core/g;->a(ZLjava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method private a(Lokhttp3/Request;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V
    .locals 2

    invoke-static {p1}, Lcom/meiqia/core/a/f;->a(Lokhttp3/Request;)V

    sget-object v0, Lcom/meiqia/core/g;->d:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/meiqia/core/g$32;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/meiqia/core/g$32;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnFailureCallBack;Lcom/meiqia/core/g$b;Lokhttp3/Request;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/g$b;",
            "Lcom/meiqia/core/callback/OnFailureCallBack;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p2}, Lcom/meiqia/core/g;->b(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p4}, Lcom/meiqia/core/a/c;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p4, Lcom/meiqia/core/g;->b:Lokhttp3/MediaType;

    invoke-static {p4, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    const-string p4, "Authorization"

    invoke-virtual {p2, p4}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/meiqia/core/g;->b:Lokhttp3/MediaType;

    invoke-direct {p0, p4}, Lcom/meiqia/core/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    :goto_1
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    sget-object p5, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    if-eqz p5, :cond_2

    const-string p5, "ent_id"

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p5, "src"

    const-string v0, "android_sdk"

    invoke-interface {p4, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/meiqia/core/a/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p1, p6, p7}, Lcom/meiqia/core/g;->a(Lokhttp3/Request;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    if-eqz p7, :cond_3

    iget-object p1, p0, Lcom/meiqia/core/g;->e:Landroid/os/Handler;

    new-instance p2, Lcom/meiqia/core/g$23;

    invoke-direct {p2, p0, p7}, Lcom/meiqia/core/g$23;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/meiqia/core/g$b;",
            "Lcom/meiqia/core/callback/OnFailureCallBack;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/meiqia/core/g;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/meiqia/core/g;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method static synthetic b(Lcom/meiqia/core/g;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/core/g;->e:Landroid/os/Handler;

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "sdk"

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 7

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v1, Lcom/meiqia/core/MQManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mozilla/5.0 (Linux; Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") MeiqiaSDK/ Source/SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/meiqia/core/MQManager;->getMeiqiaSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Language/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^\\x00-\\x7F]"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string p1, "User-Agent"

    invoke-virtual {v0, p1, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-static {}, Lcom/meiqia/core/MQManager;->getMeiqiaSDKVersion()Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_version"

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string p1, "app_platform"

    const-string v1, "android_sdk"

    invoke-virtual {v0, p1, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-static {}, Lcom/meiqia/core/g;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_channel"

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    sget-boolean p1, Lcom/meiqia/core/g;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "alpha"

    const-string v1, "true"

    invoke-virtual {v0, p1, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/g$b;",
            "Lcom/meiqia/core/callback/OnFailureCallBack;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "src"

    const-string v1, "android_sdk"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ent_id"

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1, p2}, Lcom/meiqia/core/a/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/meiqia/core/g;->f()Lokhttp3/Request$Builder;

    move-result-object v0

    if-eqz p3, :cond_1

    instance-of v1, p3, Lcom/meiqia/core/g$c;

    if-eqz v1, :cond_1

    const-string v1, "Authorization"

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_1
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/meiqia/core/g;->a(Lokhttp3/Request;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/meiqia/core/g;->e:Landroid/os/Handler;

    new-instance p2, Lcom/meiqia/core/g$30;

    invoke-direct {p2, p0, p4}, Lcom/meiqia/core/g$30;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/meiqia/core/g$b;",
            "Lcom/meiqia/core/callback/OnFailureCallBack;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/meiqia/core/g;->b:Lokhttp3/MediaType;

    invoke-direct {p0, p2}, Lcom/meiqia/core/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-direct {p0}, Lcom/meiqia/core/g;->f()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/meiqia/core/g;->a(Lokhttp3/Request;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/meiqia/core/g;->e:Landroid/os/Handler;

    new-instance p2, Lcom/meiqia/core/g$31;

    invoke-direct {p2, p0, p4}, Lcom/meiqia/core/g$31;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private d()V
    .locals 5

    new-instance v0, Lcom/meiqia/core/g$1;

    invoke-direct {v0, p0}, Lcom/meiqia/core/g$1;-><init>(Lcom/meiqia/core/g;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "SSL"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v2, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v3, v2

    :goto_0
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v3, v2

    :goto_1
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_2
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/meiqia/core/g$12;

    invoke-direct {v1, p0}, Lcom/meiqia/core/g$12;-><init>(Lcom/meiqia/core/g;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/meiqia/core/g;->d:Lokhttp3/OkHttpClient;

    :cond_0
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method private f()Lokhttp3/Request$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/core/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meiqia/core/g;->b(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(JILcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://eco-api.meiqia.com/knowledge/questions/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/evaluate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "track_id"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ent_id"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "useful"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "question_id"

    invoke-virtual {v5, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/meiqia/core/g$27;

    invoke-direct {v6, p0, p4}, Lcom/meiqia/core/g$27;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;)V

    const/4 v3, 0x0

    move-object v2, p0

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/meiqia/core/g;->a(ZLjava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(JJLjava/lang/String;JLcom/meiqia/core/callback/SimpleCallback;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "conversation_id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "msg_id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "track_id"

    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "ent_id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Lcom/meiqia/core/g$3;

    invoke-direct {p5, p0, p8}, Lcom/meiqia/core/g$3;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/SimpleCallback;)V

    const-string p3, "https://eco-api.meiqia.com/client/file_downloaded"

    const/4 p2, 0x0

    move-object p1, p0

    move-object p4, v0

    move-object p6, p8

    invoke-direct/range {p1 .. p6}, Lcom/meiqia/core/g;->a(ZLjava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(JLcom/meiqia/core/g$e;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://eco-api.meiqia.com/client/tickets_v2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "track_id"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/meiqia/core/g$24;

    invoke-direct {v0, p0, p3}, Lcom/meiqia/core/g$24;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$e;)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/meiqia/core/g;->b(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Lcom/meiqia/core/bean/MQMessage;Ljava/io/File;Lcom/meiqia/core/callback/OnProgressCallback;)V
    .locals 1

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getMedia_url()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/meiqia/core/g$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/meiqia/core/g$4;-><init>(Lcom/meiqia/core/g;Ljava/io/File;Lcom/meiqia/core/callback/OnProgressCallback;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/meiqia/core/g;->b(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Lcom/meiqia/core/callback/OnGetClientCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/meiqia/core/g;->a(Ljava/lang/String;Lcom/meiqia/core/callback/OnGetClientCallback;)V

    return-void
.end method

.method public a(Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "track_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ent_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/meiqia/core/g$11;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/core/g$11;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/SimpleCallback;)V

    const-string v2, "https://eco-api.meiqia.com/client/end_conversation"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/meiqia/core/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Lcom/meiqia/core/g$d;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "track_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ent_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/meiqia/core/g$29;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/core/g$29;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$d;)V

    const-string v2, "https://eco-api.meiqia.com/client/queue/position"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/meiqia/core/g;->b(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Lcom/meiqia/core/g$e;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enterprise_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/meiqia/core/g$25;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/core/g$25;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$e;)V

    const-string v2, "https://eco-api.meiqia.com/client/tickets_v2/categories"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/meiqia/core/g;->b(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/io/File;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V
    .locals 4

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://eco-api-upload.meiqia.com/upload?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/meiqia/core/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&ent_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/jpeg"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p1

    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v2, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v1, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    const-string v2, "file"

    const-string v3, "file.jpeg"

    invoke-virtual {v1, v2, v3, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance v0, Lcom/meiqia/core/g$34;

    invoke-direct {v0, p0, p2}, Lcom/meiqia/core/g$34;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$b;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/meiqia/core/g;->a(Lokhttp3/Request;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/meiqia/core/g;->d:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v3, "agent_id"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p2, "track_id"

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ent_id"

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "text"

    const-string v0, "type"

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "content"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p2, "https://eco-api.meiqia.com/client/inputting"

    invoke-direct {p0, p2, v2, p1, p1}, Lcom/meiqia/core/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/lang/String;IIILjava/lang/String;ILcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://eco-api.meiqia.com/conversation/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/messages_streams"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "limit"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "ent_id"

    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "last_message_created_on"

    invoke-interface {p3, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "ascending"

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p4, "_time"

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/meiqia/core/g$6;

    invoke-direct {p2, p0, p7}, Lcom/meiqia/core/g$6;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    invoke-direct {p0, p1, p3, p2, p7}, Lcom/meiqia/core/g;->b(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://eco-api.meiqia.com/conversation/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/evaluation"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object p1, Lcom/meiqia/core/MQManager;->a:Ljava/lang/String;

    const-string v0, "app_key"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "level"

    invoke-virtual {v4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "content"

    invoke-virtual {v4, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/meiqia/core/g$19;

    invoke-direct {v5, p0, p4}, Lcom/meiqia/core/g$19;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/SimpleCallback;)V

    const/4 v2, 0x0

    move-object v1, p0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/meiqia/core/g;->a(ZLjava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/meiqia/core/callback/OnGetClientCallback;)V
    .locals 6

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/meiqia/core/MQManager;->a:Ljava/lang/String;

    const-string v1, "app_key"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "track_id"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    new-instance v4, Lcom/meiqia/core/g$9;

    invoke-direct {v4, p0, p2}, Lcom/meiqia/core/g$9;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnGetClientCallback;)V

    const-string v2, "https://eco-api.meiqia.com/sdk/init_sdk_user"

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/meiqia/core/g;->a(ZLjava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/meiqia/core/g$13;

    invoke-direct {p1, p0, p2}, Lcom/meiqia/core/g$13;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V

    const-string v1, "https://eco-api.meiqia.com/client/device_token"

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/meiqia/core/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    sget-object p2, Lcom/meiqia/core/g;->d:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p2, Lcom/meiqia/core/g$18;

    invoke-direct {p2, p0, p4, v0}, Lcom/meiqia/core/g$18;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/SimpleCallback;Ljava/io/File;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/meiqia/core/callback/SimpleCallback;",
            ")V"
        }
    .end annotation

    new-instance v6, Lcom/meiqia/core/g$17;

    invoke-direct {v6, p0, p1, p3}, Lcom/meiqia/core/g$17;-><init>(Lcom/meiqia/core/g;Ljava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V

    const-string v3, "https://eco-api.meiqia.com/sdk/statistics"

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/meiqia/core/g;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/meiqia/core/g$h;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/meiqia/core/g$33;

    invoke-direct {v0, p0, p3}, Lcom/meiqia/core/g$33;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$h;)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/meiqia/core/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/SimpleCallback;",
            ")V"
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "track_id"

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ent_id"

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/meiqia/core/g;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/meiqia/core/g$28;

    invoke-direct {v6, p0, p4}, Lcom/meiqia/core/g$28;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/SimpleCallback;)V

    const-string v3, "https://eco-api.meiqia.com/client/forms"

    const/4 v1, 0x0

    move-object v0, p0

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/meiqia/core/g;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/util/Map;JLcom/meiqia/core/g$f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J",
            "Lcom/meiqia/core/g$f;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://eco-api.meiqia.com/client/tickets_v2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "/replies"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/meiqia/core/g$22;

    invoke-direct {v5, p0, p4}, Lcom/meiqia/core/g$22;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$f;)V

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/meiqia/core/g;->a(ZLjava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/meiqia/core/callback/OnClientInfoCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "setAttrs"

    invoke-static {v0}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/meiqia/core/g$15;

    invoke-direct {v0, p0, p2}, Lcom/meiqia/core/g$15;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnClientInfoCallback;)V

    const-string v1, "https://eco-api.meiqia.com/client/attrs"

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/meiqia/core/g;->c(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/util/Map;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/OnGetMessageListCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://eco-api.meiqia.com/conversation/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/messages_streams"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/meiqia/core/g$8;

    invoke-direct {v1, p0, p2}, Lcom/meiqia/core/g$8;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/meiqia/core/g;->b(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/util/Map;Lcom/meiqia/core/g$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/meiqia/core/g$a;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/meiqia/core/g$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/meiqia/core/g$5;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$a;Ljava/util/Map;)V

    const-string v1, "https://eco-api.meiqia.com/scheduler"

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/meiqia/core/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/util/Map;Lcom/meiqia/core/g$e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/meiqia/core/g$e;",
            ")V"
        }
    .end annotation

    new-instance v4, Lcom/meiqia/core/g$26;

    invoke-direct {v4, p0, p2}, Lcom/meiqia/core/g$26;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$e;)V

    const-string v2, "https://eco-api.meiqia.com/sdk/init"

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/meiqia/core/g;->a(ZLjava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/util/Map;Lcom/meiqia/core/g$f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/meiqia/core/g$f;",
            ")V"
        }
    .end annotation

    new-instance v4, Lcom/meiqia/core/g$21;

    invoke-direct {v4, p0, p2}, Lcom/meiqia/core/g$21;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$f;)V

    const-string v2, "https://eco-api.meiqia.com/client/tickets_v2"

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/meiqia/core/g;->a(ZLjava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/util/Map;Lcom/meiqia/core/g$g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/meiqia/core/g$g;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/meiqia/core/g$20;

    invoke-direct {v0, p0, p2}, Lcom/meiqia/core/g$20;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$g;)V

    const-string v1, "https://eco-api.meiqia.com/client/tickets"

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/meiqia/core/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/meiqia/core/callback/OnGetMessageListCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://eco-api.meiqia.com/client/tickets_v2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/replies"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/meiqia/core/g$7;

    invoke-direct {v0, p0, p3}, Lcom/meiqia/core/g$7;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/meiqia/core/g;->b(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public b(Ljava/io/File;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V
    .locals 4

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://eco-api-upload.meiqia.com/upload?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/meiqia/core/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&ent_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    const-string v1, "audio/amr"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p1

    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v2, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v1, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    const-string v2, "file"

    const-string v3, "file.amr"

    invoke-virtual {v1, v2, v3, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance v0, Lcom/meiqia/core/g$2;

    invoke-direct {v0, p0, p2}, Lcom/meiqia/core/g$2;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$b;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/meiqia/core/g;->a(Lokhttp3/Request;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/meiqia/core/callback/OnGetClientCallback;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "dev_client_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/meiqia/core/g$10;

    invoke-direct {p1, p0, p2}, Lcom/meiqia/core/g$10;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnGetClientCallback;)V

    const-string v1, "https://eco-api.meiqia.com/sdk/get_dev_client_id"

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/meiqia/core/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/meiqia/core/g$14;

    invoke-direct {p1, p0, p2}, Lcom/meiqia/core/g$14;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V

    const-string v1, "https://eco-api.meiqia.com/sdk/refresh_push_info"

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/meiqia/core/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public b(Ljava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/meiqia/core/callback/OnClientInfoCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "setEvents"

    invoke-static {v0}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    new-instance v5, Lcom/meiqia/core/g$16;

    invoke-direct {v5, p0, p2}, Lcom/meiqia/core/g$16;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnClientInfoCallback;)V

    const-string v3, "https://eco-api.meiqia.com/client/client_events"

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/meiqia/core/g;->a(ZLjava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, Lcom/meiqia/core/g;->d:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    return-void
.end method
