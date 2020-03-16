.class public Lcom/android/systemui/statusbar/salt/MKStatusBarItem;
.super Ljava/lang/Object;
.source "MKStatusBarItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/salt/MKStatusBarItem$VisibilityReceiver;,
        Lcom/android/systemui/statusbar/salt/MKStatusBarItem$Manager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findManager(Landroid/view/View;)Lcom/android/systemui/statusbar/salt/MKStatusBarItem$Manager;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Lcom/android/systemui/statusbar/salt/MKStatusBarItem$Manager;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/android/systemui/statusbar/salt/MKStatusBarItem$Manager;

    return-object p0

    :cond_1
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/android/systemui/statusbar/salt/MKStatusBarItem;->findManager(Landroid/view/View;)Lcom/android/systemui/statusbar/salt/MKStatusBarItem$Manager;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method
