.class Lcom/meiqia/core/d$24$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$24;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/d$24;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$24;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$24$1;->a:Lcom/meiqia/core/d$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$24$1;->a:Lcom/meiqia/core/d$24;

    iget-object v0, v0, Lcom/meiqia/core/d$24;->a:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-interface {v0}, Lcom/meiqia/core/callback/SimpleCallback;->onSuccess()V

    return-void
.end method
