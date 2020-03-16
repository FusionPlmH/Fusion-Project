.class Lcom/meiqia/core/d$44;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Lcom/meiqia/core/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/g$a;

.field final synthetic b:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$44;->b:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$44;->a:Lcom/meiqia/core/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/meiqia/core/d$44;->a:Lcom/meiqia/core/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$44;->b:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->d(Lcom/meiqia/core/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0xa

    new-instance v4, Lcom/meiqia/core/d$44$1;

    invoke-direct {v4, p0}, Lcom/meiqia/core/d$44$1;-><init>(Lcom/meiqia/core/d$44;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meiqia/core/MQManager;->getMQMessageFromDatabase(JILcom/meiqia/core/callback/OnGetMessageListCallback;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meiqia/core/d$44;->b:Lcom/meiqia/core/d;

    invoke-static {v1}, Lcom/meiqia/core/d;->d(Lcom/meiqia/core/d;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/meiqia/core/MeiQiaService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_OPEN_SOCKET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "KEY_BOOLEAN_SYNC_MSG"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/meiqia/core/d$44;->b:Lcom/meiqia/core/d;

    invoke-static {v1}, Lcom/meiqia/core/d;->d(Lcom/meiqia/core/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
