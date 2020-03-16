.class Lcom/meiqia/core/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/core/d$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/meiqia/core/bean/MQClient; = null

.field private static b:I = 0x64


# instance fields
.field private final c:Lcom/meiqia/core/a/i;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/meiqia/core/f;

.field private final f:Landroid/content/Context;

.field private g:Lcom/meiqia/core/bean/MQAgent;

.field private h:Lcom/meiqia/core/bean/MQConversation;

.field private i:Lcom/meiqia/core/bean/MQEnterpriseConfig;

.field private j:Lcom/meiqia/core/g;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/meiqia/core/MQScheduleRule;

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meiqia/core/a/i;Lcom/meiqia/core/f;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/meiqia/core/MQScheduleRule;->REDIRECT_ENTERPRISE:Lcom/meiqia/core/MQScheduleRule;

    iput-object v0, p0, Lcom/meiqia/core/d;->m:Lcom/meiqia/core/MQScheduleRule;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meiqia/core/d;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meiqia/core/d;->o:Z

    iput-object p1, p0, Lcom/meiqia/core/d;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    iput-object p4, p0, Lcom/meiqia/core/d;->d:Landroid/os/Handler;

    invoke-static {}, Lcom/meiqia/core/g;->a()Lcom/meiqia/core/g;

    move-result-object p1

    iput-object p1, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    iput-object p3, p0, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    return-object p0
.end method

