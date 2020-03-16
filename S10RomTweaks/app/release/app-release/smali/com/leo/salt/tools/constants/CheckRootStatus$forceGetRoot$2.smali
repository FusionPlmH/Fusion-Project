.class final Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2;
.super Ljava/lang/Object;
.source "CheckRootStatus.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/constants/CheckRootStatus;->forceGetRoot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $completed:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/leo/salt/tools/constants/CheckRootStatus;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/constants/CheckRootStatus;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus;

    iput-object p2, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2;->$completed:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-wide/16 v0, 0x3a98

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2;->$completed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    invoke-virtual {v0}, Lcom/leo/script/KeepShellPublic;->tryExit()V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/CheckRootStatus;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2$1;-><init>(Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$2;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
