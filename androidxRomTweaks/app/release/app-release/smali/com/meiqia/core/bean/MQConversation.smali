.class public Lcom/meiqia/core/bean/MQConversation;
.super Ljava/lang/Object;


# instance fields
.field private agent_id:Ljava/lang/String;

.field private agent_msg_num:I

.field private assignee:I

.field private client_first_send_time:Ljava/lang/String;

.field private client_msg_num:I

.field private converse_duration:I

.field public created_on:J

.field private ended_by:Ljava/lang/String;

.field public ended_on:Ljava/lang/String;

.field private enterprise_id:J

.field private first_response_wait_time:I

.field private id:J

.field private last_msg_content:Ljava/lang/String;

.field public last_msg_created_on:J

.field private last_updated:J

.field private messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;"
        }
    .end annotation
.end field

.field private msg_num:I

.field private track_id:Ljava/lang/String;

.field private visit_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meiqia/core/bean/MQConversation;->messageList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    check-cast p1, Lcom/meiqia/core/bean/MQConversation;

    iget-object v0, p0, Lcom/meiqia/core/bean/MQConversation;->track_id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQConversation;->getTrack_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/meiqia/core/bean/MQConversation;->id:J

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQConversation;->getId()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAgent_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQConversation;->agent_id:Ljava/lang/String;

    return-object v0
.end method

.method public getAgent_msg_num()I
    .locals 1

    iget v0, p0, Lcom/meiqia/core/bean/MQConversation;->agent_msg_num:I

    return v0
.end method

.method public getAssignee()I
    .locals 1

    iget v0, p0, Lcom/meiqia/core/bean/MQConversation;->assignee:I

    return v0
.end method

.method public getClient_first_send_time()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQConversation;->client_first_send_time:Ljava/lang/String;

    return-object v0
.end method

.method public getClient_msg_num()I
    .locals 1

    iget v0, p0, Lcom/meiqia/core/bean/MQConversation;->client_msg_num:I

    return v0
.end method

.method public getConverse_duration()I
    .locals 1

    iget v0, p0, Lcom/meiqia/core/bean/MQConversation;->converse_duration:I

    return v0
.end method

.method public getEnded_by()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQConversation;->ended_by:Ljava/lang/String;

    return-object v0
.end method

.method public getEnterprise_id()J
    .locals 2

    iget-wide v0, p0, Lcom/meiqia/core/bean/MQConversation;->enterprise_id:J

    return-wide v0
.end method

.method public getFirst_response_wait_time()I
    .locals 1

    iget v0, p0, Lcom/meiqia/core/bean/MQConversation;->first_response_wait_time:I

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/meiqia/core/bean/MQConversation;->id:J

    return-wide v0
.end method

.method public getLast_msg_content()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQConversation;->last_msg_content:Ljava/lang/String;

    return-object v0
.end method

.method public getLast_updated()J
    .locals 2

    iget-wide v0, p0, Lcom/meiqia/core/bean/MQConversation;->last_updated:J

    return-wide v0
.end method

.method public getMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/core/bean/MQConversation;->messageList:Ljava/util/List;

    return-object v0
.end method

.method public getMsg_num()I
    .locals 1

    iget v0, p0, Lcom/meiqia/core/bean/MQConversation;->msg_num:I

    return v0
.end method

.method public getTrack_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQConversation;->track_id:Ljava/lang/String;

    return-object v0
.end method

.method public getVisit_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/bean/MQConversation;->visit_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAgent_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQConversation;->agent_id:Ljava/lang/String;

    return-void
.end method

.method public setAgent_msg_num(I)V
    .locals 0

    iput p1, p0, Lcom/meiqia/core/bean/MQConversation;->agent_msg_num:I

    return-void
.end method

.method public setAssignee(I)V
    .locals 0

    iput p1, p0, Lcom/meiqia/core/bean/MQConversation;->assignee:I

    return-void
.end method

.method public setClient_first_send_time(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQConversation;->client_first_send_time:Ljava/lang/String;

    return-void
.end method

.method public setClient_msg_num(I)V
    .locals 0

    iput p1, p0, Lcom/meiqia/core/bean/MQConversation;->client_msg_num:I

    return-void
.end method

.method public setConverse_duration(I)V
    .locals 0

    iput p1, p0, Lcom/meiqia/core/bean/MQConversation;->converse_duration:I

    return-void
.end method

.method public setCreated_on(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meiqia/core/bean/MQConversation;->created_on:J

    return-void
.end method

.method public setEnded_by(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQConversation;->ended_by:Ljava/lang/String;

    return-void
.end method

.method public setEnded_on(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQConversation;->ended_on:Ljava/lang/String;

    return-void
.end method

.method public setEnterprise_id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meiqia/core/bean/MQConversation;->enterprise_id:J

    return-void
.end method

.method public setFirst_response_wait_time(I)V
    .locals 0

    iput p1, p0, Lcom/meiqia/core/bean/MQConversation;->first_response_wait_time:I

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meiqia/core/bean/MQConversation;->id:J

    return-void
.end method

.method public setLast_msg_content(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQConversation;->last_msg_content:Ljava/lang/String;

    return-void
.end method

.method public setLast_msg_created_on(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meiqia/core/bean/MQConversation;->last_msg_created_on:J

    return-void
.end method

.method public setLast_updated(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meiqia/core/bean/MQConversation;->last_updated:J

    return-void
.end method

.method public setMessageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/meiqia/core/bean/MQConversation;->messageList:Ljava/util/List;

    return-void
.end method

.method public setMsg_num(I)V
    .locals 0

    iput p1, p0, Lcom/meiqia/core/bean/MQConversation;->msg_num:I

    return-void
.end method

.method public setTrack_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQConversation;->track_id:Ljava/lang/String;

    return-void
.end method

.method public setVisit_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/bean/MQConversation;->visit_id:Ljava/lang/String;

    return-void
.end method
