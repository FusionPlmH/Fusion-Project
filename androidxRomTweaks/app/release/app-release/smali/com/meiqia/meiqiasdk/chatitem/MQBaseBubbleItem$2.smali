.class Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$2;
.super Ljava/lang/Object;
.source "MQBaseBubbleItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->handleBindVoiceItem(Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;

.field final synthetic val$position:I

.field final synthetic val$voiceMessage:Lcom/meiqia/meiqiasdk/model/VoiceMessage;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$2;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$2;->val$voiceMessage:Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    iput p3, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$2;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$2;->val$voiceMessage:Lcom/meiqia/meiqiasdk/model/VoiceMessage;

    iget v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem$2;->val$position:I

    invoke-static {p1, v0, v1}, Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;->access$000(Lcom/meiqia/meiqiasdk/chatitem/MQBaseBubbleItem;Lcom/meiqia/meiqiasdk/model/VoiceMessage;I)V

    return-void
.end method
