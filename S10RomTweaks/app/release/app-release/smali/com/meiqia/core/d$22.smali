.class Lcom/meiqia/core/d$22;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/OnGetMessageListCallback;

.field final synthetic b:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$22;->b:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$22;->a:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d$22;->a:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/meiqia/core/callback/OnGetMessageListCallback;->onSuccess(Ljava/util/List;)V

    return-void
.end method
