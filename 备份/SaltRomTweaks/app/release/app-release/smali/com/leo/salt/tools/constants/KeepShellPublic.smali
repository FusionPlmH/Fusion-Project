.class public final Lcom/leo/salt/tools/constants/KeepShellPublic;
.super Ljava/lang/Object;
.source "KeepShellPublic.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u0008\u001a\u00020\tR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/leo/salt/tools/constants/KeepShellPublic;",
        "",
        "()V",
        "keepShell",
        "Lcom/leo/salt/tools/constants/KeepShell;",
        "doCmdSync",
        "",
        "cmd",
        "tryExit",
        "",
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
.field public static final INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

.field private static keepShell:Lcom/leo/salt/tools/constants/KeepShell;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/KeepShellPublic;

    invoke-direct {v0}, Lcom/leo/salt/tools/constants/KeepShellPublic;-><init>()V

    sput-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doCmdSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->keepShell:Lcom/leo/salt/tools/constants/KeepShell;

    if-nez v0, :cond_0

    new-instance v0, Lcom/leo/salt/tools/constants/KeepShell;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/leo/salt/tools/constants/KeepShell;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->keepShell:Lcom/leo/salt/tools/constants/KeepShell;

    :cond_0
    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->keepShell:Lcom/leo/salt/tools/constants/KeepShell;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/constants/KeepShell;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final tryExit()V
    .locals 1

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->keepShell:Lcom/leo/salt/tools/constants/KeepShell;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/KeepShell;->tryExit$app_release()V

    const/4 v0, 0x0

    check-cast v0, Lcom/leo/salt/tools/constants/KeepShell;

    sput-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->keepShell:Lcom/leo/salt/tools/constants/KeepShell;

    :cond_1
    return-void
.end method
