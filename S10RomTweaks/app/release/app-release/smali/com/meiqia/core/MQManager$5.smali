.class final Lcom/meiqia/core/MQManager$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/AppLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MQManager;->setAppLifecycleListener(Landroid/app/Application;Lcom/meiqia/core/callback/AppLifecycleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/AppLifecycleListener;


# direct methods
.method constructor <init>(Lcom/meiqia/core/callback/AppLifecycleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MQManager$5;->a:Lcom/meiqia/core/callback/AppLifecycleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public background()V
    .locals 1

    const-string v0, "background"

    invoke-static {v0}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/core/MQManager$5;->a:Lcom/meiqia/core/callback/AppLifecycleListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/meiqia/core/callback/AppLifecycleListener;->background()V

    :cond_0
    return-void
.end method

.method public foreground()V
    .locals 1

    const-string v0, "foreground"

    invoke-static {v0}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/core/MQManager$5;->a:Lcom/meiqia/core/callback/AppLifecycleListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/meiqia/core/callback/AppLifecycleListener;->foreground()V

    :cond_0
    return-void
.end method
