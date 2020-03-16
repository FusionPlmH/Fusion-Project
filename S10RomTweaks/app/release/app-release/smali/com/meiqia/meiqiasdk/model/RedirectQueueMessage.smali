.class public Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;
.super Lcom/meiqia/meiqiasdk/model/BaseMessage;
.source "RedirectQueueMessage.java"


# instance fields
.field private queueSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;-><init>()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;->setItemViewType(I)V

    iput p1, p0, Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;->queueSize:I

    return-void
.end method


# virtual methods
.method public getQueueSize()I
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/model/RedirectQueueMessage;->queueSize:I

    return v0
.end method
