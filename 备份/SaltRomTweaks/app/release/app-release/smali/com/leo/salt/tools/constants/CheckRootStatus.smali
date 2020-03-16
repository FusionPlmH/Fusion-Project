.class public final Lcom/leo/salt/tools/constants/CheckRootStatus;
.super Ljava/lang/Object;
.source "CheckRootStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000  2\u00020\u0001:\u0001 B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0002\u001a\u00020\u0003J\u0006\u0010\u001e\u001a\u00020\u001dJ\u0010\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007H\u0002R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000eX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006!"
    }
    d2 = {
        "Lcom/leo/salt/tools/constants/CheckRootStatus;",
        "",
        "context",
        "Landroid/content/Context;",
        "next",
        "Ljava/lang/Runnable;",
        "disableSeLinux",
        "",
        "(Landroid/content/Context;Ljava/lang/Runnable;Z)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "isRootUser",
        "",
        "()Ljava/lang/String;",
        "myHandler",
        "Landroid/os/Handler;",
        "getMyHandler",
        "()Landroid/os/Handler;",
        "setMyHandler",
        "(Landroid/os/Handler;)V",
        "therad",
        "Ljava/lang/Thread;",
        "getTherad",
        "()Ljava/lang/Thread;",
        "setTherad",
        "(Ljava/lang/Thread;)V",
        "LeoComponetURL",
        "",
        "forceGetRoot",
        "isRoot",
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
.field public static final Companion:Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;


# instance fields
.field private context:Landroid/content/Context;

.field private disableSeLinux:Z

.field private final isRootUser:Ljava/lang/String;

.field private myHandler:Landroid/os/Handler;

.field private next:Ljava/lang/Runnable;

.field private therad:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/leo/salt/tools/constants/CheckRootStatus;->Companion:Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->next:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->disableSeLinux:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->myHandler:Landroid/os/Handler;

    const-string p1, "if [[ `id -u 2>&1` = \'0\' ]]; then\n\techo \'root\';\nelif [[ `$UID` = \'0\' ]]; then\n\techo \'root\';\nelif [[ `whoami 2>&1` = \'root\' ]]; then\n\techo \'root\';\nelif [[ `set | grep \'USER_ID=0\'` = \'USER_ID=0\' ]]; then\n\techo \'root\';\nelse\n\texit -1;\nfi;"

    iput-object p1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->isRootUser:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/Runnable;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/leo/salt/tools/constants/CheckRootStatus;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static final synthetic access$getDisableSeLinux$p(Lcom/leo/salt/tools/constants/CheckRootStatus;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->disableSeLinux:Z

    return p0
.end method

.method public static final synthetic access$getNext$p(Lcom/leo/salt/tools/constants/CheckRootStatus;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->next:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$isRoot(Lcom/leo/salt/tools/constants/CheckRootStatus;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tools/constants/CheckRootStatus;->isRoot(Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setDisableSeLinux$p(Lcom/leo/salt/tools/constants/CheckRootStatus;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->disableSeLinux:Z

    return-void
.end method

.method public static final synthetic access$setNext$p(Lcom/leo/salt/tools/constants/CheckRootStatus;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->next:Ljava/lang/Runnable;

    return-void
.end method

.method private final isRoot(Z)Z
    .locals 6

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->isRootUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsu"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "error"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "permission denied"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v1, v3, v2, v5, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "not allowed"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3, v2, v5, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    sget-object p1, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    sget-object v0, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v0}, Lcom/leo/salt/utils/Consts;->getDisableSELinux()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/constants/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method public final LeoComponetURL(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.topjohnwu.magisk"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public final forceGetRoot()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;-><init>(Lcom/leo/salt/tools/constants/CheckRootStatus;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->therad:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->therad:Ljava/lang/Thread;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->myHandler:Landroid/os/Handler;

    new-instance v2, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2;-><init>(Lcom/leo/salt/tools/constants/CheckRootStatus;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getMyHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getTherad()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->therad:Ljava/lang/Thread;

    return-object v0
.end method

.method public final isRootUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->isRootUser:Ljava/lang/String;

    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->context:Landroid/content/Context;

    return-void
.end method

.method public final setMyHandler(Landroid/os/Handler;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method public final setTherad(Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->therad:Ljava/lang/Thread;

    return-void
.end method
