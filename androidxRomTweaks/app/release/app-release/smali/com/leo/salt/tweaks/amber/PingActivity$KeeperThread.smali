.class Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;
.super Ljava/lang/Thread;
.source "PingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/amber/PingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeeperThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/amber/PingActivity;


# direct methods
.method private constructor <init>(Lcom/leo/salt/tweaks/amber/PingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/leo/salt/tweaks/amber/PingActivity;Lcom/leo/salt/tweaks/amber/PingActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;-><init>(Lcom/leo/salt/tweaks/amber/PingActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_0
    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    iget-boolean v0, v0, Lcom/leo/salt/tweaks/amber/PingActivity;->pingIsAlive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/leo/salt/tweaks/amber/PingActivity;->pingIsAlive:Z

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/PingActivity;->access$900(Lcom/leo/salt/tweaks/amber/PingActivity;)Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PingActivity$KeeperThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/PingActivity;->access$900(Lcom/leo/salt/tweaks/amber/PingActivity;)Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->interrupt()V

    :cond_1
    return-void
.end method
