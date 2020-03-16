.class public Lcom/meiqia/core/MQManager;
.super Ljava/lang/Object;


# static fields
.field protected static a:Ljava/lang/String;

.field private static b:Lcom/meiqia/core/MQManager;

.field private static c:Lcom/meiqia/core/d;

.field private static d:Lcom/meiqia/core/a/i;

.field private static m:Z


# instance fields
.field private e:Lcom/meiqia/core/f;

.field private f:Landroid/os/Handler;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/meiqia/core/MQScheduleRule;

.field private k:Z

.field private l:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meiqia/core/MQManager;->g:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/meiqia/core/MQManager;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/meiqia/core/MQManager;->i:Ljava/lang/String;

    sget-object v0, Lcom/meiqia/core/MQScheduleRule;->REDIRECT_ENTERPRISE:Lcom/meiqia/core/MQScheduleRule;

    iput-object v0, p0, Lcom/meiqia/core/MQManager;->j:Lcom/meiqia/core/MQScheduleRule;

    new-instance v0, Lcom/meiqia/core/a/i;

    invoke-direct {v0, p1}, Lcom/meiqia/core/a/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meiqia/core/MQManager;->d:Lcom/meiqia/core/a/i;

    invoke-static {p1}, Lcom/meiqia/core/f;->a(Landroid/content/Context;)Lcom/meiqia/core/f;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/MQManager;->e:Lcom/meiqia/core/f;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meiqia/core/MQManager;->f:Landroid/os/Handler;

    new-instance v0, Lcom/meiqia/core/d;

    sget-object v1, Lcom/meiqia/core/MQManager;->d:Lcom/meiqia/core/a/i;

    iget-object v2, p0, Lcom/meiqia/core/MQManager;->e:Lcom/meiqia/core/f;

    iget-object v3, p0, Lcom/meiqia/core/MQManager;->f:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/meiqia/core/d;-><init>(Landroid/content/Context;Lcom/meiqia/core/a/i;Lcom/meiqia/core/f;Landroid/os/Handler;)V

    sput-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    iput-object p1, p0, Lcom/meiqia/core/MQManager;->l:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()Lcom/meiqia/core/d;
    .locals 1

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    return-object v0
.end method

.method static synthetic a(Lcom/meiqia/core/MQManager;)Lcom/meiqia/core/f;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/core/MQManager;->e:Lcom/meiqia/core/f;

    return-object p0
.end method

