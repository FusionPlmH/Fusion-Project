.class Lcom/leo/salt/tweaks/amber/PingActivity$1;
.super Landroid/os/Handler;
.source "PingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/amber/PingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/amber/PingActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/amber/PingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/amber/PingActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/tweaks/amber/PingActivity$1;->this$0:Lcom/leo/salt/tweaks/amber/PingActivity;

    invoke-static {v0}, Lcom/leo/salt/tweaks/amber/PingActivity;->access$800(Lcom/leo/salt/tweaks/amber/PingActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "pingRes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
