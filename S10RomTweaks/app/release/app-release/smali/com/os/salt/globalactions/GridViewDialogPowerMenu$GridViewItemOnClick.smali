.class public Lcom/os/salt/globalactions/GridViewDialogPowerMenu$GridViewItemOnClick;
.super Ljava/lang/Object;
.source "GridViewDialogPowerMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/os/salt/globalactions/GridViewDialogPowerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridViewItemOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/os/salt/globalactions/GridViewDialogPowerMenu;


# direct methods
.method public constructor <init>(Lcom/os/salt/globalactions/GridViewDialogPowerMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/os/salt/globalactions/GridViewDialogPowerMenu$GridViewItemOnClick;->this$0:Lcom/os/salt/globalactions/GridViewDialogPowerMenu;

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

    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewDialogPowerMenu$GridViewItemOnClick;->this$0:Lcom/os/salt/globalactions/GridViewDialogPowerMenu;

    invoke-virtual {p1, p3}, Lcom/os/salt/globalactions/GridViewDialogPowerMenu;->initAction(I)V

    return-void
.end method
