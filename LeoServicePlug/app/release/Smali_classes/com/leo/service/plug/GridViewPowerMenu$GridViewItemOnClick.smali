.class public Lcom/leo/service/plug/GridViewPowerMenu$GridViewItemOnClick;
.super Ljava/lang/Object;
.source "GridViewPowerMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/service/plug/GridViewPowerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridViewItemOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/service/plug/GridViewPowerMenu;


# direct methods
.method public constructor <init>(Lcom/leo/service/plug/GridViewPowerMenu;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu$GridViewItemOnClick;->this$0:Lcom/leo/service/plug/GridViewPowerMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 146
    iget-object p1, p0, Lcom/leo/service/plug/GridViewPowerMenu$GridViewItemOnClick;->this$0:Lcom/leo/service/plug/GridViewPowerMenu;

    invoke-virtual {p1, p3}, Lcom/leo/service/plug/GridViewPowerMenu;->initAction(I)V

    return-void
.end method
