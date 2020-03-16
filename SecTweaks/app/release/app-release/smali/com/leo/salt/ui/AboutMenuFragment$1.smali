.class Lcom/leo/salt/ui/AboutMenuFragment$1;
.super Ljava/lang/Object;
.source "AboutMenuFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/ui/AboutMenuFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/ui/AboutMenuFragment;


# direct methods
.method constructor <init>(Lcom/leo/salt/ui/AboutMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/ui/AboutMenuFragment$1;->this$0:Lcom/leo/salt/ui/AboutMenuFragment;

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

    iget-object p1, p0, Lcom/leo/salt/ui/AboutMenuFragment$1;->this$0:Lcom/leo/salt/ui/AboutMenuFragment;

    invoke-static {p1, p3}, Lcom/leo/salt/ui/AboutMenuFragment;->access$000(Lcom/leo/salt/ui/AboutMenuFragment;I)I

    return-void
.end method
