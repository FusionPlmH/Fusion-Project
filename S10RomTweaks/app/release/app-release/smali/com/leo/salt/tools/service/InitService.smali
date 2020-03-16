.class public final Lcom/leo/salt/tools/service/InitService;
.super Landroid/app/IntentService;
.source "InitService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tools/service/InitService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInitService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitService.kt\ncom/leo/salt/tools/service/InitService\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,98:1\n45#2:99\n17#2,22:100\n*E\n*S KotlinDebug\n*F\n+ 1 InitService.kt\ncom/leo/salt/tools/service/InitService\n*L\n69#1:99\n69#1,22:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/leo/salt/tools/service/InitService;",
        "Landroid/app/IntentService;",
        "()V",
        "getProcessName",
        "",
        "pid",
        "",
        "onHandleIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final ACTION_INIT:Ljava/lang/String; = "com.leo.action.Service"

.field public static final Companion:Lcom/leo/salt/tools/service/InitService$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/leo/salt/tools/service/InitService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/leo/salt/tools/service/InitService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/leo/salt/tools/service/InitService;->Companion:Lcom/leo/salt/tools/service/InitService$Companion;

    const-string v0, "com.leo.action.Service"

    sput-object v0, Lcom/leo/salt/tools/service/InitService;->ACTION_INIT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "InitIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getACTION_INIT$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/tools/service/InitService;->ACTION_INIT:Ljava/lang/String;

    return-object v0
.end method

.method private final getProcessName(I)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/BufferedReader;

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/cmdline"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/io/Reader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "processName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const/4 v4, 0x0

    move v5, v1

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    if-gt v1, v5, :cond_5

    if-nez v6, :cond_0

    move v7, v1

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-gt v7, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-nez v6, :cond_3

    if-nez v7, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v5, v3

    invoke-interface {p1, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-object p1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_5

    :catchall_1
    move-exception p1

    :goto_5
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_7

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_6
    return-object v0

    :catchall_2
    move-exception p1

    if-eqz v1, :cond_8

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_7
    throw p1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_2

    sget-object v0, Lcom/leo/salt/tools/service/InitService;->ACTION_INIT:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/leo/salt/tools/service/InitService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/leo/salt/tools/service/InitService;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    invoke-direct {v2, p1}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setUploadProcess(Z)Lcom/tencent/bugly/BuglyStrategy;

    const-wide/16 v0, 0x4e20

    invoke-virtual {v2, v0, v1}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setAppReportDelay(J)Lcom/tencent/bugly/BuglyStrategy;

    invoke-static {p1, v3}, Lcom/tencent/bugly/crashreport/CrashReport;->setIsDevelopmentDevice(Landroid/content/Context;Z)V

    const-string v0, "18e8cfe5f2"

    invoke-static {p1, v0, v3, v2}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V

    const-string p1, "ril.serialnumber"

    invoke-static {p1}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->createSDCardDupdateirimg()V

    invoke-static {v4}, Lcom/meiqia/core/MQManager;->setDebugMode(Z)V

    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    new-instance v0, Lcom/leo/salt/tools/service/InitService$onHandleIntent$1;

    invoke-direct {v0}, Lcom/leo/salt/tools/service/InitService$onHandleIntent$1;-><init>()V

    check-cast v0, Lcom/meiqia/core/callback/OnInitCallback;

    const-string v1, "f93359a4cc9a09610f24a1d036132df9"

    invoke-static {p1, v1, v0}, Lcom/meiqia/meiqiasdk/util/MQConfig;->init(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/core/callback/OnInitCallback;)V

    sput-boolean v4, Lcom/meiqia/meiqiasdk/util/MQConfig;->isLoadMessagesFromNativeOpen:Z

    const p1, 0x7f060031

    sput p1, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->titleBackgroundResId:I

    :cond_2
    return-void
.end method
