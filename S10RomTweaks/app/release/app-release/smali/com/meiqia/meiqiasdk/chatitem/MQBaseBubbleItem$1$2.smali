.class Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1$2;
.super Ljava/lang/Object;
.source "MQBaseBubbleItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;->onSuccess(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1$2;->this$1:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1$2;->this$1:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;

    iget-object p1, p1, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;

    iget-object p1, p1, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$1$2;->val$url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;->photoPreview(Ljava/lang/String;)V

    return-void
.end method
