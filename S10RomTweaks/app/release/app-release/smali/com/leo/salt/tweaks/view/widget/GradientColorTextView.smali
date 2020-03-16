.class public Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;
.super Landroid/widget/TextView;
.source "GradientColorTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    new-instance p2, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;->getWidth()I

    move-result p3

    int-to-float v3, p3

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;->getHeight()I

    move-result p3

    int-to-float v4, p3

    const/4 p3, 0x3

    new-array v5, p3, [I

    const/4 p4, 0x0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;->getContext()Landroid/content/Context;

    move-result-object p5

    const v0, 0x7f060033

    invoke-virtual {p5, v0}, Landroid/content/Context;->getColor(I)I

    move-result p5

    aput p5, v5, p4

    const/4 p4, 0x1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;->getContext()Landroid/content/Context;

    move-result-object p5

    const v0, 0x7f06001f

    invoke-virtual {p5, v0}, Landroid/content/Context;->getColor(I)I

    move-result p5

    aput p5, v5, p4

    const/4 p4, 0x2

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/GradientColorTextView;->getContext()Landroid/content/Context;

    move-result-object p5

    const v0, 0x7f060034

    invoke-virtual {p5, v0}, Landroid/content/Context;->getColor(I)I

    move-result p5

    aput p5, v5, p4

    new-array v6, p3, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method
