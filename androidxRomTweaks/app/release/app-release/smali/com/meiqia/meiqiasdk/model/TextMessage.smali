.class public Lcom/meiqia/meiqiasdk/model/TextMessage;
.super Lcom/meiqia/meiqiasdk/model/BaseMessage;
.source "TextMessage.java"


# instance fields
.field private isContainsSensitiveWords:Z

.field private replaceContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/TextMessage;->setItemViewType(I)V

    const-string v0, "text"

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/TextMessage;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/TextMessage;-><init>()V

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/model/TextMessage;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/TextMessage;->setItemViewType(I)V

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/model/TextMessage;->setContent(Ljava/lang/String;)V

    const-string p1, "text"

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/model/TextMessage;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/meiqia/meiqiasdk/model/TextMessage;->setAvatar(Ljava/lang/String;)V

    const-string p1, "arrived"

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/model/TextMessage;->setStatus(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getReplaceContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/TextMessage;->replaceContent:Ljava/lang/String;

    return-object v0
.end method

.method public isContainsSensitiveWords()Z
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/model/TextMessage;->isContainsSensitiveWords:Z

    return v0
.end method

.method public setContainsSensitiveWords(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/model/TextMessage;->isContainsSensitiveWords:Z

    return-void
.end method

.method public setReplaceContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/TextMessage;->replaceContent:Ljava/lang/String;

    return-void
.end method
