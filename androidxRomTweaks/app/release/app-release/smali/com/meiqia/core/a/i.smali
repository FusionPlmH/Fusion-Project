.class public Lcom/meiqia/core/a/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Meiqia"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private b(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQClient;->getAppKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/meiqia/core/a/i;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/meiqia/core/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private i(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQClient;->getAppKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/meiqia/core/a/i;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/meiqia/core/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/meiqia/core/bean/MQClient;)J
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "mq_last_conversation"

    invoke-direct {p0, p1, v1}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, -0x1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "meiqia_appkey"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/meiqia/core/bean/MQClient;J)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mq_last_conversation"

    invoke-direct {p0, p1, v1}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mq_queueing_robot_agent_id"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/meiqia/core/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/meiqia/core/a/i;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/meiqia/core/bean/MQClient;Z)V
    .locals 1

    const-string v0, "mq_is_schedulered"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/meiqia/core/a/i;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "meiqia_appkey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Lcom/meiqia/core/bean/MQClient;)J
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "mq_last_msg_update_time"

    invoke-direct {p0, p1, v1}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "meiqia_current_track_id_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/meiqia/core/a/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/meiqia/core/bean/MQClient;J)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mq_last_msg_update_time"

    invoke-direct {p0, p1, v1}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mq_dev_infos"

    invoke-direct {p0, p1, v1}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Lcom/meiqia/core/bean/MQClient;Z)V
    .locals 1

    const-string v0, "mq_isRegisterDeviceTokenSuc"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/meiqia/core/a/i;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "meiqia_current_track_id_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/meiqia/core/a/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/meiqia/core/bean/MQClient;)J
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "mq_last_ticket_msg_update_time"

    invoke-direct {p0, p1, v1}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "mq_track_id"

    invoke-virtual {p0, v0}, Lcom/meiqia/core/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/meiqia/core/bean/MQClient;J)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mq_last_ticket_msg_update_time"

    invoke-direct {p0, p1, v1}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public c(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mq_client_infos"

    invoke-direct {p0, p1, v1}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public c(Lcom/meiqia/core/bean/MQClient;Z)V
    .locals 1

    const-string v0, "mq_isFirstRefreshMQInquireForm"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->i(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/meiqia/core/a/i;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "mq_user_id"

    invoke-direct {p0, v0, p1}, Lcom/meiqia/core/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "mq_visit_id"

    invoke-virtual {p0, v0}, Lcom/meiqia/core/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/meiqia/core/a/i;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/meiqia/core/a/i;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meiqia/core/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/meiqia/core/bean/MQClient;J)V
    .locals 1

    const-string v0, "mq_current_ticket_id"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/core/a/i;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public d(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mq_client_update_infos"

    invoke-direct {p0, p1, v1}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public d(Lcom/meiqia/core/bean/MQClient;)Z
    .locals 1

    :try_start_0
    const-string v0, "mq_is_schedulered"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "mq_visit_page_id"

    invoke-virtual {p0, v0}, Lcom/meiqia/core/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;
    .locals 1

    const-string v0, "mq_queueing_robot_agent_id"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/meiqia/core/bean/MQClient;J)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mq_conversation_onstop_time"

    invoke-direct {p0, p1, v1}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/meiqia/core/a/i;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public e(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mq_client_avatar_url"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/meiqia/core/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Lcom/meiqia/core/bean/MQClient;)J
    .locals 2

    const-string v0, "mq_current_ticket_id"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "mq_browser_id"

    invoke-virtual {p0, v0}, Lcom/meiqia/core/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/meiqia/core/bean/MQClient;J)V
    .locals 1

    const-string v0, "mq_conversation_last_msg_time"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/core/a/i;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public f(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mq_register_device_token"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/meiqia/core/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "mq_enterprise_id"

    invoke-virtual {p0, v0}, Lcom/meiqia/core/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "mq_dev_infos"

    invoke-direct {p0, p1, v1}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/meiqia/core/bean/MQClient;J)V
    .locals 1

    const-string v0, "mq_lastRefreshTime"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/core/a/i;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public g(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mq_enterprise_config"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->i(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/meiqia/core/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "mq_aes_key"

    invoke-virtual {p0, v1}, Lcom/meiqia/core/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "mq_client_infos"

    invoke-direct {p0, p1, v1}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/meiqia/core/bean/MQClient;J)V
    .locals 1

    const-string v0, "last_refresh_ent_config"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->i(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/core/a/i;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "mq_user_id"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "mq_client_update_infos"

    invoke-direct {p0, p1, v1}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;
    .locals 1

    const-string v0, "mq_client_avatar_url"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/meiqia/core/bean/MQClient;)J
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "mq_conversation_onstop_time"

    invoke-direct {p0, p1, v1}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public l(Lcom/meiqia/core/bean/MQClient;)J
    .locals 4

    iget-object v0, p0, Lcom/meiqia/core/a/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "mq_conversation_last_msg_time"

    invoke-direct {p0, p1, v1}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/meiqia/core/a/i;->k(Lcom/meiqia/core/bean/MQClient;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public m(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;
    .locals 1

    const-string v0, "mq_register_device_token"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/meiqia/core/bean/MQClient;)Z
    .locals 1

    const-string v0, "mq_isRegisterDeviceTokenSuc"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public o(Lcom/meiqia/core/bean/MQClient;)J
    .locals 2

    const-string v0, "mq_lastRefreshTime"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public p(Lcom/meiqia/core/bean/MQClient;)J
    .locals 2

    const-string v0, "last_refresh_ent_config"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->i(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public q(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;
    .locals 1

    const-string v0, "mq_enterprise_config"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->i(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public r(Lcom/meiqia/core/bean/MQClient;)Z
    .locals 1

    const-string v0, "mq_isFirstRefreshMQInquireForm"

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->i(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