.method static synthetic a(Lcom/meiqia/core/MQManager;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnClientOnlineCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/MQManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/MQManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/meiqia/core/callback/OnClientOnlineCallback;)V
    .locals 7

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    iget-object v1, p0, Lcom/meiqia/core/MQManager;->e:Lcom/meiqia/core/f;

    iget-object v2, p0, Lcom/meiqia/core/MQManager;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/meiqia/core/MQManager;->i:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/meiqia/core/MQManager;->k:Z

    iget-object v5, p0, Lcom/meiqia/core/MQManager;->j:Lcom/meiqia/core/MQScheduleRule;

    new-instance v6, Lcom/meiqia/core/MQManager$9;

    invoke-direct {v6, p0, p1}, Lcom/meiqia/core/MQManager$9;-><init>(Lcom/meiqia/core/MQManager;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V

    invoke-virtual/range {v0 .. v6}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/f;Ljava/lang/String;Ljava/lang/String;ZLcom/meiqia/core/MQScheduleRule;Lcom/meiqia/core/g$a;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/meiqia/core/MQManager;->k:Z

    return-void
.end method

.method private a(Lcom/meiqia/core/callback/SuccessCallback;Lcom/meiqia/core/callback/OnFailureCallBack;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/meiqia/core/callback/SuccessCallback;

    invoke-direct {p1}, Lcom/meiqia/core/callback/SuccessCallback;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lcom/meiqia/core/b;

    invoke-direct {p2}, Lcom/meiqia/core/b;-><init>()V

    :cond_1
    sget-boolean v0, Lcom/meiqia/core/MQManager;->m:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/meiqia/core/callback/SuccessCallback;->onSuccess()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/meiqia/core/MQManager;->l:Landroid/content/Context;

    sget-object v1, Lcom/meiqia/core/MQManager;->a:Ljava/lang/String;

    new-instance v2, Lcom/meiqia/core/MQManager$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/meiqia/core/MQManager$3;-><init>(Lcom/meiqia/core/MQManager;Lcom/meiqia/core/callback/SuccessCallback;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    invoke-static {v0, v1, v2}, Lcom/meiqia/core/MQManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/core/callback/OnInitCallback;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/MQManager;->e:Lcom/meiqia/core/f;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/f;->a(Ljava/lang/String;)Lcom/meiqia/core/bean/MQClient;

    move-result-object p1

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQClient;)V

    invoke-virtual {p0}, Lcom/meiqia/core/MQManager;->closeMeiqiaService()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/MQScheduleRule;)V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/core/MQManager;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/MQManager;->i:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/meiqia/core/MQManager;->d:Lcom/meiqia/core/a/i;

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/meiqia/core/a/i;->a(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/meiqia/core/MQManager;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/meiqia/core/MQManager;->h:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/meiqia/core/MQManager;->j:Lcom/meiqia/core/MQScheduleRule;

    if-eq v0, p3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/meiqia/core/MQManager;->c()V

    :cond_6
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catch_0
    return v0
.end method

.method static synthetic a(Lcom/meiqia/core/MQManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/core/MQManager;->g:Z

    return p1
.end method

.method private a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/meiqia/core/b;

    invoke-direct {p1}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    sget-boolean v0, Lcom/meiqia/core/MQManager;->m:Z

    if-nez v0, :cond_1

    const/16 v0, 0x4e1b

    const-string v1, "meiqia sdk init failed"

    invoke-interface {p1, v0, v1}, Lcom/meiqia/core/callback/OnFailureCallBack;->onFailure(ILjava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)Z
    .locals 1

    if-nez p4, :cond_0

    new-instance p4, Lcom/meiqia/core/b;

    invoke-direct {p4}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    sget-boolean v0, Lcom/meiqia/core/MQManager;->m:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/meiqia/core/bean/MQMessage;

    invoke-direct {v0, p1}, Lcom/meiqia/core/bean/MQMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/meiqia/core/bean/MQMessage;->setContent(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/meiqia/core/bean/MQMessage;->setMedia_url(Ljava/lang/String;)V

    const-string p1, "client"

    invoke-virtual {v0, p1}, Lcom/meiqia/core/bean/MQMessage;->setFrom_type(Ljava/lang/String;)V

    const-string p1, "failed"

    invoke-virtual {v0, p1}, Lcom/meiqia/core/bean/MQMessage;->setStatus(Ljava/lang/String;)V

    const/16 p1, 0x4e1b

    const-string p2, "meiqia sdk init failed"

    invoke-interface {p4, v0, p1, p2}, Lcom/meiqia/core/callback/OnMessageSendCallback;->onFailure(Lcom/meiqia/core/bean/MQMessage;ILjava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b()Lcom/meiqia/core/a/i;
    .locals 1

    sget-object v0, Lcom/meiqia/core/MQManager;->d:Lcom/meiqia/core/a/i;

    return-object v0
.end method

.method static synthetic b(Lcom/meiqia/core/MQManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/core/MQManager;->c()V

    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/meiqia/core/MQManager;->m:Z

    return p0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/bean/MQAgent;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;
    .locals 2

    sget-object v0, Lcom/meiqia/core/MQManager;->b:Lcom/meiqia/core/MQManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/meiqia/core/MQManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/meiqia/core/MQManager;->b:Lcom/meiqia/core/MQManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/meiqia/core/MQManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/meiqia/core/MQManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meiqia/core/MQManager;->b:Lcom/meiqia/core/MQManager;

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
    sget-object p0, Lcom/meiqia/core/MQManager;->b:Lcom/meiqia/core/MQManager;

    return-object p0
.end method

.method public static getMeiqiaSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.5.9"

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/core/callback/OnInitCallback;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Lcom/meiqia/core/b;

    invoke-direct {p2}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    invoke-static {p0}, Lcom/meiqia/core/MQManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    sput-object v0, Lcom/meiqia/core/MQManager;->b:Lcom/meiqia/core/MQManager;

    :try_start_0
    const-string v0, "BuglySdkInfos"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "d298be5fd8"

    const-string v2, "3.5.9"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lcom/meiqia/core/MQManager;->d:Lcom/meiqia/core/a/i;

    invoke-virtual {v0}, Lcom/meiqia/core/a/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/meiqia/core/MQManager;->d:Lcom/meiqia/core/a/i;

    invoke-virtual {p1}, Lcom/meiqia/core/a/i;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/meiqia/core/MQManager;->d:Lcom/meiqia/core/a/i;

    invoke-virtual {v1, p1}, Lcom/meiqia/core/a/i;->a(Ljava/lang/String;)V

    :goto_0
    sput-object p1, Lcom/meiqia/core/MQManager;->a:Ljava/lang/String;

    sget-object p1, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/MQManager$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/meiqia/core/MQManager$1;-><init>(Landroid/content/Context;Lcom/meiqia/core/callback/OnInitCallback;Z)V

    invoke-virtual {p1, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/callback/OnInitCallback;)V

    return-void
.end method

.method public static setAppLifecycleListener(Landroid/app/Application;Lcom/meiqia/core/callback/AppLifecycleListener;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/meiqia/core/a;

    new-instance v1, Lcom/meiqia/core/MQManager$5;

    invoke-direct {v1, p1}, Lcom/meiqia/core/MQManager$5;-><init>(Lcom/meiqia/core/callback/AppLifecycleListener;)V

    invoke-direct {v0, p0, v1}, Lcom/meiqia/core/a;-><init>(Landroid/content/Context;Lcom/meiqia/core/callback/AppLifecycleListener;)V

    :cond_0
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/meiqia/core/MeiQiaService;->a:Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/meiqia/core/bean/MQAgent;)V
    .locals 1

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQAgent;)V

    return-void
.end method

.method protected a(Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/meiqia/core/b;

    invoke-direct {p1}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/MQManager$2;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/core/MQManager$2;-><init>(Lcom/meiqia/core/MQManager;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method

.method a(Z)V
    .locals 1

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/d;->a(Z)V

    return-void
.end method

.method public cancelDownload(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public closeMeiqiaService()V
    .locals 0

    invoke-virtual {p0}, Lcom/meiqia/core/MQManager;->setClientOffline()V

    return-void
.end method

.method public createMQClient(Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/meiqia/core/b;

    invoke-direct {p1}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;)V

    return-void
.end method

.method public deleteAllMessage()V
    .locals 1

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0}, Lcom/meiqia/core/d;->b()V

    return-void
.end method

.method public deleteMessage(J)V
    .locals 1

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1, p2}, Lcom/meiqia/core/d;->a(J)V

    return-void
.end method

.method public downloadFile(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnProgressCallback;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcom/meiqia/core/b;

    invoke-direct {p2}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1, p2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnProgressCallback;)V

    return-void
.end method

.method public endCurrentConversation(Lcom/meiqia/core/callback/OnEndConversationCallback;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/meiqia/core/b;

    invoke-direct {p1}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/callback/OnEndConversationCallback;)V

    return-void
.end method

.method public evaluateRobotAnswer(JJILcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;)V
    .locals 7

    if-nez p6, :cond_0

    new-instance p6, Lcom/meiqia/core/b;

    invoke-direct {p6}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    move-object v6, p6

    invoke-direct {p0, v6}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result p6

    if-nez p6, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/meiqia/core/d;->a(JJILcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;)V

    return-void
.end method

.method public executeEvaluate(Ljava/lang/String;ILjava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 1

    if-nez p4, :cond_0

    new-instance p4, Lcom/meiqia/core/b;

    invoke-direct {p4}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    invoke-direct {p0, p4}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/meiqia/core/d;->a(Ljava/lang/String;ILjava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method

.method public getClientPositionInQueue(Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/meiqia/core/b;

    invoke-direct {p1}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/MQManager$4;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/core/MQManager$4;-><init>(Lcom/meiqia/core/MQManager;Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/g$d;)V

    return-void
.end method

.method public getCurrentAgent()Lcom/meiqia/core/bean/MQAgent;
    .locals 1

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0}, Lcom/meiqia/core/d;->e()Lcom/meiqia/core/bean/MQAgent;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentClientId()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/meiqia/core/MQManager;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0}, Lcom/meiqia/core/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnterpriseConfig()Lcom/meiqia/core/bean/MQEnterpriseConfig;
    .locals 1

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0}, Lcom/meiqia/core/d;->h()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    return-object v0
.end method

.method public getIsWaitingInQueue()Z
    .locals 1

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0}, Lcom/meiqia/core/d;->f()Z

    move-result v0

    return v0
.end method

.method public getMQInquireForm()Lcom/meiqia/core/bean/MQInquireForm;
    .locals 1

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0}, Lcom/meiqia/core/d;->i()Lcom/meiqia/core/bean/MQInquireForm;

    move-result-object v0

    return-object v0
.end method

.method public getMQMessageFromDatabase(JILcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 2

    if-nez p4, :cond_0

    new-instance p4, Lcom/meiqia/core/b;

    invoke-direct {p4}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    invoke-direct {p0, p4}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/meiqia/core/MQManager;->e:Lcom/meiqia/core/f;

    new-instance v1, Lcom/meiqia/core/MQManager$11;

    invoke-direct {v1, p0, p4}, Lcom/meiqia/core/MQManager$11;-><init>(Lcom/meiqia/core/MQManager;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/meiqia/core/f;->a(JILcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method

.method public getMQMessageFromService(JILcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 7

    if-nez p4, :cond_0

    new-instance p4, Lcom/meiqia/core/b;

    invoke-direct {p4}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    move-object v6, p4

    invoke-direct {p0, v6}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result p4

    if-nez p4, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    const/4 v2, 0x0

    const/4 v5, 0x2

    move v1, p3

    move-wide v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/meiqia/core/d;->a(IIJILcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method

.method public getTicketCategories(Lcom/meiqia/core/callback/OnTicketCategoriesCallback;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/meiqia/core/b;

    invoke-direct {p1}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/callback/OnTicketCategoriesCallback;)V

    return-void
.end method

.method public getUnreadMessages(Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/meiqia/core/MQManager;->getUnreadMessages(Ljava/lang/String;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method

.method public getUnreadMessages(Ljava/lang/String;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcom/meiqia/core/b;

    invoke-direct {p2}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1, p2}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method

.method public isSocketConnect()Z
    .locals 1

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0}, Lcom/meiqia/core/d;->g()Z

    move-result v0

    return v0
.end method

.method public onConversationClose()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/meiqia/core/MeiQiaService;->c:Z

    iget-object v0, p0, Lcom/meiqia/core/MQManager;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/a/e;->a(Landroid/content/Context;)Lcom/meiqia/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/a/e;->b()V

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meiqia/core/d;->j()V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/MQManager;->l:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "ACTION_MQ_CONVERSATION_CLOSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onConversationOpen()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/meiqia/core/MeiQiaService;->c:Z

    iget-object v0, p0, Lcom/meiqia/core/MQManager;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/a/e;->a(Landroid/content/Context;)Lcom/meiqia/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/a/e;->c()V

    iget-object v0, p0, Lcom/meiqia/core/MQManager;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/a/e;->a(Landroid/content/Context;)Lcom/meiqia/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/a/e;->a()V

    return-void
.end method

.method public openMeiqiaService()V
    .locals 2

    sget-boolean v0, Lcom/meiqia/core/MQManager;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    iget-object v1, p0, Lcom/meiqia/core/MQManager;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public refreshDeviceToken(Ljava/lang/String;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcom/meiqia/core/b;

    invoke-direct {p2}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1, p2}, Lcom/meiqia/core/d;->b(Ljava/lang/String;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V

    return-void
.end method

.method public refreshEnterpriseConfig(Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/meiqia/core/b;

    invoke-direct {p1}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method

.method public registerDeviceToken(Ljava/lang/String;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcom/meiqia/core/b;

    invoke-direct {p2}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1, p2}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V

    return-void
.end method

.method public saveConversationLastMessageTime(J)V
    .locals 2

    sget-object v0, Lcom/meiqia/core/MQManager;->d:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1, p1, p2}, Lcom/meiqia/core/a/i;->f(Lcom/meiqia/core/bean/MQClient;J)V

    return-void
.end method

.method public saveConversationOnStopTime(J)V
    .locals 2

    sget-object v0, Lcom/meiqia/core/MQManager;->d:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1, p1, p2}, Lcom/meiqia/core/a/i;->e(Lcom/meiqia/core/bean/MQClient;J)V

    return-void
.end method

.method public sendClientInputtingWithContent(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/meiqia/core/MQManager;->m:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/meiqia/core/MQManager;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meiqia/core/MQManager;->g:Z

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/d;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/core/MQManager;->f:Landroid/os/Handler;

    new-instance v0, Lcom/meiqia/core/MQManager$12;

    invoke-direct {v0, p0}, Lcom/meiqia/core/MQManager$12;-><init>(Lcom/meiqia/core/MQManager;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public sendMQPhotoMessage(Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Lcom/meiqia/core/b;

    invoke-direct {p2}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    const-string v0, ""

    const-string v1, "photo"

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/meiqia/core/MQManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    return-void
.end method

.method public sendMQTextMessage(Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Lcom/meiqia/core/b;

    invoke-direct {p2}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    const-string v0, "text"

    const-string v1, ""

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meiqia/core/MQManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, p2}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    return-void
.end method

.method public sendMQVoiceMessage(Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Lcom/meiqia/core/b;

    invoke-direct {p2}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    const-string v0, ""

    const-string v1, "audio"

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/meiqia/core/MQManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    return-void
.end method

.method public setClientEvent(Lcom/meiqia/core/bean/MQClientEvent;Lcom/meiqia/core/callback/OnClientInfoCallback;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcom/meiqia/core/b;

    invoke-direct {p2}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQClientEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQClientEvent;->getEvent()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1, p2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQClientEvent;Lcom/meiqia/core/callback/OnClientInfoCallback;)V

    return-void

    :cond_3
    :goto_0
    const/16 p1, 0x4e21

    const-string v0, "event is null or metadata length is 0"

    invoke-interface {p2, p1, v0}, Lcom/meiqia/core/callback/OnClientInfoCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public setClientInfo(Ljava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/OnClientInfoCallback;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Lcom/meiqia/core/b;

    invoke-direct {p2}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1, p2}, Lcom/meiqia/core/d;->a(Ljava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V

    return-void
.end method

.method public setClientOffline()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/meiqia/core/MeiQiaService;->b:Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meiqia/core/MQManager;->l:Landroid/content/Context;

    const-class v2, Lcom/meiqia/core/MeiQiaService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_CLOSE_SOCKET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/meiqia/core/MQManager;->l:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/meiqia/core/MQManager;->l:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public setClientOnlineWithClientId(Ljava/lang/String;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcom/meiqia/core/b;

    invoke-direct {p2}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    new-instance v0, Lcom/meiqia/core/MQManager$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/meiqia/core/MQManager$8;-><init>(Lcom/meiqia/core/MQManager;Ljava/lang/String;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V

    invoke-direct {p0, v0, p2}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/SuccessCallback;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public setClientOnlineWithCustomizedId(Ljava/lang/String;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcom/meiqia/core/b;

    invoke-direct {p2}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    new-instance v0, Lcom/meiqia/core/MQManager$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/meiqia/core/MQManager$7;-><init>(Lcom/meiqia/core/MQManager;Ljava/lang/String;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V

    invoke-direct {p0, v0, p2}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/SuccessCallback;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public setCurrentClient(Ljava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lcom/meiqia/core/b;

    invoke-direct {p2}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x4e21

    const-string v0, "parameter error"

    invoke-interface {p2, p1, v0}, Lcom/meiqia/core/callback/SimpleCallback;->onFailure(ILjava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/meiqia/core/MQManager;->e:Lcom/meiqia/core/f;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/f;->a(Ljava/lang/String;)Lcom/meiqia/core/bean/MQClient;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/meiqia/core/MQManager;->e:Lcom/meiqia/core/f;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/f;->b(Ljava/lang/String;)Lcom/meiqia/core/bean/MQClient;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/MQManager$10;

    invoke-direct {v1, p0, p2}, Lcom/meiqia/core/MQManager$10;-><init>(Lcom/meiqia/core/MQManager;Lcom/meiqia/core/callback/SimpleCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Lcom/meiqia/core/callback/OnInitCallback;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-direct {p0, p1}, Lcom/meiqia/core/MQManager;->a(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/meiqia/core/callback/SimpleCallback;->onSuccess()V

    :goto_0
    return-void
.end method

.method public setCurrentClientOnline(Lcom/meiqia/core/callback/OnClientOnlineCallback;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/meiqia/core/b;

    invoke-direct {p1}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    new-instance v0, Lcom/meiqia/core/MQManager$6;

    invoke-direct {v0, p0, p1}, Lcom/meiqia/core/MQManager$6;-><init>(Lcom/meiqia/core/MQManager;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V

    invoke-direct {p0, v0, p1}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/SuccessCallback;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    return-void
.end method

.method public setForceRedirectHuman(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/core/MQManager;->k:Z

    return-void
.end method

.method public setPhotoCompressd(Z)V
    .locals 1

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/d;->b(Z)V

    return-void
.end method

.method public setScheduledAgentOrGroupWithId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/MQManager;->j:Lcom/meiqia/core/MQScheduleRule;

    invoke-virtual {p0, p1, p2, v0}, Lcom/meiqia/core/MQManager;->setScheduledAgentOrGroupWithId(Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/MQScheduleRule;)V

    return-void
.end method

.method public setScheduledAgentOrGroupWithId(Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/MQScheduleRule;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/core/MQManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/MQScheduleRule;)V

    iput-object p1, p0, Lcom/meiqia/core/MQManager;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/meiqia/core/MQManager;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/meiqia/core/MQManager;->j:Lcom/meiqia/core/MQScheduleRule;

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/MQScheduleRule;)V

    return-void
.end method

.method public submitInquireForm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 1
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

    invoke-direct {p0, p4}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x4e21

    const-string p2, "clientIdOrCustomizedId is null"

    invoke-interface {p4, p1, p2}, Lcom/meiqia/core/callback/SimpleCallback;->onFailure(ILjava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method

.method public submitMessageForm(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/SimpleCallback;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    new-instance p4, Lcom/meiqia/core/b;

    invoke-direct {p4}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    invoke-direct {p0, p4}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method

.method public submitTickets(Lcom/meiqia/core/bean/MQMessage;Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meiqia/core/bean/MQMessage;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/OnMessageSendCallback;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    new-instance p4, Lcom/meiqia/core/b;

    invoke-direct {p4}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQMessage;JLjava/util/Map;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p2, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {p2, p1, p3, p4}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQMessage;Ljava/util/Map;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    :goto_0
    return-void
.end method

.method public updateClientInfo(Ljava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/OnClientInfoCallback;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Lcom/meiqia/core/b;

    invoke-direct {p2}, Lcom/meiqia/core/b;-><init>()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnFailureCallBack;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/16 p1, 0x4e21

    const-string v0, "parameter error"

    invoke-interface {p2, p1, v0}, Lcom/meiqia/core/callback/OnClientInfoCallback;->onFailure(ILjava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/meiqia/core/d;->a(ZLjava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V

    return-void
.end method

.method public updateMessage(JZ)V
    .locals 1

    sget-object v0, Lcom/meiqia/core/MQManager;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meiqia/core/d;->a(JZ)V

    return-void
.end method
