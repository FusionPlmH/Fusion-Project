.class public final Lcom/meiqia/meiqiasdk/util/MQConfig;
.super Ljava/lang/Object;
.source "MQConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/util/MQConfig$ui;
    }
.end annotation


# static fields
.field public static final DEFAULT:I = -0x1

.field public static isEvaluateSwitchOpen:Z = true

.field public static isLoadMessagesFromNativeOpen:Z = false

.field public static isShowClientAvatar:Z = false

.field public static isSoundSwitchOpen:Z = true

.field public static isVoiceSwitchOpen:Z = true

.field private static sActivityLifecycleCallback:Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;

.field private static sController:Lcom/meiqia/meiqiasdk/controller/MQController;

.field private static sOnLinkClickCallback:Lcom/meiqia/meiqiasdk/callback/OnLinkClickCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityLifecycleCallback()Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;
    .locals 1

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQConfig;->sActivityLifecycleCallback:Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/meiqia/meiqiasdk/callback/MQSimpleActivityLifecyleCallback;

    invoke-direct {v0}, Lcom/meiqia/meiqiasdk/callback/MQSimpleActivityLifecyleCallback;-><init>()V

    sput-object v0, Lcom/meiqia/meiqiasdk/util/MQConfig;->sActivityLifecycleCallback:Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;

    :cond_0
    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQConfig;->sActivityLifecycleCallback:Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;

    return-object v0
.end method

.method public static getController(Landroid/content/Context;)Lcom/meiqia/meiqiasdk/controller/MQController;
    .locals 2

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQConfig;->sController:Lcom/meiqia/meiqiasdk/controller/MQController;

    if-nez v0, :cond_1

    const-class v0, Lcom/meiqia/meiqiasdk/util/MQConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/meiqia/meiqiasdk/util/MQConfig;->sController:Lcom/meiqia/meiqiasdk/controller/MQController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/controller/ControllerImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meiqia/meiqiasdk/util/MQConfig;->sController:Lcom/meiqia/meiqiasdk/controller/MQController;

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
    sget-object p0, Lcom/meiqia/meiqiasdk/util/MQConfig;->sController:Lcom/meiqia/meiqiasdk/controller/MQController;

    return-object p0
.end method

.method public static getOnLinkClickCallback()Lcom/meiqia/meiqiasdk/callback/OnLinkClickCallback;
    .locals 1

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQConfig;->sOnLinkClickCallback:Lcom/meiqia/meiqiasdk/callback/OnLinkClickCallback;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/core/callback/OnInitCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/meiqia/core/MQManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/core/callback/OnInitCallback;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader;Lcom/meiqia/core/callback/OnInitCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p3}, Lcom/meiqia/core/MQManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/core/callback/OnInitCallback;)V

    return-void
.end method

.method public static registerController(Lcom/meiqia/meiqiasdk/controller/MQController;)V
    .locals 0

    sput-object p0, Lcom/meiqia/meiqiasdk/util/MQConfig;->sController:Lcom/meiqia/meiqiasdk/controller/MQController;

    return-void
.end method

.method public static setActivityLifecycleCallback(Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;)V
    .locals 0

    sput-object p0, Lcom/meiqia/meiqiasdk/util/MQConfig;->sActivityLifecycleCallback:Lcom/meiqia/meiqiasdk/callback/MQActivityLifecycleCallback;

    return-void
.end method

.method public static setOnLinkClickCallback(Lcom/meiqia/meiqiasdk/callback/OnLinkClickCallback;)V
    .locals 0

    sput-object p0, Lcom/meiqia/meiqiasdk/util/MQConfig;->sOnLinkClickCallback:Lcom/meiqia/meiqiasdk/callback/OnLinkClickCallback;

    return-void
.end method
