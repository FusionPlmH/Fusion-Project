.class Lcom/leo/salt/wifi/ViewActivity$1;
.super Ljava/lang/Object;
.source "ViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/wifi/ViewActivity;->doWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/wifi/ViewActivity;


# direct methods
.method constructor <init>(Lcom/leo/salt/wifi/ViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

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

    iget-object p1, p0, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

    new-instance p4, Landroid/widget/PopupMenu;

    invoke-direct {p4, p1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p4, p1, Lcom/leo/salt/wifi/ViewActivity;->popup:Landroid/widget/PopupMenu;

    iget-object p1, p0, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

    invoke-virtual {p1}, Lcom/leo/salt/wifi/ViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

    iget-object p2, p2, Lcom/leo/salt/wifi/ViewActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {p2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const p4, 0x7f0d0001

    invoke-virtual {p1, p4, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

    iget-object p1, p1, Lcom/leo/salt/wifi/ViewActivity;->popup:Landroid/widget/PopupMenu;

    new-instance p2, Lcom/leo/salt/wifi/ViewActivity$1$1;

    invoke-direct {p2, p0, p3}, Lcom/leo/salt/wifi/ViewActivity$1$1;-><init>(Lcom/leo/salt/wifi/ViewActivity$1;I)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/wifi/ViewActivity$1;->this$0:Lcom/leo/salt/wifi/ViewActivity;

    iget-object p1, p1, Lcom/leo/salt/wifi/ViewActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
