.class Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;
.super Ljava/lang/Thread;
.source "PingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/amber/PingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingThread"
.end annotation


# instance fields
.field private process:Ljava/lang/Process;

.field final synthetic this$0:Lcom/leo/salt/tweaks/amber/PingActivity;


# direct methods
.method private constructor <init>(Lcom/leo/salt/tweaks/amber/PingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/leo/salt/tweaks/amber/PingActivity;Lcom/leo/salt/tweaks/amber/PingActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;-><init>(Lcom/leo/salt/tweaks/amber/PingActivity;)V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->process:Ljava/lang/Process;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    iget-boolean v1, v1, Lcom/leo/salt/tweaks/amber/PingActivity;->pingIsAlive:Z

    const-string v2, "pingRes"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-static {v1}, Lcom/leo/salt/tweaks/amber/PingActivity;->access$600(Lcom/leo/salt/tweaks/amber/PingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-static {v1}, Lcom/leo/salt/tweaks/amber/PingActivity;->access$700(Lcom/leo/salt/tweaks/amber/PingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/PingActivity;->access$400(Lcom/leo/salt/tweaks/amber/PingActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/leo/salt/tweaks/amber/PingActivity;->pingIsAlive:Z

    return-void
.end method

.method public run()V
    .locals 6

    const-string v0, "pingRes"

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-static {v1}, Lcom/leo/salt/tweaks/amber/PingActivity;->access$200(Lcom/leo/salt/tweaks/amber/PingActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->process:Ljava/lang/Process;

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->process:Ljava/lang/Process;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-static {v1}, Lcom/leo/salt/tweaks/amber/PingActivity;->access$300(Lcom/leo/salt/tweaks/amber/PingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-static {v4}, Lcom/leo/salt/tweaks/amber/PingActivity;->access$400(Lcom/leo/salt/tweaks/amber/PingActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->process:Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    iput-boolean v3, v5, Lcom/leo/salt/tweaks/amber/PingActivity;->pingIsAlive:Z

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    iput v3, v4, Landroid/os/Message;->what:I

    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-static {v5}, Lcom/leo/salt/tweaks/amber/PingActivity;->access$400(Lcom/leo/salt/tweaks/amber/PingActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-static {v1}, Lcom/leo/salt/tweaks/amber/PingActivity;->access$500(Lcom/leo/salt/tweaks/amber/PingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-static {v4}, Lcom/leo/salt/tweaks/amber/PingActivity;->access$400(Lcom/leo/salt/tweaks/amber/PingActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-static {v1}, Lcom/leo/salt/tweaks/amber/PingActivity;->access$300(Lcom/leo/salt/tweaks/amber/PingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/leo/salt/tweaks/amber/PingActivity$PingThread;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-static {v1}, Lcom/leo/salt/tweaks/amber/PingActivity;->access$400(Lcom/leo/salt/tweaks/amber/PingActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method
