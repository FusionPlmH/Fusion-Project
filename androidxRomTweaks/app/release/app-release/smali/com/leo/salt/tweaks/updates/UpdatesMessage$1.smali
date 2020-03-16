.class Lcom/leo/salt/tweaks/updates/UpdatesMessage$1;
.super Landroid/os/Handler;
.source "UpdatesMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/updates/UpdatesMessage;-><init>(Lcom/leo/salt/tweaks/updates/UpdatesMessage$OnOTAListener;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/updates/UpdatesMessage;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/updates/UpdatesMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/UpdatesMessage$1;->this$0:Lcom/leo/salt/tweaks/updates/UpdatesMessage;

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

    iget-object v0, p0, Lcom/leo/salt/tweaks/updates/UpdatesMessage$1;->this$0:Lcom/leo/salt/tweaks/updates/UpdatesMessage;

    iget-object v0, v0, Lcom/leo/salt/tweaks/updates/UpdatesMessage;->mListener:Lcom/leo/salt/tweaks/updates/UpdatesMessage$OnOTAListener;

    invoke-interface {v0, p1}, Lcom/leo/salt/tweaks/updates/UpdatesMessage$OnOTAListener;->OTACheck(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
