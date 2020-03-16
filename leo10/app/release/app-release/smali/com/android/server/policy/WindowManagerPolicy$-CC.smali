.class public final synthetic Lcom/android/server/policy/WindowManagerPolicy$-CC;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# direct methods
.method public static $default$getLayoutHintLw(Lcom/android/server/policy/WindowManagerPolicy;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public static $default$getSubWindowLayerFromTypeLw(Lcom/android/server/policy/WindowManagerPolicy;I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sub-window type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public static $default$getWindowLayerFromTypeLw(Lcom/android/server/policy/WindowManagerPolicy;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result p1

    return p1
.end method

.method public static $default$getWindowLayerFromTypeLw(Lcom/android/server/policy/WindowManagerPolicy;IZ)I
    .locals 2

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x63

    if-gt p1, v0, :cond_0

    return p2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown window type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public static $default$getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 1

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAddInternalSystemWindow()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result p1

    return p1
.end method

.method public static $default$onOverlayChangedLw(Lcom/android/server/policy/WindowManagerPolicy;)V
    .locals 0

    return-void
.end method

.method public static $default$setDismissImeOnBackKeyPressed(Lcom/android/server/policy/WindowManagerPolicy;Z)V
    .locals 0

    return-void
.end method

.method public static userRotationModeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "USER_ROTATION_LOCKED"

    return-object p0

    :cond_1
    const-string p0, "USER_ROTATION_FREE"

    return-object p0
.end method
