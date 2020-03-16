.class public final synthetic Landroid/view/WindowManagerPolicyConstants$-CC;
.super Ljava/lang/Object;
.source "WindowManagerPolicyConstants.java"


# direct methods
.method public static offReasonToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "OFF_BECAUSE_OF_TIMEOUT"

    return-object p0

    :cond_1
    const-string p0, "OFF_BECAUSE_OF_USER"

    return-object p0

    :cond_2
    const-string p0, "OFF_BECAUSE_OF_ADMIN"

    return-object p0
.end method
