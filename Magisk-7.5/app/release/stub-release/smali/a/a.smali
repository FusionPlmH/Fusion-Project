.class public La/a;
.super Landroid/app/AppComponentFactory;
.source ""


# instance fields
.field public a:Ljava/lang/ClassLoader;

.field public b:Landroid/app/AppComponentFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/AppComponentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object v0, p0, La/a;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1

    iget-object p1, p0, La/a;->b:Landroid/app/AppComponentFactory;

    if-eqz p1, :cond_0

    iget-object v0, p0, La/a;->a:Ljava/lang/ClassLoader;

    invoke-static {p2}, La/j0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/AppComponentFactory;->instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-class p1, La/t;

    invoke-virtual {p0, p2, p1}, La/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    :goto_0
    return-object p1
.end method

.method public instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .locals 0

    iget-object p2, p0, La/a;->a:Ljava/lang/ClassLoader;

    if-nez p2, :cond_0

    iput-object p1, p0, La/a;->a:Ljava/lang/ClassLoader;

    :cond_0
    new-instance p1, La/l;

    invoke-direct {p1, p0}, La/l;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;
    .locals 1

    iget-object v0, p0, La/a;->a:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    iput-object p1, p0, La/a;->a:Ljava/lang/ClassLoader;

    :cond_0
    iget-object p1, p0, La/a;->b:Landroid/app/AppComponentFactory;

    if-eqz p1, :cond_1

    iget-object v0, p0, La/a;->a:Ljava/lang/ClassLoader;

    invoke-static {p2}, La/j0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/app/AppComponentFactory;->instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-class p1, La/u;

    invoke-virtual {p0, p2, p1}, La/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentProvider;

    :goto_0
    return-object p1
.end method

.method public instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object p1, p0, La/a;->b:Landroid/app/AppComponentFactory;

    if-eqz p1, :cond_0

    iget-object v0, p0, La/a;->a:Ljava/lang/ClassLoader;

    invoke-static {p2}, La/j0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/AppComponentFactory;->instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-class p1, La/h;

    invoke-virtual {p0, p2, p1}, La/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/BroadcastReceiver;

    :goto_0
    return-object p1
.end method

.method public instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;
    .locals 1

    iget-object p1, p0, La/a;->b:Landroid/app/AppComponentFactory;

    if-eqz p1, :cond_0

    iget-object v0, p0, La/a;->a:Ljava/lang/ClassLoader;

    invoke-static {p2}, La/j0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/AppComponentFactory;->instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-class p1, La/v;

    invoke-virtual {p0, p2, p1}, La/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Service;

    :goto_0
    return-object p1
.end method
