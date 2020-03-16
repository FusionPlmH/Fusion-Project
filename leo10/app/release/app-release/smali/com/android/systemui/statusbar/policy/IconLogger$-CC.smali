.class public final synthetic Lcom/android/systemui/statusbar/policy/IconLogger$-CC;
.super Ljava/lang/Object;
.source "IconLogger.java"


# direct methods
.method public static $default$onIconVisibility(Lcom/android/systemui/statusbar/policy/IconLogger;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconShown(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconHidden(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
