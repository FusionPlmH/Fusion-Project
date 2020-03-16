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
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0002\u001a\u00020\u0003J\u0006\u0010\u001c\u001a\u00020\u001bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001e"
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
        "skip",
        "(Landroid/content/Context;Ljava/lang/Runnable;ZLjava/lang/Runnable;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
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

.field private static rootStatus:Z


# instance fields
.field private context:Landroid/content/Context;

.field private disableSeLinux:Z

.field private myHandler:Landroid/os/Handler;

.field private next:Ljava/lang/Runnable;

.field private skip:Ljava/lang/Runnable;

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

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;ZLjava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->next:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->disableSeLinux:Z

    iput-object p4, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->skip:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;ZLjava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    check-cast p2, Ljava/lang/Runnable;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    check-cast p4, Ljava/lang/Runnable;

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/leo/salt/tools/constants/CheckRootStatus;-><init>(Landroid/content/Context;Ljava/lang/Runnable;ZLjava/lang/Runnable;)V

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

.method public static final synthetic access$getRootStatus$cp()Z
    .locals 1

    sget-boolean v0, Lcom/leo/salt/tools/constants/CheckRootStatus;->rootStatus:Z

    return v0
.end method

.method public static final synthetic access$getSkip$p(Lcom/leo/salt/tools/constants/CheckRootStatus;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->skip:Ljava/lang/Runnable;

    return-object p0
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

.method public static final synthetic access$setRootStatus$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->rootStatus:Z

    return-void
.end method

.method public static final synthetic access$setSkip$p(Lcom/leo/salt/tools/constants/CheckRootStatus;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->skip:Ljava/lang/Runnable;

    return-void
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
    .locals 3

    sget-object v0, Lcom/leo/salt/tools/constants/CheckRootStatus;->Companion:Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;->getLastCheckResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->next:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus;->myHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
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

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2;-><init>(Lcom/leo/salt/tools/constants/CheckRootStatus;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
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
