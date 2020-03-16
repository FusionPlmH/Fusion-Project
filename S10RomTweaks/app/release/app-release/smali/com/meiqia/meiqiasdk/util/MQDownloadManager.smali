.class public Lcom/meiqia/meiqiasdk/util/MQDownloadManager;
.super Ljava/lang/Object;
.source "MQDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/meiqia/meiqiasdk/util/MQDownloadManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/meiqia/meiqiasdk/util/MQDownloadManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meiqia/meiqiasdk/util/MQDownloadManager;
    .locals 2

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager;->sInstance:Lcom/meiqia/meiqiasdk/util/MQDownloadManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/meiqia/meiqiasdk/util/MQDownloadManager;->sInstance:Lcom/meiqia/meiqiasdk/util/MQDownloadManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/meiqia/meiqiasdk/util/MQDownloadManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/util/MQDownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meiqia/meiqiasdk/util/MQDownloadManager;->sInstance:Lcom/meiqia/meiqiasdk/util/MQDownloadManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager;->sInstance:Lcom/meiqia/meiqiasdk/util/MQDownloadManager;

    return-object p0
.end method


# virtual methods
.method public downloadVoice(Ljava/lang/String;Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$1;-><init>(Lcom/meiqia/meiqiasdk/util/MQDownloadManager;Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;->onFailure()V

    :cond_2
    return-void
.end method
