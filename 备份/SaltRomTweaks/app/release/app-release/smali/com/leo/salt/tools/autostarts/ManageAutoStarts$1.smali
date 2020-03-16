.class Lcom/leo/salt/tools/autostarts/ManageAutoStarts$1;
.super Landroid/os/Handler;
.source "ManageAutoStarts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tools/autostarts/ManageAutoStarts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tools/autostarts/ManageAutoStarts;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$1;->this$0:Lcom/leo/salt/tools/autostarts/ManageAutoStarts;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$1;->this$0:Lcom/leo/salt/tools/autostarts/ManageAutoStarts;

    invoke-static {p1}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->access$000(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$1;->this$0:Lcom/leo/salt/tools/autostarts/ManageAutoStarts;

    invoke-static {p1}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->access$000(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$1;->this$0:Lcom/leo/salt/tools/autostarts/ManageAutoStarts;

    invoke-static {p1}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->access$100(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$1;->this$0:Lcom/leo/salt/tools/autostarts/ManageAutoStarts;

    invoke-static {p1}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts;->access$200(Lcom/leo/salt/tools/autostarts/ManageAutoStarts;)Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/tools/autostarts/ManageAutoStarts$AppAdapter;->notifyDataSetChanged()V

    return-void
.end method
