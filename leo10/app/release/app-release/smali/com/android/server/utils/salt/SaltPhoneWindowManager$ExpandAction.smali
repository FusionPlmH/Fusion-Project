.class final Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;
.super Ljava/lang/Object;
.source "SaltPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/salt/SaltPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExpandAction"
.end annotation


# static fields
.field private static mService:Lcom/android/internal/statusbar/IStatusBarService;

.field static final mServiceAquireLock:Ljava/lang/Object;

.field public static mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->mServiceAquireLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->expandNotificationsPanel()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->expandSettingsPanel()V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->clearAllNotifications()V

    return-void
.end method

.method private static clearAllNotifications()V
    .locals 0

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method private static expandNotificationsPanel()V
    .locals 1

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static expandSettingsPanel()V
    .locals 2

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static final getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    sget-object v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    sput-object v1, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    :cond_0
    sget-object v1, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    const-class v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    sput-object v1, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    sget-object v1, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static sPlitScreens()V
    .locals 1

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    return-void
.end method
