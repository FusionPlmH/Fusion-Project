.class public final synthetic Lcom/android/systemui/SysUiServiceProvider$-CC;
.super Ljava/lang/Object;
.source "SysUiServiceProvider.java"


# direct methods
.method public static getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/SysUiServiceProvider;

    invoke-interface {p0, p1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
