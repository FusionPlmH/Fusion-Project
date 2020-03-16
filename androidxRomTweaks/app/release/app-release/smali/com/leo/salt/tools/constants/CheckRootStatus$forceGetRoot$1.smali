.class final Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;
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

    iput-object p1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus;

    iput-object p2, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;->$completed:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    invoke-virtual {v0}, Lcom/leo/script/KeepShellPublic;->checkRoot()Z

    move-result v0

    invoke-static {v0}, Lcom/leo/salt/tools/constants/CheckRootStatus;->access$setRootStatus$cp(Z)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;->$completed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;->$completed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v0, Lcom/leo/salt/tools/constants/CheckRootStatus;->Companion:Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;->getLastCheckResult()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus;

    invoke-static {v0}, Lcom/leo/salt/tools/constants/CheckRootStatus;->access$getDisableSeLinux$p(Lcom/leo/salt/tools/constants/CheckRootStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v1, "setenforce 0;\n"

    invoke-virtual {v0, v1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus;

    invoke-static {v0}, Lcom/leo/salt/tools/constants/CheckRootStatus;->access$getNext$p(Lcom/leo/salt/tools/constants/CheckRootStatus;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/CheckRootStatus;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus;

    invoke-static {v1}, Lcom/leo/salt/tools/constants/CheckRootStatus;->access$getNext$p(Lcom/leo/salt/tools/constants/CheckRootStatus;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/CheckRootStatus;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1;-><init>(Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method
