.class public Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;
.super Ljava/lang/Object;
.source "SaltPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/salt/SaltPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaltPhoneWindowAction"
.end annotation


# instance fields
.field public TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/salt/SaltPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class p1, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method private getApplicationName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string p1, "Unknown"

    :goto_1
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method static synthetic lambda$triggerVirtualKeypress$0(Landroid/hardware/inputs/AInputManager;Landroid/view/KeyEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/inputs/AInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method static synthetic lambda$triggerVirtualKeypress$1(Landroid/hardware/inputs/AInputManager;Landroid/view/KeyEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/inputs/AInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private launchShortcut(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/high16 v0, 0x14000000

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setFlashlight(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "bGVvX2ZsYXNobGlnaHRfYWN0aW9u"

    invoke-static {v1}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public CleanProcesse()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "Y29tLmxlby5BQ1RJT05fQ0xFQU4="

    invoke-static {v1}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->TAG:Ljava/lang/String;

    const-string v1, "error occurred"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public ClearMemory(Landroid/content/Context;)V
    .locals 13

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-----------before memory info : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v8, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "process name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "importance : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/server/utils/salt/SaltPhoneSetting;->LEOPREFE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "a2lsbGVyX3doaXRlX2xpc3Q="

    invoke-static {v10}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v10, "\\|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v12, v9, v11

    invoke-virtual {v8, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    iget-object v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v4

    iget v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v11, 0xc8

    if-le v10, v11, :cond_2

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move v8, v6

    const/4 v6, 0x0

    :goto_2
    array-length v9, v7

    if-ge v6, v9, :cond_1

    iget-object v9, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "It will be killed, package name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v7, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v9, v7, v6

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    move v6, v8

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v0

    iget-object v5, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "----------- after memory info : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/utils/salt/SaltServerFrame;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/android/server/utils/salt/SaltServerFrame;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clear_no"

    invoke-static {p1, v8}, Lcom/android/server/utils/salt/SaltServerFrame;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "clear_yes"

    invoke-static {p1, v6}, Lcom/android/server/utils/salt/SaltServerFrame;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "M"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_5

    move-object p1, v5

    :cond_5
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public KillRecentAppsAll(Landroid/content/Context;)V
    .locals 10

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->setKillWhiteList()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_2

    aget-object v9, v5, v8

    if-eqz v9, :cond_1

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v1, :cond_5

    const-string v1, "systemui"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    :try_start_0
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    sget-object v0, Lcom/android/server/utils/salt/SaltServerFrame;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kill_force"

    invoke-static {p1, v2}, Lcom/android/server/utils/salt/SaltServerFrame;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->getApplicationName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    move-object p1, v0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_5

    :cond_5
    :goto_4
    sget-object v0, Lcom/android/server/utils/salt/SaltServerFrame;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v3, p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->getApplicationName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "kill_force_whitelist"

    invoke-static {p1, v3}, Lcom/android/server/utils/salt/SaltServerFrame;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    move-object p1, v0

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_5
    return-void
.end method

.method public LeoComponetURL(Ljava/lang/String;)V
    .locals 4

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object p1, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    iget-object p1, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "activity_no"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public LeoManagerService(Ljava/lang/String;)V
    .locals 4

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "Y29tLmxlby5ST01fQ09OVFJPTA=="

    invoke-static {p1}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    iget-object p1, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "activity_no"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public LeoShortcut(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    const/high16 v0, 0x14000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public LeoSysUiShortcut(Landroid/content/Intent;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_5

    if-nez p2, :cond_0

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "android.settings.DATE_SETTINGS"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object p2, p2, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object p2, p2, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "android.intent.action.SHOW_ALARMS"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->LeoShortcut(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object p2, p2, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "android.intent.action.SET_ALARM"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->LeoShortcut(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object p2, p2, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "android.intent.action.SET_TIMER"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->LeoShortcut(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    sget-object p2, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "time"

    invoke-virtual {p2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object p2, p2, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    const-string p1, "LeoSysUiShortcut"

    const-string p2, "VERSION too low"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public NextTrack()V
    .locals 20

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v9, v0, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {}, Landroid/hardware/inputs/AInputManager;->getInstance()Landroid/hardware/inputs/AInputManager;

    move-result-object v15

    new-instance v14, Landroid/view/KeyEvent;

    const/16 v10, 0x57

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v16, 0x0

    const v17, 0x10000008

    const/16 v18, 0x101

    move-object v4, v14

    move-wide v5, v7

    move-object v2, v14

    move/from16 v14, v16

    move-object/from16 v19, v15

    move/from16 v15, v17

    move/from16 v16, v18

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v4, v19

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/hardware/inputs/AInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public PreviousPiece()V
    .locals 20

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v9, v0, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {}, Landroid/hardware/inputs/AInputManager;->getInstance()Landroid/hardware/inputs/AInputManager;

    move-result-object v15

    new-instance v14, Landroid/view/KeyEvent;

    const/16 v10, 0x58

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v16, 0x0

    const v17, 0x10000008

    const/16 v18, 0x101

    move-object v4, v14

    move-wide v5, v7

    move-object v2, v14

    move/from16 v14, v16

    move-object/from16 v19, v15

    move/from16 v15, v17

    move/from16 v16, v18

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v4, v19

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/hardware/inputs/AInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public WeChatScan(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "Y29tLmxlby5BQ1RJT05fUEFZ"

    invoke-static {v1}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method getAvailMemory(Landroid/content/Context;)J
    .locals 6

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-object p1, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53ef\u7528\u5185\u5b58---->>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v0, v4

    return-wide v0
.end method

.method public getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method getLeoMobilemode(Landroid/content/Context;I)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, "mobile_data_yes"

    invoke-static {p1, p2}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const-string p2, "mobile_data_no"

    invoke-static {p1, p2}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getRecentKeyEvent()V
    .locals 20

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v9, v0, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {}, Landroid/hardware/inputs/AInputManager;->getInstance()Landroid/hardware/inputs/AInputManager;

    move-result-object v15

    new-instance v14, Landroid/view/KeyEvent;

    const/16 v10, 0xbb

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v16, 0x0

    const v17, 0x10000008

    const/16 v18, 0x101

    move-object v4, v14

    move-wide v5, v7

    move-object v2, v14

    move/from16 v14, v16

    move-object/from16 v19, v15

    move/from16 v15, v17

    move/from16 v16, v18

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v4, v19

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/hardware/inputs/AInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public isOutdoorModel(Landroid/content/Context;)V
    .locals 3

    const-string v0, "display_outdoor_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->putIntLeo(Landroid/content/Context;Ljava/lang/String;I)Z

    if-nez v1, :cond_0

    const-string v0, "outdoor_mode_no"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    const-string v0, "outdoor_mode_yes"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method launchActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_apps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_activity"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v1, "NONE"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    const/high16 p2, 0x14000000

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public launchBixbyVoice(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.bixby.agent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public openCamera(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public playPause()V
    .locals 20

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v9, v0, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {}, Landroid/hardware/inputs/AInputManager;->getInstance()Landroid/hardware/inputs/AInputManager;

    move-result-object v15

    new-instance v14, Landroid/view/KeyEvent;

    const/16 v10, 0x55

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v16, 0x0

    const v17, 0x10000008

    const/16 v18, 0x101

    move-object v4, v14

    move-wide v5, v7

    move-object v2, v14

    move/from16 v14, v16

    move-object/from16 v19, v15

    move/from16 v15, v17

    move/from16 v16, v18

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v4, v19

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/hardware/inputs/AInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public screenOff()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/aPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/aPowerManager;->goToSleep(J)V

    return-void
.end method

.method public startAppsActivity(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_short"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->launchShortcut(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->launchActivity(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public toggleAirplane(Landroid/content/Context;)V
    .locals 5

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getIntLeoGlobal(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, v0, v2}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->putIntLeoGlobal(Landroid/content/Context;Ljava/lang/String;Z)Z

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_1

    const-string v1, "airplane_mode_yes"

    invoke-static {p1, v1}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "airplane_mode_no"

    invoke-static {p1, v2}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public toggleExpandedDesktop(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoGlobalStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "immersive.full=*"

    :cond_1
    sget-object v1, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->LeoGlobal:Landroid/provider/Settings$Global;

    invoke-static {v0, p2, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "com.leo.salt.tweaks"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/android/server/policy/PolicyControl;->reloadFromSetting(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public toggleFlashlight()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->setFlashlight(Landroid/content/Context;)V

    return-void
.end method

.method public toggleFloatingModel(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefe_name"

    invoke-static {p1, v1}, Lcom/android/server/utils/salt/SaltServerFrame;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cXNfZmxvYXRiYWxsX2VuYWJsZWQ="

    invoke-static {v1}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->putIntLeo(Landroid/content/Context;Ljava/lang/String;I)Z

    if-nez v1, :cond_0

    const-string v0, "ball_mode_no"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    const-string v0, "ball_mode_yes"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toggleLastApp(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "com.android.launcher"

    :goto_0
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    :goto_1
    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/android/server/utils/salt/SaltServerFrame;->PACKAGE_SYSTEMUI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    const/4 p1, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    :cond_3
    return-void
.end method

.method public toggleMipopModel(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefe_name"

    invoke-static {p1, v1}, Lcom/android/server/utils/salt/SaltServerFrame;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cXNfbWluaXBvcF9lbmFibGVk"

    invoke-static {v1}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->putIntLeo(Landroid/content/Context;Ljava/lang/String;I)Z

    if-nez v1, :cond_0

    const-string v0, "mipop_mode_no"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    const-string v0, "mipop_mode_yes"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toggleMobile()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->getLeoMobilemode(Landroid/content/Context;I)V

    return-void
.end method

.method public toggleNotificationsPanel()V
    .locals 0

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->access$000()V

    return-void
.end method

.method public toggleRingerModes(Landroid/content/Context;)V
    .locals 4

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    const-string v0, "ringer_modes_vibrator"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    const-string v0, "ringer_modes_silence"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x55

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    const-string v0, "ringer_modes_sound"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public toggleRingerSoundModes(Landroid/content/Context;)V
    .locals 3

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    const-string v0, "ringer_modes_silence"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x55

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    const-string v0, "ringer_modes_sound"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toggleRingerVIBRATESoundModes(Landroid/content/Context;)V
    .locals 3

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    const-string v0, "ringer_modes_vibrator"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x55

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    const-string v0, "ringer_modes_sound"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public toggleSPlitScreens()V
    .locals 0

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->sPlitScreens()V

    return-void
.end method

.method public toggleSettingsPanel()V
    .locals 0

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->access$100()V

    return-void
.end method

.method public toggleWifi(Landroid/content/Context;)V
    .locals 2

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v0, "wifi_no"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v0, "wifi_yes"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public toggleWifiAP(Landroid/content/Context;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "hotspot_mode_yes"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public toggleclearAllNotifications(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/android/server/utils/salt/SaltPhoneWindowManager$ExpandAction;->access$200()V

    const-string v0, "clear_notification"

    invoke-static {p1, v0}, Lcom/android/server/utils/salt/SaltServerFrame;->ActionToastSring(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public triggerVirtualKeypress(I)V
    .locals 15

    move/from16 v6, p1

    invoke-static {}, Landroid/hardware/inputs/AInputManager;->getInstance()Landroid/hardware/inputs/AInputManager;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/16 v0, 0x15

    if-eq v6, v0, :cond_1

    const/16 v0, 0x16

    if-eq v6, v0, :cond_1

    const/16 v0, 0x13

    if-eq v6, v0, :cond_1

    const/16 v0, 0x14

    if-ne v6, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    const/16 v11, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x6

    const/4 v11, 0x6

    :goto_1
    new-instance v14, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v12, 0x101

    move-object v0, v14

    move-wide v1, v3

    move/from16 v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v0, 0x1

    invoke-static {v14, v0}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/server/utils/salt/-$$Lambda$SaltPhoneWindowManager$SaltPhoneWindowAction$uAHGL8AlHdhG-92YJounEX8Fe3Q;

    invoke-direct {v2, v13, v14}, Lcom/android/server/utils/salt/-$$Lambda$SaltPhoneWindowManager$SaltPhoneWindowAction$uAHGL8AlHdhG-92YJounEX8Fe3Q;-><init>(Landroid/hardware/inputs/AInputManager;Landroid/view/KeyEvent;)V

    new-instance v3, Lcom/android/server/utils/salt/-$$Lambda$SaltPhoneWindowManager$SaltPhoneWindowAction$GsWzZ9GfyR2d5U2ecIBnaoDgaXM;

    invoke-direct {v3, v13, v0}, Lcom/android/server/utils/salt/-$$Lambda$SaltPhoneWindowManager$SaltPhoneWindowAction$GsWzZ9GfyR2d5U2ecIBnaoDgaXM;-><init>(Landroid/hardware/inputs/AInputManager;Landroid/view/KeyEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public volumePanel(Landroid/content/Context;)V
    .locals 2

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->adjustVolume(II)V

    return-void
.end method

.method public wakeUpDevice()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/utils/salt/SaltPhoneWindowManager$SaltPhoneWindowAction;->this$0:Lcom/android/server/utils/salt/SaltPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/utils/salt/SaltPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/aPowerManager;

    invoke-virtual {v0}, Landroid/os/aPowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/aPowerManager;->wakeUp(J)V

    :cond_0
    return-void
.end method
