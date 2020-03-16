.class Lcom/meiqia/core/d$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Ljava/lang/String;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;

.field final synthetic b:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$9;->b:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$9;->a:Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$9;->a:Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;

    invoke-interface {v0}, Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;->onSuccess()V

    return-void
.end method
