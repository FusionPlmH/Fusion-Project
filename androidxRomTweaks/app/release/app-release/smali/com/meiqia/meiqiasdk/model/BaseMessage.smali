.class public Lcom/meiqia/meiqiasdk/model/BaseMessage;
.super Ljava/lang/Object;
.source "BaseMessage.java"


# static fields
.field public static final MAX_TYPE:I = 0xb

.field public static final STATE_ARRIVE:Ljava/lang/String; = "arrived"

.field public static final STATE_FAILED:Ljava/lang/String; = "failed"

.field public static final STATE_SENDING:Ljava/lang/String; = "sending"

.field public static final TYPE_AGENT:I = 0x1

.field public static final TYPE_CLIENT:I = 0x0

.field public static final TYPE_CONTENT_FILE:Ljava/lang/String; = "file"

.field public static final TYPE_CONTENT_HYBRID:Ljava/lang/String; = "hybrid"

.field public static final TYPE_CONTENT_PHOTO:Ljava/lang/String; = "photo"

.field public static final TYPE_CONTENT_RICH_TEXT:Ljava/lang/String; = "rich_text"

.field public static final TYPE_CONTENT_TEXT:Ljava/lang/String; = "text"

.field public static final TYPE_CONTENT_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final TYPE_CONTENT_VOICE:Ljava/lang/String; = "audio"

.field public static final TYPE_ENDING:Ljava/lang/String; = "ending"

.field public static final TYPE_EVALUATE:I = 0x4

.field public static final TYPE_FROM_AGENT:Ljava/lang/String; = "agent"

.field public static final TYPE_FROM_CLIENT:Ljava/lang/String; = "client"

.field public static final TYPE_HYBRID:I = 0xa

.field public static final TYPE_INITIATIVE_REDIRECT_TIP:I = 0x7

.field public static final TYPE_INTERNAL:Ljava/lang/String; = "internal"

.field public static final TYPE_MESSAGE:Ljava/lang/String; = "message"

.field public static final TYPE_NO_AGENT_TIP:I = 0x6

.field public static final TYPE_QUEUE_TIP:I = 0x8

.field public static final TYPE_REMARK:Ljava/lang/String; = "remark"

.field public static final TYPE_REPLY:Ljava/lang/String; = "reply"

.field public static final TYPE_RICH_TEXT:I = 0x9

.field public static final TYPE_ROBOT:I = 0x5

.field public static final TYPE_TIME:I = 0x2

.field public static final TYPE_TIP:I = 0x3

.field public static final TYPE_WELCOME:Ljava/lang/String; = "welcome"


# instance fields
.field private agentNickname:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private conversationId:J

.field private createdOn:J

.field private id:J

.field private isRead:Z

.field private itemViewType:I

.field private status:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->createdOn:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/meiqia/meiqiasdk/model/BaseMessage;

    iget-wide v2, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->id:J

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/model/BaseMessage;->getId()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAgentNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->agentNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationId()J
    .locals 2

    iget-wide v0, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->conversationId:J

    return-wide v0
.end method

.method public getCreatedOn()J
    .locals 2

    iget-wide v0, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->createdOn:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->id:J

    return-wide v0
.end method

.method public getItemViewType()I
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->itemViewType:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->isRead:Z

    return v0
.end method

.method public setAgentNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->agentNickname:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->content:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setConversationId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->conversationId:J

    return-void
.end method

.method public setCreatedOn(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->createdOn:J

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->id:J

    return-void
.end method

.method public setIsRead(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->isRead:Z

    return-void
.end method

.method public setItemViewType(I)V
    .locals 0

    iput p1, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->itemViewType:I

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->status:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/model/BaseMessage;->type:Ljava/lang/String;

    return-void
.end method