.method private a(JLcom/meiqia/core/g$i;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v1, Lcom/meiqia/core/d$28;

    invoke-direct {v1, p0, p3}, Lcom/meiqia/core/d$28;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/g$i;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/meiqia/core/g;->a(JLcom/meiqia/core/g$e;)V

    return-void
.end method

.method private a(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;Ljava/util/List;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meiqia/core/bean/MQClient;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;",
            "Lcom/meiqia/core/callback/OnGetMessageListCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enterprise_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "begin"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/meiqia/core/d$21;

    invoke-direct {v1, p0, p3, p4}, Lcom/meiqia/core/d$21;-><init>(Lcom/meiqia/core/d;Ljava/util/List;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/meiqia/core/g;->a(Ljava/util/Map;Ljava/lang/String;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method

.method private a(Lcom/meiqia/core/bean/MQConversation;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d;->h:Lcom/meiqia/core/bean/MQConversation;

    return-void
.end method

.method private a(Lcom/meiqia/core/bean/MQMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->j(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/core/bean/MQMessage;->setAvatar(Ljava/lang/String;)V

    const-string v0, "client"

    invoke-virtual {p1, v0}, Lcom/meiqia/core/bean/MQMessage;->setFrom_type(Ljava/lang/String;)V

    const-string v0, "message"

    invoke-virtual {p1, v0}, Lcom/meiqia/core/bean/MQMessage;->setType(Ljava/lang/String;)V

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/meiqia/core/bean/MQMessage;->setTrack_id(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/d;->h:Lcom/meiqia/core/bean/MQConversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/core/d;->g:Lcom/meiqia/core/bean/MQAgent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQAgent;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/core/bean/MQMessage;->setAgent_nickname(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/core/d;->h:Lcom/meiqia/core/bean/MQConversation;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQConversation;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setConversation_id(J)V

    iget-object v0, p0, Lcom/meiqia/core/d;->h:Lcom/meiqia/core/bean/MQConversation;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQConversation;->getAgent_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/core/bean/MQMessage;->setAgent_id(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/core/d;->h:Lcom/meiqia/core/bean/MQConversation;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQConversation;->getEnterprise_id()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setEnterprise_id(J)V

    :cond_1
    return-void
.end method

.method protected static a(Lcom/meiqia/core/bean/MQMessage;J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meiqia/core/bean/MQMessage;->setExtra(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/meiqia/core/bean/MQMessage;->setId(J)V

    return-void
.end method

.method private a(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/d;->g:Lcom/meiqia/core/bean/MQAgent;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getBrowserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "browser_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "track_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ent_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v2, Lcom/meiqia/core/d$46;

    invoke-direct {v2, p0, p1, p2}, Lcom/meiqia/core/d$46;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    const-string p1, "https://eco-api.meiqia.com/client/send_msg"

    invoke-virtual {v1, p1, v0, v2}, Lcom/meiqia/core/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$h;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/meiqia/core/bean/MQMessage;Ljava/util/Map;Lcom/meiqia/core/g$f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meiqia/core/bean/MQMessage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/g$f;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->a(Lcom/meiqia/core/bean/MQClient;)J

    move-result-wide v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v3}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "enterprise_id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v3}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "track_id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v3}, Lcom/meiqia/core/bean/MQClient;->getVisitId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "visit_id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "channel"

    const-string v4, "sdk"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "conv_id"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content_type"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    invoke-virtual {p1, v2, p3}, Lcom/meiqia/core/g;->a(Ljava/util/Map;Lcom/meiqia/core/g$f;)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/meiqia/core/d;->a(ZLjava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;Ljava/util/List;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;Ljava/util/List;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQConversation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQConversation;)V

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Ljava/util/Map;Lcom/meiqia/core/g$f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/bean/MQMessage;Ljava/util/Map;Lcom/meiqia/core/g$f;)V

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/d;Lcom/meiqia/core/g$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/g$a;)V

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/d;Ljava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/d;Ljava/util/List;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/core/d;->a(Ljava/util/List;J)V

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/d;Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/core/d;->a(Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/d;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meiqia/core/d;->a(Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/d;Ljava/util/Map;Ljava/util/List;Lcom/meiqia/core/g$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/core/d;->a(Ljava/util/Map;Ljava/util/List;Lcom/meiqia/core/g$a;)V

    return-void
.end method

.method private a(Lcom/meiqia/core/g$a;)V
    .locals 1

    new-instance v0, Lcom/meiqia/core/d$44;

    invoke-direct {v0, p0, p1}, Lcom/meiqia/core/d$44;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/g$a;)V

    invoke-direct {p0, v0}, Lcom/meiqia/core/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->g(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    invoke-virtual {v1, p1}, Lcom/meiqia/core/f;->a(Ljava/lang/String;)Lcom/meiqia/core/bean/MQClient;

    move-result-object v5

    iget-object v1, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    invoke-virtual {v1, v5}, Lcom/meiqia/core/a/i;->g(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/meiqia/core/d;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/meiqia/core/a/k;->e(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/meiqia/core/a/c;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    new-instance p1, Lcom/meiqia/core/d$17;

    invoke-direct {p1, p0, p2}, Lcom/meiqia/core/d$17;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/SimpleCallback;)V

    invoke-direct {p0, p1}, Lcom/meiqia/core/d;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v8, Lcom/meiqia/core/d$16;

    move-object v2, v8

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/meiqia/core/d$16;-><init>(Lcom/meiqia/core/d;Ljava/lang/String;Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V

    invoke-virtual {v0, p1, v1, v8}, Lcom/meiqia/core/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    if-eqz p2, :cond_2

    new-instance p1, Lcom/meiqia/core/d$18;

    invoke-direct {p1, p0, p2}, Lcom/meiqia/core/d$18;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/SimpleCallback;)V

    invoke-direct {p0, p1}, Lcom/meiqia/core/d;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/g$j;)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x2ff57c

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x58d9bd6

    if-eq v1, v2, :cond_1

    const v2, 0x65b3e32

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "photo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "file"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    :cond_3
    :goto_0
    if-eqz p2, :cond_5

    if-eq p2, v4, :cond_4

    if-eq p2, v3, :cond_7

    const/16 p1, 0x4e21

    const-string p2, "unknown contentType"

    invoke-interface {p3, p1, p2}, Lcom/meiqia/core/g$j;->onFailure(ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance p2, Lcom/meiqia/core/d$5;

    invoke-direct {p2, p0, p3}, Lcom/meiqia/core/d$5;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/g$j;)V

    invoke-virtual {p1, v0, p2, p3}, Lcom/meiqia/core/g;->b(Ljava/io/File;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/meiqia/core/d;->f:Landroid/content/Context;

    invoke-static {p2}, Lcom/meiqia/core/a/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/meiqia/core/d;->o:Z

    if-eqz p2, :cond_6

    invoke-static {v0, p1}, Lcom/meiqia/core/a/b;->a(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    :cond_6
    move-object p1, v0

    :goto_1
    iget-object p2, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v0, Lcom/meiqia/core/d$4;

    invoke-direct {v0, p0, p3}, Lcom/meiqia/core/d$4;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/g$j;)V

    invoke-virtual {p2, p1, v0, p3}, Lcom/meiqia/core/g;->a(Ljava/io/File;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V

    :cond_7
    :goto_2
    return-void

    :catch_0
    const/16 p1, 0x4e1c

    const-string p2, "file not found"

    invoke-interface {p3, p1, p2}, Lcom/meiqia/core/g$j;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;J)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQMessage;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ending"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQMessage;->getCreated_on()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-lez v3, :cond_1

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQMessage;->getFrom_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/SimpleCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    new-instance v10, Lcom/meiqia/core/d$30;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/meiqia/core/d$30;-><init>(Lcom/meiqia/core/d;[ILjava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    const-string v1, "photo"

    invoke-direct {p0, v1, v9, v10}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/g$j;)V

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private a(Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/SimpleCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getBrowserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "browser_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "track_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enterprise_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getVisitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "visit_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meiqia/core/bean/MQMessage;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content_type"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/meiqia/core/bean/MQMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    const-string v5, "content"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "replies"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v2, Lcom/meiqia/core/d$31;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/meiqia/core/d$31;-><init>(Lcom/meiqia/core/d;Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    invoke-virtual {v1, v0, v2}, Lcom/meiqia/core/g;->a(Ljava/util/Map;Lcom/meiqia/core/g$g;)V

    return-void
.end method

.method private a(Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/SimpleCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/meiqia/core/d$32;

    invoke-direct {v0, p0, p2}, Lcom/meiqia/core/d$32;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/SimpleCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/meiqia/core/d;->a(Ljava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/List;Lcom/meiqia/core/g$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;",
            "Lcom/meiqia/core/g$a;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/meiqia/core/d$42;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/meiqia/core/d$42;-><init>(Lcom/meiqia/core/d;Ljava/util/Map;Ljava/util/List;Lcom/meiqia/core/g$a;)V

    invoke-direct {p0, v0, v1}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method

.method static synthetic b(Lcom/meiqia/core/d;)Lcom/meiqia/core/f;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    return-object p0
.end method

.method private b(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
    .locals 7

    iget-object v1, p0, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    iget-object v2, p0, Lcom/meiqia/core/d;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/meiqia/core/d;->l:Ljava/lang/String;

    iget-object v5, p0, Lcom/meiqia/core/d;->m:Lcom/meiqia/core/MQScheduleRule;

    new-instance v6, Lcom/meiqia/core/d$2;

    invoke-direct {v6, p0, p1, p2}, Lcom/meiqia/core/d$2;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/f;Ljava/lang/String;Ljava/lang/String;ZLcom/meiqia/core/MQScheduleRule;Lcom/meiqia/core/g$a;)V

    return-void
.end method

.method private b(Lcom/meiqia/core/bean/MQMessage;Ljava/util/Map;Lcom/meiqia/core/g$f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meiqia/core/bean/MQMessage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/g$f;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->f(Lcom/meiqia/core/bean/MQClient;)J

    move-result-wide v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v3}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "enterprise_id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "type"

    const-string v4, "sdk"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content_type"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "source"

    const-string v4, "client"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    const-string v3, "content"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    invoke-virtual {p1, v2, v0, v1, p3}, Lcom/meiqia/core/g;->a(Ljava/util/Map;JLcom/meiqia/core/g$f;)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/meiqia/core/d;->a(ZLjava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V

    return-void
.end method

.method private b(Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 11

    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->b(Lcom/meiqia/core/bean/MQClient;)J

    move-result-wide v0

    sget-object v2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v2}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v0, v1}, Lcom/meiqia/core/a/j;->a(J)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    sget v5, Lcom/meiqia/core/d;->b:I

    new-instance v10, Lcom/meiqia/core/d$20;

    invoke-direct {v10, p0, p1}, Lcom/meiqia/core/d$20;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    const/4 v6, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/meiqia/core/g;->a(Ljava/lang/String;IIILjava/lang/String;ILcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method

.method static synthetic b(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    return-void
.end method

.method static synthetic b(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Ljava/util/Map;Lcom/meiqia/core/g$f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQMessage;Ljava/util/Map;Lcom/meiqia/core/g$f;)V

    return-void
.end method

.method static synthetic b(Lcom/meiqia/core/d;Ljava/util/Map;Ljava/util/List;Lcom/meiqia/core/g$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/meiqia/core/d;->b(Ljava/util/Map;Ljava/util/List;Lcom/meiqia/core/g$a;)V

    return-void
.end method

.method private b(Ljava/util/Map;Ljava/util/List;Lcom/meiqia/core/g$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;",
            "Lcom/meiqia/core/g$a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v1, Lcom/meiqia/core/d$43;

    invoke-direct {v1, p0, p2, p3}, Lcom/meiqia/core/d$43;-><init>(Lcom/meiqia/core/d;Ljava/util/List;Lcom/meiqia/core/g$a;)V

    invoke-virtual {v0, p1, v1}, Lcom/meiqia/core/g;->a(Ljava/util/Map;Lcom/meiqia/core/g$a;)V

    return-void
.end method

.method static synthetic c(Lcom/meiqia/core/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/meiqia/core/d;->m()V

    return-void
.end method

.method static synthetic d(Lcom/meiqia/core/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/core/d;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/meiqia/core/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/meiqia/core/d;->n:Z

    return p0
.end method

.method static synthetic f(Lcom/meiqia/core/d;)Lcom/meiqia/core/bean/MQAgent;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/core/d;->g:Lcom/meiqia/core/bean/MQAgent;

    return-object p0
.end method

.method static synthetic g(Lcom/meiqia/core/d;)Lcom/meiqia/core/bean/MQConversation;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/core/d;->h:Lcom/meiqia/core/bean/MQConversation;

    return-object p0
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->n(Lcom/meiqia/core/bean/MQClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->m(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v2, Lcom/meiqia/core/d$7;

    invoke-direct {v2, p0}, Lcom/meiqia/core/d$7;-><init>(Lcom/meiqia/core/d;)V

    invoke-virtual {v1, v0, v2}, Lcom/meiqia/core/g;->a(Ljava/lang/String;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lcom/meiqia/core/d$45;

    invoke-direct {v0, p0}, Lcom/meiqia/core/d$45;-><init>(Lcom/meiqia/core/d;)V

    invoke-direct {p0, v0}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method

.method public a(IIJILcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 14

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static/range {p3 .. p4}, Lcom/meiqia/core/a/j;->a(J)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    iget-object v1, v0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v13, Lcom/meiqia/core/d$6;

    move-object v7, v13

    move-object v8, p0

    move-wide/from16 v9, p3

    move v11, p1

    move-object/from16 v12, p6

    invoke-direct/range {v7 .. v12}, Lcom/meiqia/core/d$6;-><init>(Lcom/meiqia/core/d;JILcom/meiqia/core/callback/OnGetMessageListCallback;)V

    move v3, p1

    move/from16 v4, p2

    move/from16 v7, p5

    move-object v8, v13

    invoke-virtual/range {v1 .. v8}, Lcom/meiqia/core/g;->a(Ljava/lang/String;IIILjava/lang/String;ILcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    invoke-virtual {v0, p1, p2}, Lcom/meiqia/core/f;->a(J)V

    return-void
.end method

.method public a(JJILcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v1, Lcom/meiqia/core/d$38;

    invoke-direct {v1, p0, p1, p2, p6}, Lcom/meiqia/core/d$38;-><init>(Lcom/meiqia/core/d;JLcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;)V

    invoke-virtual {v0, p3, p4, p5, v1}, Lcom/meiqia/core/g;->a(JILcom/meiqia/core/callback/OnEvaluateRobotAnswerCallback;)V

    return-void
.end method

.method public a(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    invoke-virtual {v0, p1, p2}, Lcom/meiqia/core/f;->b(J)Lcom/meiqia/core/bean/MQMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lcom/meiqia/core/bean/MQMessage;->setIs_read(Z)V

    iget-object p2, p0, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    invoke-virtual {p2, p1}, Lcom/meiqia/core/f;->a(Lcom/meiqia/core/bean/MQMessage;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meiqia/core/MeiQiaService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_OPEN_SOCKET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/meiqia/core/d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Lcom/meiqia/core/bean/MQAgent;)V
    .locals 3

    iput-object p1, p0, Lcom/meiqia/core/d;->g:Lcom/meiqia/core/bean/MQAgent;

    iget-object v0, p0, Lcom/meiqia/core/d;->g:Lcom/meiqia/core/bean/MQAgent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQAgent;->isRobot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/core/a/i;->a(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/MQMessageManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meiqia/core/MQMessageManager;->setCurrentAgent(Lcom/meiqia/core/bean/MQAgent;)V

    return-void
.end method

.method public a(Lcom/meiqia/core/bean/MQClient;)V
    .locals 2

    if-eqz p1, :cond_0

    sput-object p1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current info: t = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " b "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQClient;->getBrowserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " e "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/meiqia/core/bean/MQClientEvent;Lcom/meiqia/core/callback/OnClientInfoCallback;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ent_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "track_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQClientEvent;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQClientEvent;->getEvent()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "metadata"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v1, Lcom/meiqia/core/d$14;

    invoke-direct {v1, p0, p2}, Lcom/meiqia/core/d$14;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnClientInfoCallback;)V

    invoke-virtual {p1, v0, v1}, Lcom/meiqia/core/g;->b(Ljava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V

    return-void
.end method

.method public a(Lcom/meiqia/core/bean/MQMessage;JLjava/util/Map;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meiqia/core/bean/MQMessage;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/OnMessageSendCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->a(Lcom/meiqia/core/bean/MQClient;)J

    move-result-wide v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v3, -0x1

    cmp-long v5, p2, v3

    if-eqz v5, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "category_id"

    invoke-interface {v2, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    cmp-long p2, v0, v3

    if-eqz p2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "conv_id"

    invoke-interface {v2, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {p2}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "enterprise_id"

    invoke-interface {v2, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {p2}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "track_id"

    invoke-interface {v2, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {p2}, Lcom/meiqia/core/bean/MQClient;->getVisitId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "visit_id"

    invoke-interface {v2, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "channel"

    const-string p3, "sdk"

    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object p2

    const-string p3, "content_type"

    invoke-interface {v2, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getContent()Ljava/lang/String;

    move-result-object p2

    const-string p3, "content"

    invoke-interface {v2, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance p3, Lcom/meiqia/core/d$27;

    invoke-direct {p3, p0, p1, p5}, Lcom/meiqia/core/d$27;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    invoke-virtual {p2, v2, p3}, Lcom/meiqia/core/g;->a(Ljava/util/Map;Lcom/meiqia/core/g$f;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p4, p2}, Lcom/meiqia/core/d;->a(ZLjava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V

    return-void
.end method

.method public a(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnProgressCallback;)V
    .locals 9

    invoke-static {}, Lcom/meiqia/core/a/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/meiqia/core/d$35;

    invoke-direct {p1, p0, p2}, Lcom/meiqia/core/d$35;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnProgressCallback;)V

    invoke-direct {p0, p1}, Lcom/meiqia/core/d;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getConversation_id()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getId()J

    move-result-wide v3

    sget-object v5, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v5}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v6}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/meiqia/core/g;->a(JJLjava/lang/String;JLcom/meiqia/core/callback/SimpleCallback;)V

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "filename"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v2, Lcom/meiqia/core/d$36;

    invoke-direct {v2, p0, p2}, Lcom/meiqia/core/d$36;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnProgressCallback;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/meiqia/core/g;->a(Lcom/meiqia/core/bean/MQMessage;Ljava/io/File;Lcom/meiqia/core/callback/OnProgressCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lcom/meiqia/core/d$37;

    invoke-direct {p1, p0, p2}, Lcom/meiqia/core/d$37;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnProgressCallback;)V

    invoke-direct {p0, p1}, Lcom/meiqia/core/d;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/meiqia/core/bean/MQMessage;Ljava/util/Map;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meiqia/core/bean/MQMessage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/OnMessageSendCallback;",
            ")V"
        }
    .end annotation

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQMessage;JLjava/util/Map;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    return-void
.end method

.method public a(Lcom/meiqia/core/callback/OnEndConversationCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v1, Lcom/meiqia/core/d$23;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/core/d$23;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnEndConversationCallback;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/core/g;->a(Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method

.method public a(Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v1, Lcom/meiqia/core/d$a;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/core/d$a;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/core/g;->a(Lcom/meiqia/core/callback/OnGetClientCallback;)V

    return-void
.end method

.method protected a(Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->d(Lcom/meiqia/core/bean/MQClient;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/meiqia/core/d$22;

    invoke-direct {v0, p0, p1}, Lcom/meiqia/core/d$22;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    invoke-direct {p0, v0}, Lcom/meiqia/core/d;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Lcom/meiqia/core/d$33;

    invoke-direct {v0, p0, p1}, Lcom/meiqia/core/d$33;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    invoke-direct {p0, v0}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method

.method public a(Lcom/meiqia/core/callback/OnInitCallback;)V
    .locals 2

    invoke-virtual {p0}, Lcom/meiqia/core/d;->d()Lcom/meiqia/core/bean/MQClient;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/core/d;->l()Lcom/meiqia/core/bean/MQClient;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    new-instance v0, Lcom/meiqia/core/d$1;

    invoke-direct {v0, p0, p1}, Lcom/meiqia/core/d$1;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnInitCallback;)V

    invoke-virtual {p0, v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/meiqia/core/callback/OnInitCallback;->onSuccess(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Lcom/meiqia/core/callback/OnTicketCategoriesCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v1, Lcom/meiqia/core/d$29;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/core/d$29;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnTicketCategoriesCallback;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/core/g;->a(Lcom/meiqia/core/g$e;)V

    return-void
.end method

.method public a(Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->p(Lcom/meiqia/core/bean/MQClient;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x927c0

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x4e20

    const-string v1, "request limit"

    invoke-interface {p1, v0, v1}, Lcom/meiqia/core/callback/SimpleCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ent_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "track_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v2, Lcom/meiqia/core/d$34;

    invoke-direct {v2, p0, p1}, Lcom/meiqia/core/d$34;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/SimpleCallback;)V

    invoke-virtual {v1, v0, v2}, Lcom/meiqia/core/g;->a(Ljava/util/Map;Lcom/meiqia/core/g$e;)V

    return-void
.end method

.method public a(Lcom/meiqia/core/f;Ljava/lang/String;Ljava/lang/String;ZLcom/meiqia/core/MQScheduleRule;Lcom/meiqia/core/g$a;)V
    .locals 5

    if-nez p4, :cond_0

    sget-boolean v0, Lcom/meiqia/core/MeiQiaService;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d;->g:Lcom/meiqia/core/bean/MQAgent;

    if-eqz v0, :cond_0

    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->d(Lcom/meiqia/core/bean/MQClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p6}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/g$a;)V

    return-void

    :cond_0
    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getVisitId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v2}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "group_token"

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "agent_token"

    invoke-interface {v3, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p5}, Lcom/meiqia/core/MQScheduleRule;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "fallback"

    invoke-interface {v3, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "visit_id"

    invoke-interface {v3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "track_id"

    invoke-interface {v3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "ent_id"

    invoke-interface {v3, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "exclude_agent_tokens"

    const/4 p5, 0x1

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/meiqia/core/d;->g:Lcom/meiqia/core/bean/MQAgent;

    if-eqz p4, :cond_3

    new-array v0, p5, [Ljava/lang/String;

    invoke-virtual {p4}, Lcom/meiqia/core/bean/MQAgent;->getId()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v0, p2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-interface {v3, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p4, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {p4, v0}, Lcom/meiqia/core/a/i;->e(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    new-array p4, p5, [Ljava/lang/String;

    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->e(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, p2

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v3, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "queueing"

    invoke-interface {v3, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object p3, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {p2, p3}, Lcom/meiqia/core/a/i;->d(Lcom/meiqia/core/bean/MQClient;)Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p1, 0x0

    invoke-direct {p0, v3, p1, p6}, Lcom/meiqia/core/d;->a(Ljava/util/Map;Ljava/util/List;Lcom/meiqia/core/g$a;)V

    goto :goto_0

    :cond_5
    new-instance p2, Lcom/meiqia/core/d$11;

    invoke-direct {p2, p0, p1, v3, p6}, Lcom/meiqia/core/d$11;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/f;Ljava/util/Map;Lcom/meiqia/core/g$a;)V

    invoke-virtual {p0, p2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/meiqia/core/g$d;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v1, Lcom/meiqia/core/d$41;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/core/d$41;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/g$d;)V

    invoke-virtual {v0, v1}, Lcom/meiqia/core/g;->a(Lcom/meiqia/core/g$d;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d;->g:Lcom/meiqia/core/bean/MQAgent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQAgent;->getAgentId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    invoke-virtual {v1, p1, v0}, Lcom/meiqia/core/g;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v1, Lcom/meiqia/core/d$24;

    invoke-direct {v1, p0, p4}, Lcom/meiqia/core/d$24;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/SimpleCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/meiqia/core/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v1, Lcom/meiqia/core/d$a;

    invoke-direct {v1, p0, p2}, Lcom/meiqia/core/d$a;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;)V

    invoke-virtual {v0, p1, v1}, Lcom/meiqia/core/g;->a(Ljava/lang/String;Lcom/meiqia/core/callback/OnGetClientCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v7, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->k(Lcom/meiqia/core/bean/MQClient;)J

    move-result-wide v0

    iget-object v2, v7, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v3, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v2, v3}, Lcom/meiqia/core/a/i;->l(Lcom/meiqia/core/bean/MQClient;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/meiqia/core/a/j;->a(J)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v3}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v4}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    move-object/from16 v6, p2

    move-object v13, v2

    move v12, v3

    move-object v9, v4

    move-object v2, v5

    move-wide v4, v0

    goto :goto_2

    :cond_1
    iget-object v1, v7, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    invoke-virtual {v1, v0}, Lcom/meiqia/core/f;->a(Ljava/lang/String;)Lcom/meiqia/core/bean/MQClient;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, v7, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    invoke-virtual {v1, v0}, Lcom/meiqia/core/f;->b(Ljava/lang/String;)Lcom/meiqia/core/bean/MQClient;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    const/4 v0, 0x0

    move-object/from16 v6, p2

    invoke-virtual {v7, v0, v6}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void

    :cond_3
    move-object/from16 v6, p2

    iget-object v0, v7, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->k(Lcom/meiqia/core/bean/MQClient;)J

    move-result-wide v2

    iget-object v0, v7, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->l(Lcom/meiqia/core/bean/MQClient;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move-wide v2, v4

    :goto_1
    invoke-static {v2, v3}, Lcom/meiqia/core/a/j;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v5

    move-object v13, v0

    move v12, v4

    move-object v9, v5

    move-wide v4, v2

    move-object v2, v1

    :goto_2
    iget-object v8, v7, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    sget v10, Lcom/meiqia/core/d;->b:I

    const/4 v11, 0x0

    const/4 v14, 0x1

    new-instance v15, Lcom/meiqia/core/d$19;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v3, v13

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/meiqia/core/d$19;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;JLcom/meiqia/core/callback/OnGetMessageListCallback;)V

    invoke-virtual/range {v8 .. v15}, Lcom/meiqia/core/g;->a(Ljava/lang/String;IIILjava/lang/String;ILcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/meiqia/core/callback/OnInitCallback;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x4e21

    const-string v0, "customizedId can\'t be empty"

    invoke-interface {p2, p1, v0}, Lcom/meiqia/core/callback/OnInitCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/f;->b(Ljava/lang/String;)Lcom/meiqia/core/bean/MQClient;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v1, Lcom/meiqia/core/d$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/meiqia/core/d$15;-><init>(Lcom/meiqia/core/d;Ljava/lang/String;Lcom/meiqia/core/callback/OnInitCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/meiqia/core/g;->b(Ljava/lang/String;Lcom/meiqia/core/callback/OnGetClientCallback;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/meiqia/core/callback/OnInitCallback;->onSuccess(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1, p1}, Lcom/meiqia/core/a/i;->f(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V

    new-instance p1, Lcom/meiqia/core/d$9;

    invoke-direct {p1, p0, p2}, Lcom/meiqia/core/d$9;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/meiqia/core/d;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_1
    new-instance p1, Lcom/meiqia/core/d$8;

    invoke-direct {p1, p0, p2}, Lcom/meiqia/core/d$8;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/MQScheduleRule;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/meiqia/core/d;->k:Ljava/lang/String;

    iput-object p3, p0, Lcom/meiqia/core/d;->m:Lcom/meiqia/core/MQScheduleRule;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
    .locals 1

    new-instance v0, Lcom/meiqia/core/bean/MQMessage;

    invoke-direct {v0, p2}, Lcom/meiqia/core/bean/MQMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/meiqia/core/bean/MQMessage;->setContent(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/meiqia/core/bean/MQMessage;->setMedia_url(Ljava/lang/String;)V

    const-string p1, "client"

    invoke-virtual {v0, p1}, Lcom/meiqia/core/bean/MQMessage;->setFrom_type(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQMessage;)V

    iget-object p1, p0, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    invoke-virtual {p1, v0}, Lcom/meiqia/core/f;->a(Lcom/meiqia/core/bean/MQMessage;)V

    const-string p1, "text"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0, p4}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    return-void

    :cond_0
    new-instance p1, Lcom/meiqia/core/d$3;

    invoke-direct {p1, p0, v0, p2, p4}, Lcom/meiqia/core/d$3;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    invoke-direct {p0, p2, p3, p1}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/g$j;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/SimpleCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/meiqia/core/bean/MQMessage;

    const-string v1, "text"

    invoke-direct {v0, v1}, Lcom/meiqia/core/bean/MQMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/meiqia/core/bean/MQMessage;->setContent(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meiqia/core/d;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/meiqia/core/d;->a(Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/SimpleCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/f;->a(Ljava/lang/String;)Lcom/meiqia/core/bean/MQClient;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/f;->b(Ljava/lang/String;)Lcom/meiqia/core/bean/MQClient;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/meiqia/core/d$39;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/meiqia/core/d$39;-><init>(Lcom/meiqia/core/d;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Lcom/meiqia/core/callback/OnInitCallback;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/meiqia/core/d;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method

.method public a(Ljava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/OnClientInfoCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "avatar"

    :try_start_0
    invoke-static {p1}, Lcom/meiqia/core/a/c;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v3, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v2, v3}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/meiqia/core/callback/OnClientInfoCallback;->onSuccess()V

    return-void

    :cond_0
    sget-object v2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v2}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v3}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v4}, Lcom/meiqia/core/a/c;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "attrs"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "track_id"

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ent_id"

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "visit_id"

    sget-object v3, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v3}, Lcom/meiqia/core/bean/MQClient;->getVisitId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v3, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/meiqia/core/a/i;->e(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v0, Lcom/meiqia/core/d$12;

    invoke-direct {v0, p0, v1, p2}, Lcom/meiqia/core/d$12;-><init>(Lcom/meiqia/core/d;Ljava/lang/String;Lcom/meiqia/core/callback/OnClientInfoCallback;)V

    invoke-virtual {p1, v5, v0}, Lcom/meiqia/core/g;->a(Ljava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    if-eqz p2, :cond_2

    const/16 p1, 0x4e21

    const-string v0, "parameter error"

    invoke-interface {p2, p1, v0}, Lcom/meiqia/core/callback/OnClientInfoCallback;->onFailure(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/meiqia/core/d;->n:Z

    iget-boolean p1, p0, Lcom/meiqia/core/d;->n:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/core/d;->g:Lcom/meiqia/core/bean/MQAgent;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQAgent;->isRobot()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    iget-object v1, p0, Lcom/meiqia/core/d;->g:Lcom/meiqia/core/bean/MQAgent;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQAgent;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/meiqia/core/a/i;->a(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(ZLcom/meiqia/core/bean/MQMessage;Ljava/util/Map;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/meiqia/core/bean/MQMessage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/OnMessageSendCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/meiqia/core/d$25;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/meiqia/core/d$25;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;ZLcom/meiqia/core/callback/OnMessageSendCallback;)V

    iget-object p1, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object p4, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {p1, p4}, Lcom/meiqia/core/a/i;->f(Lcom/meiqia/core/bean/MQClient;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    invoke-direct {p0, p2, p3, v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQMessage;Ljava/util/Map;Lcom/meiqia/core/g$f;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/meiqia/core/d$26;

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/meiqia/core/d$26;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Ljava/util/Map;Lcom/meiqia/core/g$f;)V

    invoke-direct {p0, v1, v2, p1}, Lcom/meiqia/core/d;->a(JLcom/meiqia/core/g$i;)V

    :goto_0
    return-void
.end method

.method public a(ZLjava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/OnClientInfoCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "avatar"

    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/meiqia/core/a/i;->e(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/meiqia/core/d;->a(Ljava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->i(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/meiqia/core/a/c;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lcom/meiqia/core/callback/OnClientInfoCallback;->onSuccess()V

    return-void

    :cond_2
    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getEnterpriseId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/meiqia/core/a/c;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "attrs"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "track_id"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ent_id"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "visit_id"

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getVisitId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "overwrite"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v1, Lcom/meiqia/core/d$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/meiqia/core/d$13;-><init>(Lcom/meiqia/core/d;ZLjava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V

    invoke-virtual {v0, v3, v1}, Lcom/meiqia/core/g;->a(Ljava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    if-eqz p3, :cond_3

    const/16 p1, 0x4e21

    const-string p2, "parameter error"

    invoke-interface {p3, p1, p2}, Lcom/meiqia/core/callback/OnClientInfoCallback;->onFailure(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    invoke-virtual {v0}, Lcom/meiqia/core/f;->a()V

    return-void
.end method

.method public b(J)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    invoke-virtual {v0, p1, p2}, Lcom/meiqia/core/f;->b(J)Lcom/meiqia/core/bean/MQMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/meiqia/core/bean/MQMessage;->setAlreadyFeedback(Z)V

    iget-object p2, p0, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    invoke-virtual {p2, p1}, Lcom/meiqia/core/f;->a(Lcom/meiqia/core/bean/MQMessage;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->o(Lcom/meiqia/core/bean/MQClient;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x5

    const/4 v1, 0x2

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    invoke-interface {p2}, Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;->onSuccess()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v1, Lcom/meiqia/core/d$10;

    invoke-direct {v1, p0, p2}, Lcom/meiqia/core/d$10;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/meiqia/core/g;->b(Ljava/lang/String;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meiqia/core/callback/SimpleCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/core/d;->j:Lcom/meiqia/core/g;

    new-instance v1, Lcom/meiqia/core/d$40;

    invoke-direct {v1, p0, p4}, Lcom/meiqia/core/d$40;-><init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/SimpleCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/meiqia/core/g;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/core/d;->o:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/meiqia/core/bean/MQClient;
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    invoke-virtual {v0}, Lcom/meiqia/core/a/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    invoke-virtual {v1, v0}, Lcom/meiqia/core/f;->a(Ljava/lang/String;)Lcom/meiqia/core/bean/MQClient;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/meiqia/core/bean/MQAgent;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d;->g:Lcom/meiqia/core/bean/MQAgent;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/core/d;->n:Z

    return v0
.end method

.method public g()Z
    .locals 1

    sget-boolean v0, Lcom/meiqia/core/MeiQiaService;->d:Z

    return v0
.end method

.method public h()Lcom/meiqia/core/bean/MQEnterpriseConfig;
    .locals 4

    iget-object v0, p0, Lcom/meiqia/core/d;->i:Lcom/meiqia/core/bean/MQEnterpriseConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;

    invoke-direct {v0}, Lcom/meiqia/core/bean/MQEnterpriseConfig;-><init>()V

    iput-object v0, p0, Lcom/meiqia/core/d;->i:Lcom/meiqia/core/bean/MQEnterpriseConfig;

    iget-object v0, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->q(Lcom/meiqia/core/bean/MQClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/core/d;->i:Lcom/meiqia/core/bean/MQEnterpriseConfig;

    iget-object v2, p0, Lcom/meiqia/core/d;->c:Lcom/meiqia/core/a/i;

    sget-object v3, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-static {v0, v1, v2, v3}, Lcom/meiqia/core/a/c;->a(Lcom/meiqia/core/bean/MQEnterpriseConfig;Lorg/json/JSONObject;Lcom/meiqia/core/a/i;Lcom/meiqia/core/bean/MQClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/d;->i:Lcom/meiqia/core/bean/MQEnterpriseConfig;

    return-object v0
.end method

.method public i()Lcom/meiqia/core/bean/MQInquireForm;
    .locals 5

    invoke-virtual {p0}, Lcom/meiqia/core/d;->h()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->form:Lcom/meiqia/core/bean/MQEnterpriseConfig$Form;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$Form;->getForm_def()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/meiqia/core/bean/MQInquireForm;

    invoke-direct {v1}, Lcom/meiqia/core/bean/MQInquireForm;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "version"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lcom/meiqia/core/bean/MQInquireForm;->setVersion(J)V

    const-string v0, "captcha"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/meiqia/core/bean/MQInquireForm;->setCaptcha(Z)V

    const-string v0, "inputs"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/meiqia/core/bean/MQInquireForm;->setInputs(Lorg/json/JSONObject;)V

    const-string v0, "menus"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/meiqia/core/bean/MQInquireForm;->setMenus(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/meiqia/core/d;->h()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->survey:Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;->isHas_submitted_form()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/meiqia/core/bean/MQInquireForm;->setSubmitForm(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method public j()V
    .locals 1

    invoke-static {}, Lcom/meiqia/core/g;->a()Lcom/meiqia/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/g;->c()V

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQAgent;)V

    iput-object v0, p0, Lcom/meiqia/core/d;->i:Lcom/meiqia/core/bean/MQEnterpriseConfig;

    return-void
.end method

.method public l()Lcom/meiqia/core/bean/MQClient;
    .locals 3

    new-instance v0, Lcom/meiqia/core/a/i;

    iget-object v1, p0, Lcom/meiqia/core/d;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meiqia/core/a/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/meiqia/core/a/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/meiqia/core/a/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->b(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/meiqia/core/a/k;->a(Ljava/lang/String;Lcom/meiqia/core/a/i;)Lcom/meiqia/core/bean/MQClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/meiqia/core/bean/MQClient;->setAppKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/meiqia/core/d;->e:Lcom/meiqia/core/f;

    invoke-virtual {v1, v0}, Lcom/meiqia/core/f;->a(Lcom/meiqia/core/bean/MQClient;)V

    :cond_0
    return-object v0
.end method
