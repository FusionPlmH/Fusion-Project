.class public Lcom/meiqia/meiqiasdk/model/LeaveTipMessage;
.super Lcom/meiqia/meiqiasdk/model/BaseMessage;
.source "LeaveTipMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;-><init>()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/LeaveTipMessage;->setItemViewType(I)V

    return-void
.end method
