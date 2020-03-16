.class public final synthetic Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$-CC;
.super Ljava/lang/Object;
.source "DarkIconDispatcher.java"


# direct methods
.method public static getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$-CC;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getTint(Landroid/graphics/Rect;Landroid/view/View;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$-CC;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    return p2

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->sTmpInt2:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->sTmpInt2:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    iget v3, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-le v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method
