.class public final Lcom/leo/salt/utils/ktshell/CheckRootStatus;
.super Ljava/lang/Object;
.source "CheckRootStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/utils/ktshell/CheckRootStatus$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\u001a\u001a\u00020\u001bJ\u0010\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008H\u0002R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/leo/salt/utils/ktshell/CheckRootStatus;",
        "",
        "context",
        "Landroid/content/Context;",
        "next",
        "Ljava/lang/Runnable;",
        "skip",
        "disableSeLinux",
        "",
        "(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V",
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
        "forceGetRoot",
        "",
        "isRoot",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final Companion:Lcom/leo/salt/utils/ktshell/CheckRootStatus$Companion;


# instance fields
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private disableSeLinux:Z

.field private myHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private next:Ljava/lang/Runnable;

.field private skip:Ljava/lang/Runnable;

.field private therad:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/leo/salt/utils/ktshell/CheckRootStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/leo/salt/utils/ktshell/CheckRootStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->Companion:Lcom/leo/salt/utils/ktshell/CheckRootStatus$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->next:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->skip:Ljava/lang/Runnable;

    iput-boolean p4, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->disableSeLinux:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/Runnable;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static final synthetic access$getDisableSeLinux$p(Lcom/leo/salt/utils/ktshell/CheckRootStatus;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->disableSeLinux:Z

    return p0
.end method

.method public static final synthetic access$getNext$p(Lcom/leo/salt/utils/ktshell/CheckRootStatus;)Ljava/lang/Runnable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->next:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getSkip$p(Lcom/leo/salt/utils/ktshell/CheckRootStatus;)Ljava/lang/Runnable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->skip:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$isRoot(Lcom/leo/salt/utils/ktshell/CheckRootStatus;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->isRoot(Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setDisableSeLinux$p(Lcom/leo/salt/utils/ktshell/CheckRootStatus;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->disableSeLinux:Z

    return-void
.end method

.method public static final synthetic access$setNext$p(Lcom/leo/salt/utils/ktshell/CheckRootStatus;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->next:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setSkip$p(Lcom/leo/salt/utils/ktshell/CheckRootStatus;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->skip:Ljava/lang/Runnable;

    return-void
.end method

.method private final isRoot(Z)Z
    .locals 6

    sget-object v0, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/Consts;->isRootUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsu"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "error"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "permission denied"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v1, v3, v2, v5, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "not allowed"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3, v2, v5, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

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

    sget-object p1, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {p1}, Lcom/leo/salt/utils/ktshell/Consts;->getDisableSELinux()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v2
.end method


# virtual methods
.method public final forceGetRoot()V
    .locals 4

    new-instance v0, Lcom/leo/salt/kt/ProgressBarDialog;

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/leo/salt/kt/ProgressBarDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getResources().g\u2026ring(R.string.check_root)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/leo/salt/kt/ProgressBarDialog;->showDialog(Ljava/lang/String;)Landroid/app/AlertDialog;

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$1;-><init>(Lcom/leo/salt/utils/ktshell/CheckRootStatus;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/leo/salt/kt/ProgressBarDialog;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->therad:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->therad:Ljava/lang/Thread;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->myHandler:Landroid/os/Handler;

    new-instance v3, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/leo/salt/utils/ktshell/CheckRootStatus$forceGetRoot$2;-><init>(Lcom/leo/salt/utils/ktshell/CheckRootStatus;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/leo/salt/kt/ProgressBarDialog;)V

    check-cast v3, Ljava/lang/Runnable;

    const-wide/16 v0, 0x3a98

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getMyHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getTherad()Ljava/lang/Thread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->therad:Ljava/lang/Thread;

    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->context:Landroid/content/Context;

    return-void
.end method

.method public final setMyHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method public final setTherad(Ljava/lang/Thread;)V
    .locals 0
    .param p1    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->therad:Ljava/lang/Thread;

    return-void
.end method
