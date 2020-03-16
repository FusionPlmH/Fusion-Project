.class final Lcom/os/salt/widget/CleanActivity$onCreate$1$onAnimationStart$1;
.super Ljava/lang/Object;
.source "CleanActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/os/salt/widget/CleanActivity$onCreate$1;->onAnimationStart(Landroid/view/animation/Animation;)V
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
.field final synthetic this$0:Lcom/os/salt/widget/CleanActivity$onCreate$1;


# direct methods
.method constructor <init>(Lcom/os/salt/widget/CleanActivity$onCreate$1;)V
    .locals 0

    iput-object p1, p0, Lcom/os/salt/widget/CleanActivity$onCreate$1$onAnimationStart$1;->this$0:Lcom/os/salt/widget/CleanActivity$onCreate$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v1, "sync\necho 1 > /proc/sys/vm/compact_memory"

    invoke-virtual {v0, v1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v1, "sync\necho 3 > /proc/sys/vm/drop_caches\necho 1 > /proc/sys/vm/compact_memory"

    invoke-virtual {v0, v1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/os/salt/widget/CleanActivity$onCreate$1$onAnimationStart$1;->this$0:Lcom/os/salt/widget/CleanActivity$onCreate$1;

    iget-object v0, v0, Lcom/os/salt/widget/CleanActivity$onCreate$1;->this$0:Lcom/os/salt/widget/CleanActivity;

    invoke-static {v0}, Lcom/os/salt/widget/CleanActivity;->access$getMyHandler$p(Lcom/os/salt/widget/CleanActivity;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/os/salt/widget/CleanActivity$onCreate$1$onAnimationStart$1$1;->INSTANCE:Lcom/os/salt/widget/CleanActivity$onCreate$1$onAnimationStart$1$1;

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
