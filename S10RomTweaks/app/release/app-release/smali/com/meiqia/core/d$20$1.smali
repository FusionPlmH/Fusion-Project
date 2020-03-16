.class Lcom/meiqia/core/d$20$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$20;->onSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/meiqia/core/d$20;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$20;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$20$1;->b:Lcom/meiqia/core/d$20;

    iput-object p2, p0, Lcom/meiqia/core/d$20$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d$20$1;->b:Lcom/meiqia/core/d$20;

    iget-object v0, v0, Lcom/meiqia/core/d$20;->a:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    iget-object v1, p0, Lcom/meiqia/core/d$20$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/meiqia/core/callback/OnGetMessageListCallback;->onSuccess(Ljava/util/List;)V

    return-void
.end method
