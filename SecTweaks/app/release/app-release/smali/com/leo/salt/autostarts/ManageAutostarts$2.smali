.class Lcom/leo/salt/autostarts/ManageAutostarts$2;
.super Ljava/lang/Object;
.source "ManageAutostarts.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/leo/salt/autostarts/ManageAutostarts$2;->this$0:Lcom/leo/salt/autostarts/ManageAutostarts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/leo/salt/autostarts/ManageAutostarts$2;->this$0:Lcom/leo/salt/autostarts/ManageAutostarts;

    invoke-static {p1}, Lcom/leo/salt/autostarts/ManageAutostarts;->access$400(Lcom/leo/salt/autostarts/ManageAutostarts;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/autostarts/ManageAutostarts$2;->this$0:Lcom/leo/salt/autostarts/ManageAutostarts;

    invoke-static {p1}, Lcom/leo/salt/autostarts/ManageAutostarts;->access$200(Lcom/leo/salt/autostarts/ManageAutostarts;)Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;->getItem(I)Lcom/leo/salt/autostarts/AppItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/autostarts/ManageAutostarts$2;->this$0:Lcom/leo/salt/autostarts/ManageAutostarts;

    invoke-static {p1}, Lcom/leo/salt/autostarts/ManageAutostarts;->access$100(Lcom/leo/salt/autostarts/ManageAutostarts;)Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/leo/salt/autostarts/ManageAutostarts$AppAdapter;->getItem(I)Lcom/leo/salt/autostarts/AppItem;

    move-result-object p1

    :goto_0
    iget-boolean p2, p1, Lcom/leo/salt/autostarts/AppItem;->checked:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/leo/salt/autostarts/ManageAutostarts$2;->this$0:Lcom/leo/salt/autostarts/ManageAutostarts;

    invoke-virtual {p2, p1}, Lcom/leo/salt/autostarts/ManageAutostarts;->closeAutoStartApp(Lcom/leo/salt/autostarts/AppItem;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/leo/salt/autostarts/ManageAutostarts$2;->this$0:Lcom/leo/salt/autostarts/ManageAutostarts;

    invoke-virtual {p2, p1}, Lcom/leo/salt/autostarts/ManageAutostarts;->startAutoStartApp(Lcom/leo/salt/autostarts/AppItem;)V

    :goto_1
    return-void
.end method
