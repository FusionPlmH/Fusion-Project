.class Lcom/meiqia/meiqiasdk/chatitem/MQClientItem$FailedMessageOnClickListener;
.super Ljava/lang/Object;
.source "MQClientItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FailedMessageOnClickListener"
.end annotation


# instance fields
.field private mFailedMessage:Lcom/meiqia/meiqiasdk/model/BaseMessage;

.field final synthetic this$0:Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;


# direct methods
.method public constructor <init>(Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;Lcom/meiqia/meiqiasdk/model/BaseMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem$FailedMessageOnClickListener;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem$FailedMessageOnClickListener;->mFailedMessage:Lcom/meiqia/meiqiasdk/model/BaseMessage;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/meiqia/meiqiasdk/util/MQUtils;->isFastClick()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem$FailedMessageOnClickListener;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;

    iget-object p1, p1, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem;->mCallback:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQClientItem$FailedMessageOnClickListener;->mFailedMessage:Lcom/meiqia/meiqiasdk/model/BaseMessage;

    invoke-interface {p1, v0}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$Callback;->resendFailedMessage(Lcom/meiqia/meiqiasdk/model/BaseMessage;)V

    :cond_0
    return-void
.end method
