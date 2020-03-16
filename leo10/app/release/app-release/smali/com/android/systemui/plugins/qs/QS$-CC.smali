.class public final synthetic Lcom/android/systemui/plugins/qs/QS$-CC;
.super Ljava/lang/Object;
.source "QS.java"


# direct methods
.method public static $default$onInterceptTouchEvent(Lcom/android/systemui/plugins/qs/QS;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    move-result p1

    return p1
.end method

.method public static $default$setHasNotifications(Lcom/android/systemui/plugins/qs/QS;Z)V
    .locals 0

    return-void
.end method
