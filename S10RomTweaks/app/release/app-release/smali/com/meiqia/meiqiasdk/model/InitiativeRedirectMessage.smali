.class public Lcom/meiqia/meiqiasdk/model/InitiativeRedirectMessage;
.super Lcom/meiqia/meiqiasdk/model/BaseMessage;
.source "InitiativeRedirectMessage.java"


# instance fields
.field private mTipResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;-><init>()V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/InitiativeRedirectMessage;->setItemViewType(I)V

    iput p1, p0, Lcom/meiqia/meiqiasdk/model/InitiativeRedirectMessage;->mTipResId:I

    return-void
.end method


# virtual methods
.method public getTipResId()I
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/model/InitiativeRedirectMessage;->mTipResId:I

    return v0
.end method
