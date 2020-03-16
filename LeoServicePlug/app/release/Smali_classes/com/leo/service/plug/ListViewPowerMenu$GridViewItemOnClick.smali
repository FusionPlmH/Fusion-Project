.class public Lcom/leo/service/plug/ListViewPowerMenu$GridViewItemOnClick;
.super Ljava/lang/Object;
.source "ListViewPowerMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/service/plug/ListViewPowerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridViewItemOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/service/plug/ListViewPowerMenu;


# direct methods
.method public constructor <init>(Lcom/leo/service/plug/ListViewPowerMenu;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/leo/service/plug/ListViewPowerMenu$GridViewItemOnClick;->this$0:Lcom/leo/service/plug/ListViewPowerMenu;

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

    .line 105
    iget-object p1, p0, Lcom/leo/service/plug/ListViewPowerMenu$GridViewItemOnClick;->this$0:Lcom/leo/service/plug/ListViewPowerMenu;

    invoke-virtual {p1, p3}, Lcom/leo/service/plug/ListViewPowerMenu;->initAction(I)V

    return-void
.end method
