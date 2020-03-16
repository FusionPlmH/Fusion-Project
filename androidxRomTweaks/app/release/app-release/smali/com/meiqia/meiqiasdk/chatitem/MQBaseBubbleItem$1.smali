.class Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;
.super Ljava/lang/Object;
.source "MQBaseBubbleItem.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDisplayImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->fillContent(Lcom/meiqia/meiqiasdk/model/BaseMessage;ILandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;

    iput p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;

    new-instance v1, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1$1;

    invoke-direct {v1, p0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1$1;-><init>(Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1$2;

    invoke-direct {v0, p0, p2}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1$2;-><init>(Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
