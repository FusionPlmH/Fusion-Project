.class Lcom/meiqia/meiqiasdk/util/MQChatAdapter$1;
.super Ljava/lang/Object;
.source "MQChatAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/util/MQChatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/util/MQChatAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$1;->this$0:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQChatAdapter$1;->this$0:Lcom/meiqia/meiqiasdk/util/MQChatAdapter;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/util/MQChatAdapter;->notifyDataSetChanged()V

    return-void
.end method
