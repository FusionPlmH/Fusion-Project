.class Lcom/meiqia/core/MeiQiaService$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/core/MeiQiaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/MeiQiaService;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/meiqia/core/MeiQiaService;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MeiQiaService$a;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/meiqia/core/MeiQiaService$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/meiqia/core/MeiQiaService;Lcom/meiqia/core/MeiQiaService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/core/MeiQiaService$a;-><init>(Lcom/meiqia/core/MeiQiaService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/meiqia/core/a/k;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/meiqia/core/MeiQiaService$a;->b:Z

    if-nez p1, :cond_0

    const-string p1, "socket net reconnect"

    invoke-static {p1}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/core/MeiQiaService$a;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p1}, Lcom/meiqia/core/MeiQiaService;->l(Lcom/meiqia/core/MeiQiaService;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/meiqia/core/MeiQiaService$a;->b:Z

    goto :goto_0

    :cond_1
    const-string p1, "ACTION_MQ_CONVERSATION_CLOSE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/meiqia/core/MeiQiaService$a;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {p1}, Lcom/meiqia/core/MeiQiaService;->n(Lcom/meiqia/core/MeiQiaService;)V

    const-string p1, "reset retryCount"

    invoke-static {p1}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
