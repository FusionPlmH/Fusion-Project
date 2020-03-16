.class Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2$1;
.super Landroid/os/Handler;
.source "ServiceTaskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2$1;->this$1:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2$1;->this$1:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;

    iget-object v0, v0, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity$2;->this$0:Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;->access$400(Lcom/leo/salt/tweaks/updates/ServiceTaskActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
