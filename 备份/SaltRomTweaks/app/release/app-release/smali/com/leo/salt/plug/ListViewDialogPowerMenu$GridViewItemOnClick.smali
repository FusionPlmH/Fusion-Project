.class public Lcom/leo/salt/plug/ListViewDialogPowerMenu$GridViewItemOnClick;
.super Ljava/lang/Object;
.source "ListViewDialogPowerMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/plug/ListViewDialogPowerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridViewItemOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/plug/ListViewDialogPowerMenu;


# direct methods
.method public constructor <init>(Lcom/leo/salt/plug/ListViewDialogPowerMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/plug/ListViewDialogPowerMenu$GridViewItemOnClick;->this$0:Lcom/leo/salt/plug/ListViewDialogPowerMenu;

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

    iget-object p1, p0, Lcom/leo/salt/plug/ListViewDialogPowerMenu$GridViewItemOnClick;->this$0:Lcom/leo/salt/plug/ListViewDialogPowerMenu;

    invoke-virtual {p1, p3}, Lcom/leo/salt/plug/ListViewDialogPowerMenu;->initAction(I)V

    return-void
.end method
