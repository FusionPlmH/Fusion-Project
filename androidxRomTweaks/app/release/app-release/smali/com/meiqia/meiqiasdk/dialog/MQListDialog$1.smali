.class Lcom/meiqia/meiqiasdk/dialog/MQListDialog$1;
.super Ljava/lang/Object;
.source "MQListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/dialog/MQListDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/dialog/MQListDialog;

.field final synthetic val$onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/dialog/MQListDialog;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/dialog/MQListDialog$1;->this$0:Lcom/meiqia/meiqiasdk/dialog/MQListDialog;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/dialog/MQListDialog$1;->val$onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/dialog/MQListDialog$1;->val$onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/dialog/MQListDialog$1;->this$0:Lcom/meiqia/meiqiasdk/dialog/MQListDialog;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;->dismiss()V

    return-void
.end method
