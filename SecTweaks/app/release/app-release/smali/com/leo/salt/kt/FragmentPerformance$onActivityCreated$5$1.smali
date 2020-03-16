.class final Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;
.super Ljava/lang/Object;
.source "FragmentPerformance.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;->onClick(Landroid/view/View;)V
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
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;


# direct methods
.method constructor <init>(Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;->this$0:Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "sync\necho 3 > /proc/sys/vm/drop_caches"

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/KeepShellSync;->doCmdSync$app_release(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;->this$0:Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;

    iget-object v0, v0, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5;->this$0:Lcom/leo/salt/kt/FragmentPerformance;

    invoke-static {v0}, Lcom/leo/salt/kt/FragmentPerformance;->access$getMyHandler$p(Lcom/leo/salt/kt/FragmentPerformance;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1$1;-><init>(Lcom/leo/salt/kt/FragmentPerformance$onActivityCreated$5$1;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
