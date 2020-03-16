.class public Lcom/meiqia/core/bean/MQMessage;
.super Ljava/lang/Object;


# static fields
.field public static final ALL_SUB_TYPE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_ARRIVE:Ljava/lang/String; = "arrived"

.field public static final STATE_FAILED:Ljava/lang/String; = "failed"

.field public static final STATE_SENDING:Ljava/lang/String; = "sending"

.field public static final SUB_TYPE_EVALUATE:Ljava/lang/String; = "evaluate"

.field public static final SUB_TYPE_MANUAL_REDIRECT:Ljava/lang/String; = "manual_redirect"

.field public static final SUB_TYPE_MENU:Ljava/lang/String; = "menu"

.field public static final SUB_TYPE_MESSAGE:Ljava/lang/String; = "message"

.field public static final SUB_TYPE_QUEUEING:Ljava/lang/String; = "queueing"

.field public static final SUB_TYPE_REDIRECT:Ljava/lang/String; = "redirect"

.field public static final SUB_TYPE_REPLY:Ljava/lang/String; = "reply"

.field public static final SUB_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final TYPE_AUTO_REPLY:Ljava/lang/String; = "auto_reply"

.field public static final TYPE_CONTENT_FILE:Ljava/lang/String; = "file"

.field public static final TYPE_CONTENT_HYBRID:Ljava/lang/String; = "hybrid"

.field public static final TYPE_CONTENT_PHOTO:Ljava/lang/String; = "photo"

.field public static final TYPE_CONTENT_RICH_TEXT:Ljava/lang/String; = "rich_text"

.field public static final TYPE_CONTENT_TEXT:Ljava/lang/String; = "text"

.field public static final TYPE_CONTENT_VOICE:Ljava/lang/String; = "audio"

.field public static final TYPE_ENDING:Ljava/lang/String; = "ending"

.field public static final TYPE_FROM_AGENT:Ljava/lang/String; = "agent"

.field public static final TYPE_FROM_CLIENT:Ljava/lang/String; = "client"

.field public static final TYPE_FROM_ROBOT:Ljava/lang/String; = "bot"

.field public static final TYPE_INTERNAL:Ljava/lang/String; = "internal"

.field public static final TYPE_MESSAGE:Ljava/lang/String; = "message"

.field public static final TYPE_PROMOTION:Ljava/lang/String; = "promotion"

.field public static final TYPE_REMARK:Ljava/lang/String; = "remark"

.field public static final TYPE_REPLY:Ljava/lang/String; = "reply"

.field public static final TYPE_SDK:Ljava/lang/String; = "sdk"

.field public static final TYPE_WELCOME:Ljava/lang/String; = "welcome"


# instance fields
.field private agent_id:Ljava/lang/String;

.field private agent_nickname:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private content_robot:Ljava/lang/String;

.field private content_type:Ljava/lang/String;

.field private conversation_id:J

.field private created_on:J

.field private enterprise_id:J

.field private extra:Ljava/lang/String;

.field private from_type:Ljava/lang/String;

.field private id:J

.field private isAlreadyFeedback:Z

.field private is_read:Z

.field private media_url:Ljava/lang/String;

.field private question_id:J

.field private status:Ljava/lang/String;

.field private sub_type:Ljava/lang/String;

.field private track_id:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "message"

    const-string v1, "evaluate"

    const-string v2, "redirect"

    const-string v3, "reply"

    const-string v4, "menu"

    const-string v5, "queueing"

    const-string v6, "manual_redirect"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/meiqia/core/bean/MQMessage;->ALL_SUB_TYPE:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "text"

    invoke-direct {p0, v0}, Lcom/meiqia/core/bean/MQMessage;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "arrived"

    iput-object v0, p0, Lcom/meiqia/core/bean/MQMessage;->status:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meiqia/core/bean/MQMessage;->id:J

    iput-object p1, p0, Lcom/meiqia/core/bean/MQMessage;->content_type:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meiqia/core/bean/MQMessage;->created_on:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/meiqia/core/bean/MQMessage;->is_read:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/meiqia/core/bean/MQMessage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/meiqia/core/bean/MQMessage;

    iget-wide v2, p0, Lcom/meiqia/core/bean/MQMessage;->id:J

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getId()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAgent_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQMessage;->agent_id:Ljava/lang/String;

    return-object v0
.end method

.method public getAgent_nickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQMessage;->agent_nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQMessage;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContent_robot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQMessage;->content_robot:Ljava/lang/String;

    return-object v0
.end method

.method public getContent_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQMessage;->content_type:Ljava/lang/String;

    return-object v0
.end method

.method public getConversation_id()J
    .locals 2

    iget-wide v0, p0, Lcom/meiqia/core/bean/MQMessage;->conversation_id:J

    return-wide v0
.end method

.method public getCreated_on()J
    .locals 2

    iget-wide v0, p0, Lcom/meiqia/core/bean/MQMessage;->created_on:J

    return-wide v0
.end method

.method public getEnterprise_id()J
    .locals 2

    iget-wide v0, p0, Lcom/meiqia/core/bean/MQMessage;->enterprise_id:J

    return-wide v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQMessage;->from_type:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/meiqia/core/bean/MQMessage;->id:J

    return-wide v0
.end method

.method public getMedia_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQMessage;->media_url:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion_id()J
    .locals 2

    iget-wide v0, p0, Lcom/meiqia/core/bean/MQMessage;->question_id:J

    return-wide v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQMessage;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSub_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQMessage;->sub_type:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQMessage;->track_id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQMessage;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isAlreadyFeedback()Z
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/core/bean/MQMessage;->isAlreadyFeedback:Z

    return v0
.end method

.method public isRobot()Z
    .locals 2

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getFrom_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bot"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public is_read()Z
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/core/bean/MQMessage;->is_read:Z

    return v0
.end method

.method public setAgent_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQMessage;->agent_id:Ljava/lang/String;

    return-void
.end method

.method public setAgent_nickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQMessage;->agent_nickname:Ljava/lang/String;

    return-void
.end method

.method public setAlreadyFeedback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/core/bean/MQMessage;->isAlreadyFeedback:Z

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQMessage;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQMessage;->content:Ljava/lang/String;

    return-void
.end method

.method public setContent_robot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQMessage;->content_robot:Ljava/lang/String;

    return-void
.end method

.method public setContent_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQMessage;->content_type:Ljava/lang/String;

    return-void
.end method

.method public setConversation_id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meiqia/core/bean/MQMessage;->conversation_id:J

    return-void
.end method

.method public setCreated_on(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meiqia/core/bean/MQMessage;->created_on:J

    return-void
.end method

.method public setEnterprise_id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meiqia/core/bean/MQMessage;->enterprise_id:J

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQMessage;->extra:Ljava/lang/String;

    return-void
.end method

.method public setFrom_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQMessage;->from_type:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meiqia/core/bean/MQMessage;->id:J

    return-void
.end method

.method public setIs_read(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/core/bean/MQMessage;->is_read:Z

    return-void
.end method

.method public setMedia_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQMessage;->media_url:Ljava/lang/String;

    return-void
.end method

.method public setQuestion_id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meiqia/core/bean/MQMessage;->question_id:J

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQMessage;->status:Ljava/lang/String;

    return-void
.end method

.method public setSub_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQMessage;->sub_type:Ljava/lang/String;

    return-void
.end method

.method public setTrack_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQMessage;->track_id:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQMessage;->type:Ljava/lang/String;

    return-void
.end method
