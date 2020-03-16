.class public Lcom/meiqia/meiqiasdk/model/EvaluateMessage;
.super Lcom/meiqia/meiqiasdk/model/BaseMessage;
.source "EvaluateMessage.java"


# static fields
.field public static final EVALUATE_BAD:I = 0x0

.field public static final EVALUATE_GOOD:I = 0x2

.field public static final EVALUATE_MEDIUM:I = 0x1


# instance fields
.field private level:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;-><init>()V

    iput p1, p0, Lcom/meiqia/meiqiasdk/model/EvaluateMessage;->level:I

    invoke-virtual {p0, p2}, Lcom/meiqia/meiqiasdk/model/EvaluateMessage;->setContent(Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/model/EvaluateMessage;->setItemViewType(I)V

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/model/EvaluateMessage;->level:I

    return v0
.end method
