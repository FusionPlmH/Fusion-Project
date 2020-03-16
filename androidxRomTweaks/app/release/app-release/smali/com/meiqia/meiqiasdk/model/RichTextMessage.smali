.class public Lcom/meiqia/meiqiasdk/model/RichTextMessage;
.super Lcom/meiqia/meiqiasdk/model/BaseMessage;
.source "RichTextMessage.java"


# instance fields
.field private extra:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/model/BaseMessage;-><init>()V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/RichTextMessage;->setItemViewType(I)V

    const-string v0, "rich_text"

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/model/RichTextMessage;->setContentType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/RichTextMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/RichTextMessage;->extra:Ljava/lang/String;

    return-void
.end method
