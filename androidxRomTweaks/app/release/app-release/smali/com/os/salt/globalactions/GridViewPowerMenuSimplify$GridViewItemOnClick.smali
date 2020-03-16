.class public Lcom/os/salt/globalactions/GridViewPowerMenuSimplify$GridViewItemOnClick;
.super Ljava/lang/Object;
.source "GridViewPowerMenuSimplify.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridViewItemOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;


# direct methods
.method public constructor <init>(Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;)V
    .locals 0

    iput-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify$GridViewItemOnClick;->this$0:Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;

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

    iget-object p1, p0, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify$GridViewItemOnClick;->this$0:Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;

    invoke-virtual {p1, p3}, Lcom/os/salt/globalactions/GridViewPowerMenuSimplify;->initActionSimplify(I)V

    return-void
.end method
