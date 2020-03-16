.class Lcom/leo/salt/utils/FileUtils$2;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/FileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/leo/salt/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/utils/FileUtils;

.field final synthetic val$sdPath:Ljava/lang/String;

.field final synthetic val$srcPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/FileUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/FileUtils$2;->this$0:Lcom/leo/salt/utils/FileUtils;

    iput-object p2, p0, Lcom/leo/salt/utils/FileUtils$2;->val$srcPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/leo/salt/utils/FileUtils$2;->val$sdPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/utils/FileUtils$2;->this$0:Lcom/leo/salt/utils/FileUtils;

    invoke-static {v0}, Lcom/leo/salt/utils/FileUtils;->access$100(Lcom/leo/salt/utils/FileUtils;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/utils/FileUtils$2;->val$srcPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/leo/salt/utils/FileUtils$2;->val$sdPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/leo/salt/utils/FileUtils;->access$200(Lcom/leo/salt/utils/FileUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/utils/FileUtils$2;->this$0:Lcom/leo/salt/utils/FileUtils;

    invoke-static {v0}, Lcom/leo/salt/utils/FileUtils;->access$300(Lcom/leo/salt/utils/FileUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/utils/FileUtils$2;->this$0:Lcom/leo/salt/utils/FileUtils;

    invoke-static {v0}, Lcom/leo/salt/utils/FileUtils;->access$400(Lcom/leo/salt/utils/FileUtils;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/utils/FileUtils$2;->this$0:Lcom/leo/salt/utils/FileUtils;

    invoke-static {v0}, Lcom/leo/salt/utils/FileUtils;->access$400(Lcom/leo/salt/utils/FileUtils;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/leo/salt/utils/FileUtils$2;->this$0:Lcom/leo/salt/utils/FileUtils;

    invoke-static {v2}, Lcom/leo/salt/utils/FileUtils;->access$500(Lcom/leo/salt/utils/FileUtils;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method
