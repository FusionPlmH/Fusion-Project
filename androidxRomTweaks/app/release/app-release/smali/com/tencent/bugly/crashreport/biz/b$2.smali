.class final Lcom/tencent/bugly/crashreport/biz/b$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/crashreport/biz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "unknown"

    :goto_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string v0, ">>> %s onCreated <<<"

    invoke-static {v0, p2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/util/List;

    const-string v0, "onCreated"

    invoke-static {p1, v0}, Lcom/tencent/bugly/crashreport/biz/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "unknown"

    :goto_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, ">>> %s onDestroyed <<<"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/util/List;

    const-string v1, "onDestroyed"

    invoke-static {p1, v1}, Lcom/tencent/bugly/crashreport/biz/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 7

    const-string v0, "unknown"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v4, ">>> %s onPaused <<<"

    invoke-static {v4, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v4, v2, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/util/List;

    const-string v5, "onPaused"

    invoke-static {v1, v5}, Lcom/tencent/bugly/crashreport/biz/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    iget-wide v3, v2, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    iget-wide v5, v2, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/common/info/a;->s:J

    iget-wide v3, v2, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    invoke-static {v3, v4}, Lcom/tencent/bugly/crashreport/biz/b;->c(J)J

    iget-wide v3, v2, Lcom/tencent/bugly/crashreport/common/info/a;->s:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    iput-wide v5, v2, Lcom/tencent/bugly/crashreport/common/info/a;->s:J

    :cond_3
    if-eqz p1, :cond_4

    const-string p1, "background"

    iput-object p1, v2, Lcom/tencent/bugly/crashreport/common/info/a;->p:Ljava/lang/String;

    return-void

    :cond_4
    iput-object v0, v2, Lcom/tencent/bugly/crashreport/common/info/a;->p:Ljava/lang/String;

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "unknown"

    :goto_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, ">>> %s onResumed <<<"

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v3, v1, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/util/List;

    const-string v4, "onResumed"

    invoke-static {p1, v4}, Lcom/tencent/bugly/crashreport/biz/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Z)V

    iput-object p1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->p:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    iget-wide v3, v1, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->c()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, v1, Lcom/tencent/bugly/crashreport/common/info/a;->t:J

    iget-wide v3, v1, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->d()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->e()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_3

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->e()J

    move-result-wide v5

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->f()J

    move-result-wide v5

    :goto_1
    cmp-long p1, v3, v5

    if-lez p1, :cond_5

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->d()V

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->g()I

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->f()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v1, "[session] launch app one times (app in background %d seconds and over %d seconds)"

    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->h()I

    move-result p1

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->i()I

    move-result v1

    rem-int/2addr p1, v1

    const/4 v1, 0x4

    if-nez p1, :cond_4

    sget-object p1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->j()Z

    move-result v0

    invoke-virtual {p1, v1, v0, v7, v8}, Lcom/tencent/bugly/crashreport/biz/a;->a(IZJ)V

    return-void

    :cond_4
    sget-object p1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {p1, v1, v2, v7, v8}, Lcom/tencent/bugly/crashreport/biz/a;->a(IZJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->k()J

    move-result-wide v5

    sub-long v5, v3, v5

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->l()J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-lez p1, :cond_5

    invoke-static {v3, v4}, Lcom/tencent/bugly/crashreport/biz/b;->b(J)J

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "add a timer to upload hot start user info"

    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->j()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->l()J

    move-result-wide v1

    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v3

    new-instance v4, Lcom/tencent/bugly/crashreport/biz/a$a;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5, v0}, Lcom/tencent/bugly/crashreport/biz/a$a;-><init>(Lcom/tencent/bugly/crashreport/biz/a;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V

    invoke-virtual {v3, v4, v1, v2}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
