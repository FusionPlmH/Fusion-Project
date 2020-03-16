.class public final synthetic Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs$-CC;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# direct methods
.method public static cameraLensStateToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "CAMERA_LENS_COVERED"

    return-object p0

    :cond_1
    const-string p0, "CAMERA_LENS_UNCOVERED"

    return-object p0

    :cond_2
    const-string p0, "CAMERA_LENS_COVER_ABSENT"

    return-object p0
.end method

.method public static lidStateToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "LID_OPEN"

    return-object p0

    :cond_1
    const-string p0, "LID_CLOSED"

    return-object p0

    :cond_2
    const-string p0, "LID_ABSENT"

    return-object p0
.end method
