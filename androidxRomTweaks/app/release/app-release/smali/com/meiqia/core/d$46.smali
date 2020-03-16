.class Lcom/meiqia/core/d$46;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/bean/MQMessage;

.field final synthetic b:Lcom/meiqia/core/callback/OnMessageSendCallback;

.field final synthetic c:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$46;->c:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$46;->a:Lcom/meiqia/core/bean/MQMessage;

    iput-object p3, p0, Lcom/meiqia/core/d$46;->b:Lcom/meiqia/core/callback/OnMessageSendCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/meiqia/core/a/j;->a(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/meiqia/core/d$46;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getId()J

    move-result-wide v2

    iget-object p1, p0, Lcom/meiqia/core/d$46;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p1, v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setCreated_on(J)V

    iget-object p1, p0, Lcom/meiqia/core/d$46;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p1, p2, p3}, Lcom/meiqia/core/bean/MQMessage;->setId(J)V

    iget-object p1, p0, Lcom/meiqia/core/d$46;->a:Lcom/meiqia/core/bean/MQMessage;

    const-string p2, "arrived"

    invoke-virtual {p1, p2}, Lcom/meiqia/core/bean/MQMessage;->setStatus(Ljava/lang/String;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/core/d$46;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p1, p4}, Lcom/meiqia/core/bean/MQMessage;->setExtra(Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "contains_sensitive_words"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const-string p3, "replaced_content"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/meiqia/core/d$46;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p2, p1}, Lcom/meiqia/core/bean/MQMessage;->setContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/core/d$46;->a:Lcom/meiqia/core/bean/MQMessage;

    iget-object p2, p0, Lcom/meiqia/core/d$46;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p2}, Lcom/meiqia/core/bean/MQMessage;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meiqia/core/bean/MQMessage;->setContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/meiqia/core/d$46;->c:Lcom/meiqia/core/d;

    invoke-virtual {p1}, Lcom/meiqia/core/d;->e()Lcom/meiqia/core/bean/MQAgent;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/meiqia/core/d$46;->a:Lcom/meiqia/core/bean/MQMessage;

    iget-object p2, p0, Lcom/meiqia/core/d$46;->c:Lcom/meiqia/core/d;

    invoke-virtual {p2}, Lcom/meiqia/core/d;->e()Lcom/meiqia/core/bean/MQAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/meiqia/core/bean/MQAgent;->getNickname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meiqia/core/bean/MQMessage;->setAgent_nickname(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/meiqia/core/d$46;->c:Lcom/meiqia/core/d;

    invoke-static {p1}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;)Lcom/meiqia/core/f;

    move-result-object p1

    iget-object p2, p0, Lcom/meiqia/core/d$46;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p1, p2, v2, v3}, Lcom/meiqia/core/f;->a(Lcom/meiqia/core/bean/MQMessage;J)V

    iget-object p1, p0, Lcom/meiqia/core/d$46;->c:Lcom/meiqia/core/d;

    new-instance p2, Lcom/meiqia/core/d$46$1;

    invoke-direct {p2, p0}, Lcom/meiqia/core/d$46$1;-><init>(Lcom/meiqia/core/d$46;)V

    invoke-static {p1, p2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x4e1d

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4e29

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/d$46;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQAgent;)V

    :goto_0
    iget-object v0, p0, Lcom/meiqia/core/d$46;->a:Lcom/meiqia/core/bean/MQMessage;

    const-string v1, "failed"

    invoke-virtual {v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/core/d$46;->c:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;)Lcom/meiqia/core/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/core/d$46;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/f;->a(Lcom/meiqia/core/bean/MQMessage;)V

    iget-object v0, p0, Lcom/meiqia/core/d$46;->b:Lcom/meiqia/core/callback/OnMessageSendCallback;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/meiqia/core/d$46;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-interface {v0, v1, p1, p2}, Lcom/meiqia/core/callback/OnMessageSendCallback;->onFailure(Lcom/meiqia/core/bean/MQMessage;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/meiqia/core/d$46;->c:Lcom/meiqia/core/d;

    invoke-static {p1, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQConversation;)V

    iget-object p1, p0, Lcom/meiqia/core/d$46;->c:Lcom/meiqia/core/d;

    invoke-virtual {p1, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQAgent;)V

    iget-object p1, p0, Lcom/meiqia/core/d$46;->c:Lcom/meiqia/core/d;

    iget-object p2, p0, Lcom/meiqia/core/d$46;->a:Lcom/meiqia/core/bean/MQMessage;

    iget-object v0, p0, Lcom/meiqia/core/d$46;->b:Lcom/meiqia/core/callback/OnMessageSendCallback;

    invoke-static {p1, p2, v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    :cond_2
    :goto_1
    return-void
.end method
