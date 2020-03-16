.class public Lcom/meiqia/meiqiasdk/model/NoAgentLeaveMessage;
.super Lcom/meiqia/meiqiasdk/model/BaseMessage;
.source "NoAgentLeaveMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;-><init>()V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/NoAgentLeaveMessage;->setItemViewType(I)V

    return-void
.end method
