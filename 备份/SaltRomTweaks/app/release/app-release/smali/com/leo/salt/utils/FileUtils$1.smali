.class Lcom/leo/salt/utils/FileUtils$1;
.super Landroid/os/Handler;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/utils/FileUtils;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/FileUtils;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/FileUtils$1;->this$0:Lcom/leo/salt/utils/FileUtils;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/leo/salt/utils/FileUtils$1;->this$0:Lcom/leo/salt/utils/FileUtils;

    invoke-static {v0}, Lcom/leo/salt/utils/FileUtils;->access$000(Lcom/leo/salt/utils/FileUtils;)Lcom/leo/salt/utils/FileUtils$FileOperateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/leo/salt/utils/FileUtils$1;->this$0:Lcom/leo/salt/utils/FileUtils;

    invoke-static {v0}, Lcom/leo/salt/utils/FileUtils;->access$000(Lcom/leo/salt/utils/FileUtils;)Lcom/leo/salt/utils/FileUtils$FileOperateCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/leo/salt/utils/FileUtils$FileOperateCallback;->onSuccess()V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/utils/FileUtils$1;->this$0:Lcom/leo/salt/utils/FileUtils;

    invoke-static {v0}, Lcom/leo/salt/utils/FileUtils;->access$000(Lcom/leo/salt/utils/FileUtils;)Lcom/leo/salt/utils/FileUtils$FileOperateCallback;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/leo/salt/utils/FileUtils$FileOperateCallback;->onFailed(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
