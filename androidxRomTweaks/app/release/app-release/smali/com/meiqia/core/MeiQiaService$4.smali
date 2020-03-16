.class Lcom/meiqia/core/MeiQiaService$4;
.super Lokhttp3/WebSocketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MeiQiaService;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/MeiQiaService;


# direct methods
.method constructor <init>(Lcom/meiqia/core/MeiQiaService;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "socket close: i = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " s = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/meiqia/core/MeiQiaService;->d:Z

    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2, p1}, Lcom/meiqia/core/MeiQiaService;->a(Lcom/meiqia/core/MeiQiaService;Z)Z

    iget-object p1, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p1}, Lcom/meiqia/core/MeiQiaService;->l(Lcom/meiqia/core/MeiQiaService;)V

    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 0

    instance-of p1, p2, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p1}, Lcom/meiqia/core/MeiQiaService;->m(Lcom/meiqia/core/MeiQiaService;)V

    :cond_0
    const/4 p1, 0x0

    sput-boolean p1, Lcom/meiqia/core/MeiQiaService;->d:Z

    iget-object p3, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p3, p1}, Lcom/meiqia/core/MeiQiaService;->a(Lcom/meiqia/core/MeiQiaService;Z)Z

    iget-object p1, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p1}, Lcom/meiqia/core/MeiQiaService;->l(Lcom/meiqia/core/MeiQiaService;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "socket error: message = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " class = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    sget-boolean p1, Lcom/meiqia/core/MeiQiaService;->b:Z

    if-nez p1, :cond_c

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "action"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {v1}, Lcom/meiqia/core/MeiQiaService;->j(Lcom/meiqia/core/MeiQiaService;)Lokhttp3/WebSocket;

    move-result-object v1

    invoke-interface {v1, v0}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    const-string v0, "message"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/meiqia/core/a/c;->a(Lorg/json/JSONObject;)Lcom/meiqia/core/bean/MQMessage;

    move-result-object p1

    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2, p1}, Lcom/meiqia/core/MeiQiaService;->a(Lcom/meiqia/core/MeiQiaService;Lcom/meiqia/core/bean/MQMessage;)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "ticket_reply"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2, p1}, Lcom/meiqia/core/MeiQiaService;->a(Lcom/meiqia/core/MeiQiaService;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "agent_redirect"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "body"

    if-nez v0, :cond_b

    const-string v0, "timeout_redirect"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v0, "agent_inputting"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Landroid/content/Intent;

    const-string p2, "agent_inputting_action"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2, p1}, Lcom/meiqia/core/a/k;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_3
    const-string v0, "invite_evaluation"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2, p1}, Lcom/meiqia/core/MeiQiaService;->b(Lcom/meiqia/core/MeiQiaService;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    :cond_4
    const-string v0, "end_conv_timeout"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p1, p2}, Lcom/meiqia/core/MeiQiaService;->a(Lcom/meiqia/core/MeiQiaService;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "end_conv_agent"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {v0, p2}, Lcom/meiqia/core/MeiQiaService;->a(Lcom/meiqia/core/MeiQiaService;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_c

    const-string v0, "evaluation"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_0

    :cond_6
    const-string v0, "agent_update"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2, p1}, Lcom/meiqia/core/MeiQiaService;->c(Lcom/meiqia/core/MeiQiaService;Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_7
    const-string v0, "visit_black_add"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2, p1}, Lcom/meiqia/core/MeiQiaService;->d(Lcom/meiqia/core/MeiQiaService;Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_8
    const-string v0, "visit_black_del"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2, p1}, Lcom/meiqia/core/MeiQiaService;->e(Lcom/meiqia/core/MeiQiaService;Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_9
    const-string v0, "queueing_remove"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p1}, Lcom/meiqia/core/MeiQiaService;->k(Lcom/meiqia/core/MeiQiaService;)V

    goto :goto_2

    :cond_a
    const-string v0, "init_conv"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2, p1}, Lcom/meiqia/core/MeiQiaService;->f(Lcom/meiqia/core/MeiQiaService;Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_b
    :goto_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "to"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/meiqia/core/a/c;->b(Lorg/json/JSONObject;)Lcom/meiqia/core/bean/MQAgent;

    move-result-object p1

    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2, p1}, Lcom/meiqia/core/MeiQiaService;->a(Lcom/meiqia/core/MeiQiaService;Lcom/meiqia/core/bean/MQAgent;)V

    nop

    :catch_0
    :cond_c
    :goto_2
    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 4

    const-string p1, "socket open"

    invoke-static {p1}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/meiqia/core/MeiQiaService;->d:Z

    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2}, Lcom/meiqia/core/MeiQiaService;->a(Lcom/meiqia/core/MeiQiaService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2, v0}, Lcom/meiqia/core/MeiQiaService;->a(Lcom/meiqia/core/MeiQiaService;Z)Z

    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2}, Lcom/meiqia/core/MeiQiaService;->f(Lcom/meiqia/core/MeiQiaService;)Landroid/os/Handler;

    move-result-object p2

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2}, Lcom/meiqia/core/MeiQiaService;->h(Lcom/meiqia/core/MeiQiaService;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2}, Lcom/meiqia/core/MeiQiaService;->f(Lcom/meiqia/core/MeiQiaService;)Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v2, 0x7d0

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2, v0}, Lcom/meiqia/core/MeiQiaService;->b(Lcom/meiqia/core/MeiQiaService;Z)Z

    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p2}, Lcom/meiqia/core/MeiQiaService;->f(Lcom/meiqia/core/MeiQiaService;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p1}, Lcom/meiqia/core/MeiQiaService;->i(Lcom/meiqia/core/MeiQiaService;)V

    iget-object p1, p0, Lcom/meiqia/core/MeiQiaService$4;->a:Lcom/meiqia/core/MeiQiaService;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "socket_open"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/meiqia/core/a/k;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
