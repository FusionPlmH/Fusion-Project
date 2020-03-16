.class Lcom/leo/salt/autostarts/ManageAutostarts$3;
.super Ljava/lang/Object;
.source "ManageAutostarts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/autostarts/ManageAutostarts;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/autostarts/ManageAutostarts;


# direct methods
.method constructor <init>(Lcom/leo/salt/autostarts/ManageAutostarts;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/autostarts/ManageAutostarts$3;->this$0:Lcom/leo/salt/autostarts/ManageAutostarts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/autostarts/ManageAutostarts$3;->this$0:Lcom/leo/salt/autostarts/ManageAutostarts;

    invoke-static {v0}, Lcom/leo/salt/autostarts/ManageAutostarts;->access$500(Lcom/leo/salt/autostarts/ManageAutostarts;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/autostarts/ManageAutostarts$3;->this$0:Lcom/leo/salt/autostarts/ManageAutostarts;

    invoke-static {v1}, Lcom/leo/salt/autostarts/ManageAutostarts;->access$100(Lcom/leo/salt/autostarts/ManageAutostarts;)Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
