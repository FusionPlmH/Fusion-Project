.class Lcom/meiqia/core/d$27$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$27;->a(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/d$27;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$27;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$27$1;->a:Lcom/meiqia/core/d$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/d$27$1;->a:Lcom/meiqia/core/d$27;

    iget-object v0, v0, Lcom/meiqia/core/d$27;->b:Lcom/meiqia/core/callback/OnMessageSendCallback;

    iget-object v1, p0, Lcom/meiqia/core/d$27$1;->a:Lcom/meiqia/core/d$27;

    iget-object v1, v1, Lcom/meiqia/core/d$27;->a:Lcom/meiqia/core/bean/MQMessage;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/meiqia/core/callback/OnMessageSendCallback;->onSuccess(Lcom/meiqia/core/bean/MQMessage;I)V

    return-void
.end method
