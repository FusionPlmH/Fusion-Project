.class public Lcom/android/server/utils/salt/SaltReboot;
.super Ljava/lang/Object;
.source "SaltReboot.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/utils/salt/SaltReboot;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/salt/SaltReboot;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SystemShutdown(Landroid/content/Context;)V
    .locals 2

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/aPowerManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Landroid/os/aPowerManager;->shutdown(ZLjava/lang/String;Z)V

    return-void
.end method

.method private static hotReboot()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "setprop"

    const-string v2, "ctl.restart"

    const-string v3, "zygote"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static performRestartTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "bGVvLmFjdGlvbi5TeXN0ZW1VaQ=="

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p2}, Lcom/android/server/utils/salt/SaltReboot;->restartSystemUi(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p2, "bGVvLmFjdGlvbi5yZWJvb3RTeXN0ZW0="

    invoke-static {p2}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p0}, Lcom/android/server/utils/salt/SaltReboot;->rebootSystem(Landroid/content/Context;)V

    return-void

    :cond_2
    const-string p2, "bGVvLmFjdGlvbi5Eb3dubG9hZA=="

    invoke-static {p2}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/android/server/utils/salt/SaltReboot;->rebootDownload()V

    return-void

    :cond_3
    const-string p2, "bGVvLmFjdGlvbi5SZWNvdmVyeQ=="

    invoke-static {p2}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/android/server/utils/salt/SaltReboot;->rebootRecovery()V

    return-void

    :cond_4
    const-string p2, "bGVvLmFjdGlvbi5ob3RSZWJvb3Q="

    invoke-static {p2}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/android/server/utils/salt/SaltReboot;->hotReboot()V

    return-void

    :cond_5
    const-string p2, "bGVvLmFjdGlvbi5TeXN0ZW1TaHV0ZG93bg=="

    invoke-static {p2}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p0}, Lcom/android/server/utils/salt/SaltReboot;->SystemShutdown(Landroid/content/Context;)V

    :cond_6
    return-void
.end method

.method public static rebootDownload()V
    .locals 3

    :try_start_0
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    const-string v1, "download"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static rebootRecovery()V
    .locals 3

    :try_start_0
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    const-string v1, "recovery"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static rebootSystem(Landroid/content/Context;)V
    .locals 1

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method private static restartSystemUi(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AAActivityManager;

    invoke-static {}, Landroid/app/AAActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/AAActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AAActivityManager$RunningAppProcessInfo;

    iget-object v2, v1, Landroid/app/AAActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Landroid/app/AAActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget p1, v1, Landroid/app/AAActivityManager$RunningAppProcessInfo;->uid:I

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
