.class Lcom/meiqia/core/d$46$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$46;->a(Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/d$46;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$46;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$46$1;->a:Lcom/meiqia/core/d$46;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/d$46$1;->a:Lcom/meiqia/core/d$46;

    iget-object v0, v0, Lcom/meiqia/core/d$46;->b:Lcom/meiqia/core/callback/OnMessageSendCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$46$1;->a:Lcom/meiqia/core/d$46;

    iget-object v0, v0, Lcom/meiqia/core/d$46;->b:Lcom/meiqia/core/callback/OnMessageSendCallback;

    iget-object v1, p0, Lcom/meiqia/core/d$46$1;->a:Lcom/meiqia/core/d$46;

    iget-object v1, v1, Lcom/meiqia/core/d$46;->a:Lcom/meiqia/core/bean/MQMessage;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/meiqia/core/callback/OnMessageSendCallback;->onSuccess(Lcom/meiqia/core/bean/MQMessage;I)V

    :cond_0
    return-void
.end method
