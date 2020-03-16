.class public Lcom/meiqia/core/a/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/meiqia/core/MeiQiaService;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "meiqia_log"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Lokhttp3/Request;)V
    .locals 0

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/meiqia/core/MeiQiaService;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "meiqia_log"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
