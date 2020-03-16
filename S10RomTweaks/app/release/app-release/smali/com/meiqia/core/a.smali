.class public Lcom/meiqia/core/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:I

.field private b:Lcom/meiqia/core/callback/AppLifecycleListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meiqia/core/callback/AppLifecycleListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/meiqia/core/a;->a:I

    iput-object p2, p0, Lcom/meiqia/core/a;->b:Lcom/meiqia/core/callback/AppLifecycleListener;

    invoke-direct {p0, p1}, Lcom/meiqia/core/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget v0, p0, Lcom/meiqia/core/a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/meiqia/core/a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/core/a;->b:Lcom/meiqia/core/callback/AppLifecycleListener;

    invoke-interface {p1}, Lcom/meiqia/core/callback/AppLifecycleListener;->foreground()V

    :cond_0
    iget p1, p0, Lcom/meiqia/core/a;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/meiqia/core/a;->a:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    iget p1, p0, Lcom/meiqia/core/a;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/meiqia/core/a;->a:I

    invoke-virtual {p0}, Lcom/meiqia/core/a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/core/a;->b:Lcom/meiqia/core/callback/AppLifecycleListener;

    invoke-interface {p1}, Lcom/meiqia/core/callback/AppLifecycleListener;->background()V

    :cond_0
    return-void
.end method
