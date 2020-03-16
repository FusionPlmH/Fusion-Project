.class public Lcom/meiqia/core/MeiQiaService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/core/MeiQiaService$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:Z = false

.field public static c:Z = false

.field protected static d:Z = false


# instance fields
.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:I

.field private g:Lcom/meiqia/core/a/i;

.field private h:Lcom/meiqia/core/MeiQiaService$a;

.field private i:Lcom/meiqia/core/c;

.field private j:Landroid/os/Handler;

.field private k:Lokhttp3/OkHttpClient;

.field private l:Lokhttp3/WebSocket;

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/meiqia/core/MeiQiaService;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, Lcom/meiqia/core/MeiQiaService;->f:I

    iput-boolean v1, p0, Lcom/meiqia/core/MeiQiaService;->m:Z

    iput-boolean v1, p0, Lcom/meiqia/core/MeiQiaService;->n:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/meiqia/core/MeiQiaService;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/MeiQiaService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/core/MeiQiaService;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a()V
    .locals 5

    new-instance v0, Lcom/meiqia/core/MeiQiaService$2;

    invoke-direct {v0, p0}, Lcom/meiqia/core/MeiQiaService$2;-><init>(Lcom/meiqia/core/MeiQiaService;)V

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

    new-instance v1, Lcom/meiqia/core/MeiQiaService$3;

    invoke-direct {v1, p0}, Lcom/meiqia/core/MeiQiaService$3;-><init>(Lcom/meiqia/core/MeiQiaService;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/MeiQiaService;->k:Lokhttp3/OkHttpClient;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/MeiQiaService;Lcom/meiqia/core/bean/MQAgent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/MeiQiaService;->a(Lcom/meiqia/core/bean/MQAgent;)V

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/MeiQiaService;Lcom/meiqia/core/bean/MQMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/MeiQiaService;->a(Lcom/meiqia/core/bean/MQMessage;)V

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/MeiQiaService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/MeiQiaService;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/MeiQiaService;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/MeiQiaService;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lcom/meiqia/core/bean/MQAgent;)V
    .locals 3

    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/bean/MQAgent;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "agent_change_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "client_is_redirected"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/meiqia/core/a/k;->a(Landroid/content/Context;Landroid/content/Intent;)V

    sget-boolean v0, Lcom/meiqia/core/MeiQiaService;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action directAgent : agentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQAgent;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/meiqia/core/bean/MQMessage;)V
    .locals 2

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/bean/MQAgent;)V

    :cond_0
    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/meiqia/core/bean/MQMessage;->setIs_read(Z)V

    invoke-direct {p0, p1}, Lcom/meiqia/core/MeiQiaService;->b(Lcom/meiqia/core/bean/MQMessage;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService;->i:Lcom/meiqia/core/c;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/c;->a(Lcom/meiqia/core/bean/MQMessage;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/bean/MQAgent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/meiqia/core/a/k;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/meiqia/core/a/c;->a(Lorg/json/JSONObject;)Lcom/meiqia/core/bean/MQMessage;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQMessage;J)V

    invoke-direct {p0, p1}, Lcom/meiqia/core/MeiQiaService;->a(Lcom/meiqia/core/bean/MQMessage;)V

    iget-object p1, p0, Lcom/meiqia/core/MeiQiaService;->g:Lcom/meiqia/core/a/i;

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/meiqia/core/a/i;->c(Lcom/meiqia/core/bean/MQClient;J)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/MeiQiaService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/core/MeiQiaService;->m:Z

    return p1
.end method

.method private b()V
    .locals 9

    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService;->l:Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/meiqia/core/MeiQiaService;->d:Z

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/meiqia/core/MeiQiaService;->m:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService;->k:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/MeiQiaService;->k:Lokhttp3/OkHttpClient;

    :cond_1
    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/MeiQiaService;->o:Ljava/lang/String;

    const-string v0, "socket init"

    invoke-static {v0}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meiqia/core/MeiQiaService;->m:Z

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1, v0}, Lcom/meiqia/core/bean/MQClient;->setBrowserId(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/meiqia/core/f;->a(Landroid/content/Context;)Lcom/meiqia/core/f;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/f;->a(Lcom/meiqia/core/bean/MQClient;)V

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getBrowserId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v3}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v4}, Lcom/meiqia/core/bean/MQClient;->getVisitId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v5}, Lcom/meiqia/core/bean/MQClient;->getVisitPageId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "?browser_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&ent_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&visit_id="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&visit_page_id="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&track_id="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&time="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "socket: t = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " b = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " v = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mozilla/5.0 (Linux; Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") MeiqiaSDK/ Source/SDK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/meiqia/core/MQManager;->getMeiqiaSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Language/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^\\x00-\\x7F]"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v3, "User-Agent"

    invoke-virtual {v1, v3, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wss://eco-push-api-client.meiqia.com/pusher/websocket"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/meiqia/core/MeiQiaService;->k:Lokhttp3/OkHttpClient;

    new-instance v2, Lcom/meiqia/core/MeiQiaService$4;

    invoke-direct {v2, p0}, Lcom/meiqia/core/MeiQiaService$4;-><init>(Lcom/meiqia/core/MeiQiaService;)V

    invoke-virtual {v1, v0, v2}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/MeiQiaService;->l:Lokhttp3/WebSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meiqia/core/MeiQiaService;->d:Z

    iput-boolean v0, p0, Lcom/meiqia/core/MeiQiaService;->m:Z

    const-string v0, "socket AssertionError"

    invoke-static {v0}, Lcom/meiqia/core/a/f;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/meiqia/core/MeiQiaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->b()V

    return-void
.end method

.method static synthetic b(Lcom/meiqia/core/MeiQiaService;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/MeiQiaService;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(Lcom/meiqia/core/bean/MQMessage;)V
    .locals 5

    invoke-virtual {p0}, Lcom/meiqia/core/MeiQiaService;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getMedia_url()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/meiqia/core/a/k;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/meiqia/core/g;->a()Lcom/meiqia/core/g;

    move-result-object v3

    new-instance v4, Lcom/meiqia/core/MeiQiaService$5;

    invoke-direct {v4, p0, p1}, Lcom/meiqia/core/MeiQiaService$5;-><init>(Lcom/meiqia/core/MeiQiaService;Lcom/meiqia/core/bean/MQMessage;)V

    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/meiqia/core/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/meiqia/core/MeiQiaService;->a(Lcom/meiqia/core/bean/MQMessage;)V

    :goto_0
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "target_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "invite_evaluation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/meiqia/core/a/k;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/meiqia/core/MeiQiaService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/core/MeiQiaService;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/meiqia/core/MeiQiaService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/core/MeiQiaService;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService;->l:Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/meiqia/core/MeiQiaService;->d:Z

    const/16 v1, 0x3e8

    const-string v2, "manual"

    invoke-interface {v0, v1, v2}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/meiqia/core/MeiQiaService;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/MeiQiaService;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/meiqia/core/a/c;->b(Lorg/json/JSONObject;)Lcom/meiqia/core/bean/MQAgent;

    move-result-object p1

    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/MQManager;->getCurrentAgent()Lcom/meiqia/core/bean/MQAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQAgent;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/core/bean/MQAgent;->setNickname(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/bean/MQAgent;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "action_agent_status_update_event"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/meiqia/core/a/k;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    sget-boolean v0, Lcom/meiqia/core/MeiQiaService;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/meiqia/core/MeiQiaService;->b:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/meiqia/core/a/k;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService;->j:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->h()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/meiqia/core/MeiQiaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->m()V

    return-void
.end method

.method static synthetic d(Lcom/meiqia/core/MeiQiaService;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/MeiQiaService;->d(Lorg/json/JSONObject;)V

    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "track_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService;->o:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/bean/MQAgent;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "action_black_add"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/meiqia/core/a/k;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/meiqia/core/MeiQiaService;)J
    .locals 2

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meiqia/core/MeiQiaService;->p:Z

    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/bean/MQAgent;)V

    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meiqia/core/MQManager;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_queueing_remove"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/meiqia/core/a/k;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic e(Lcom/meiqia/core/MeiQiaService;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/MeiQiaService;->e(Lorg/json/JSONObject;)V

    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "track_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService;->o:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "action_black_del"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/meiqia/core/a/k;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/meiqia/core/MeiQiaService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/core/MeiQiaService;->j:Landroid/os/Handler;

    return-object p0
.end method

.method private f()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/meiqia/core/MeiQiaService;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/MeiQiaService;->f(Lorg/json/JSONObject;)V

    return-void
.end method

.method private f(Lorg/json/JSONObject;)V
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/core/MeiQiaService;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "agent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/meiqia/core/a/c;->b(Lorg/json/JSONObject;)Lcom/meiqia/core/bean/MQAgent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/meiqia/core/bean/MQAgent;->setIsOnline(Z)V

    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/bean/MQAgent;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "action_queueing_init_conv"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/meiqia/core/a/k;->a(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/meiqia/core/MeiQiaService;->p:Z

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    const-string v0, "service synMessages"

    invoke-static {v0}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    new-instance v1, Lcom/meiqia/core/MeiQiaService$6;

    invoke-direct {v1, p0}, Lcom/meiqia/core/MeiQiaService$6;-><init>(Lcom/meiqia/core/MeiQiaService;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method

.method static synthetic g(Lcom/meiqia/core/MeiQiaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->g()V

    return-void
.end method

.method private h()V
    .locals 4

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService;->j:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->k()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/meiqia/core/MeiQiaService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/meiqia/core/MeiQiaService;->n:Z

    return p0
.end method

.method static synthetic i(Lcom/meiqia/core/MeiQiaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->j()V

    return-void
.end method

.method private i()Z
    .locals 5

    sget-boolean v0, Lcom/meiqia/core/MeiQiaService;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/meiqia/core/MeiQiaService;->b:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/meiqia/core/a/k;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x32

    iget v2, p0, Lcom/meiqia/core/MeiQiaService;->f:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    sget-boolean v0, Lcom/meiqia/core/MeiQiaService;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic j(Lcom/meiqia/core/MeiQiaService;)Lokhttp3/WebSocket;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/core/MeiQiaService;->l:Lokhttp3/WebSocket;

    return-object p0
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/meiqia/core/MeiQiaService;->f:I

    iget-object v1, p0, Lcom/meiqia/core/MeiQiaService;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService;->j:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private k()J
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0xbb8

    if-ge v0, v1, :cond_0

    const/16 v0, 0xbb8

    :cond_0
    iget v1, p0, Lcom/meiqia/core/MeiQiaService;->f:I

    mul-int/lit16 v1, v1, 0x1f4

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method static synthetic k(Lcom/meiqia/core/MeiQiaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->e()V

    return-void
.end method

.method private l()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/meiqia/core/MeiQiaService;->f:I

    return-void
.end method

.method static synthetic l(Lcom/meiqia/core/MeiQiaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->d()V

    return-void
.end method

.method private m()V
    .locals 6

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService;->g:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->b(Lcom/meiqia/core/bean/MQClient;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/meiqia/core/a/j;->a(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "socket_error"

    const-string v5, "true"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "limit"

    const-string v5, "100"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v4}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ent_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "last_message_created_on"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ascending"

    const-string v4, "1"

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "_time"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/meiqia/core/g;->a()Lcom/meiqia/core/g;

    move-result-object v2

    new-instance v4, Lcom/meiqia/core/MeiQiaService$7;

    invoke-direct {v4, p0, v0, v1}, Lcom/meiqia/core/MeiQiaService$7;-><init>(Lcom/meiqia/core/MeiQiaService;J)V

    invoke-virtual {v2, v3, v4}, Lcom/meiqia/core/g;->a(Ljava/util/Map;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    iget v0, p0, Lcom/meiqia/core/MeiQiaService;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meiqia/core/MeiQiaService;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pollMessages retryCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meiqia/core/MeiQiaService;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/meiqia/core/MeiQiaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->a()V

    return-void
.end method

.method static synthetic n(Lcom/meiqia/core/MeiQiaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->l()V

    return-void
.end method

.method static synthetic o(Lcom/meiqia/core/MeiQiaService;)Lcom/meiqia/core/c;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/core/MeiQiaService;->i:Lcom/meiqia/core/c;

    return-object p0
.end method

.method static synthetic p(Lcom/meiqia/core/MeiQiaService;)Lcom/meiqia/core/a/i;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/core/MeiQiaService;->g:Lcom/meiqia/core/a/i;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meiqia/core/MeiQiaService;->j:Landroid/os/Handler;

    new-instance v0, Lcom/meiqia/core/MeiQiaService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meiqia/core/MeiQiaService$a;-><init>(Lcom/meiqia/core/MeiQiaService;Lcom/meiqia/core/MeiQiaService$1;)V

    iput-object v0, p0, Lcom/meiqia/core/MeiQiaService;->h:Lcom/meiqia/core/MeiQiaService$a;

    new-instance v0, Lcom/meiqia/core/a/i;

    invoke-direct {v0, p0}, Lcom/meiqia/core/a/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meiqia/core/MeiQiaService;->g:Lcom/meiqia/core/a/i;

    invoke-static {p0}, Lcom/meiqia/core/c;->a(Landroid/content/Context;)Lcom/meiqia/core/c;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/MeiQiaService;->i:Lcom/meiqia/core/c;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ACTION_MQ_CONVERSATION_CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/meiqia/core/MeiQiaService;->h:Lcom/meiqia/core/MeiQiaService$a;

    invoke-virtual {p0, v1, v0}, Lcom/meiqia/core/MeiQiaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/meiqia/core/MeiQiaService$1;

    invoke-direct {v1, p0}, Lcom/meiqia/core/MeiQiaService$1;-><init>(Lcom/meiqia/core/MeiQiaService;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/meiqia/core/MeiQiaService;->j:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService;->h:Lcom/meiqia/core/MeiQiaService$a;

    invoke-virtual {p0, v0}, Lcom/meiqia/core/MeiQiaService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_0
    const-string v0, "ACTION_OPEN_SOCKET"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/meiqia/core/MeiQiaService;->b:Z

    iget-object v1, p0, Lcom/meiqia/core/MeiQiaService;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meiqia/core/MeiQiaService;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->c()V

    :cond_2
    if-eqz p1, :cond_3

    const-string v1, "KEY_BOOLEAN_SYNC_MSG"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/meiqia/core/MeiQiaService;->n:Z

    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->b()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/meiqia/core/MeiQiaService;->c()V

    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
