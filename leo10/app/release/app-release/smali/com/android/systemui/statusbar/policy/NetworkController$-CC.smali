.class public final synthetic Lcom/android/systemui/statusbar/policy/NetworkController$-CC;
.super Ljava/lang/Object;
.source "NetworkController.java"


# direct methods
.method public static synthetic $default$addCallback(Lcom/android/systemui/statusbar/policy/NetworkController;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public static synthetic $default$removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method
