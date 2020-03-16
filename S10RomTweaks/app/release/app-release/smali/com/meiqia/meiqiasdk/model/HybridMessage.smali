.class public Lcom/meiqia/meiqiasdk/model/HybridMessage;
.super Lcom/meiqia/meiqiasdk/model/BaseMessage;
.source "HybridMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;-><init>()V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/HybridMessage;->setItemViewType(I)V

    return-void
.end method
