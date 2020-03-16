.class Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$1;
.super Ljava/lang/Object;
.source "MQCollectInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;-><init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

.field final synthetic val$this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$1;->val$this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$CodeAuthItem;->refreshAuthCode()V

    return-void
.end method
