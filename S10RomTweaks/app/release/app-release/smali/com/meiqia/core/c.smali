.class Lcom/meiqia/core/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/meiqia/core/c;


# instance fields
.field private final b:Lcom/meiqia/core/a/i;

.field private final c:Lcom/meiqia/core/f;

.field private final d:Lcom/meiqia/core/MQMessageManager;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meiqia/core/c;->e:Landroid/content/Context;

    new-instance v0, Lcom/meiqia/core/a/i;

    invoke-direct {v0, p1}, Lcom/meiqia/core/a/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meiqia/core/c;->b:Lcom/meiqia/core/a/i;

    invoke-static {p1}, Lcom/meiqia/core/f;->a(Landroid/content/Context;)Lcom/meiqia/core/f;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/core/c;->c:Lcom/meiqia/core/f;

    invoke-static {p1}, Lcom/meiqia/core/MQMessageManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQMessageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meiqia/core/c;->d:Lcom/meiqia/core/MQMessageManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meiqia/core/c;->f:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/meiqia/core/c;
    .locals 2

    sget-object v0, Lcom/meiqia/core/c;->a:Lcom/meiqia/core/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/meiqia/core/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/meiqia/core/c;->a:Lcom/meiqia/core/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/meiqia/core/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/meiqia/core/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meiqia/core/c;->a:Lcom/meiqia/core/c;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/meiqia/core/c;->a:Lcom/meiqia/core/c;

    return-object p0
.end method

.method private b(Lcom/meiqia/core/bean/MQMessage;)V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/core/c;->c:Lcom/meiqia/core/f;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/f;->a(Lcom/meiqia/core/bean/MQMessage;)V

    iget-object v0, p0, Lcom/meiqia/core/c;->b:Lcom/meiqia/core/a/i;

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getCreated_on()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/meiqia/core/a/i;->b(Lcom/meiqia/core/bean/MQClient;J)V

    return-void
.end method

.method private c(Lcom/meiqia/core/bean/MQMessage;)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/meiqia/core/c;->c:Lcom/meiqia/core/f;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/f;->b(Lcom/meiqia/core/bean/MQMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getFrom_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/meiqia/core/c;->d(Lcom/meiqia/core/bean/MQMessage;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private d(Lcom/meiqia/core/bean/MQMessage;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/core/c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/meiqia/core/c;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/meiqia/core/c;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private e(Lcom/meiqia/core/bean/MQMessage;)V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/c;->d:Lcom/meiqia/core/MQMessageManager;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/MQMessageManager;->addMQMessage(Lcom/meiqia/core/bean/MQMessage;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "new_msg_received_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "msgId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/meiqia/core/c;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/meiqia/core/a/k;->a(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newMsg received : type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getContent_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  content = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/meiqia/core/bean/MQMessage;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/meiqia/core/c;->c(Lcom/meiqia/core/bean/MQMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/meiqia/core/c;->b(Lcom/meiqia/core/bean/MQMessage;)V

    invoke-direct {p0, p1}, Lcom/meiqia/core/c;->e(Lcom/meiqia/core/bean/MQMessage;)V

    return-void
.end method
