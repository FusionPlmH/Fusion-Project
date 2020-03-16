.class public Lcom/leo/salt/ui/GradientHorizontalTextView;
.super Landroid/widget/TextView;
.source "GradientHorizontalTextView.java"


# instance fields
.field private delta:I

.field private mAnimating:Z

.field private mGradientMatrix:Landroid/graphics/Matrix;

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mPaint:Landroid/graphics/Paint;

.field private mTranslate:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/ui/GradientHorizontalTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mViewWidth:I

    iput p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mTranslate:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mAnimating:Z

    const/16 p1, 0xa

    iput p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->delta:I

    return-void
.end method

.method static getCustomizedColor(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget p0, p0, v0

    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mAnimating:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mGradientMatrix:Landroid/graphics/Matrix;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/leo/salt/ui/GradientHorizontalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/ui/GradientHorizontalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget v0, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mTranslate:I

    iget v1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->delta:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mTranslate:I

    iget v0, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mTranslate:I

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr p1, v2

    cmpl-float p1, v1, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    if-ge v0, p1, :cond_1

    :cond_0
    iget p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->delta:I

    neg-int p1, p1

    iput p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->delta:I

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mGradientMatrix:Landroid/graphics/Matrix;

    iget v0, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mTranslate:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mLinearGradient:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/ui/GradientHorizontalTextView;->postInvalidateDelayed(J)V

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    iget p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mViewWidth:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/ui/GradientHorizontalTextView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mViewWidth:I

    iget p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mViewWidth:I

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/ui/GradientHorizontalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/leo/salt/ui/GradientHorizontalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x2

    if-lez p2, :cond_0

    iget p2, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mViewWidth:I

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    div-int/2addr p2, p1

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mViewWidth:I

    :goto_0
    new-instance p1, Landroid/graphics/LinearGradient;

    neg-int p2, p2

    int-to-float v1, p2

    const/4 v2, 0x0

    const/high16 v3, 0x42a00000    # 80.0f

    const/high16 v4, 0x42a00000    # 80.0f

    const/4 p2, 0x3

    new-array v5, p2, [I

    const/4 p4, 0x0

    const/4 v0, -0x1

    aput v0, v5, p4

    const/4 p4, 0x1

    invoke-virtual {p0}, Lcom/leo/salt/ui/GradientHorizontalTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/ui/GradientHorizontalTextView;->getCustomizedColor(Landroid/content/Context;)I

    move-result v0

    aput v0, v5, p4

    const p4, -0xbbbbbc

    aput p4, v5, p3

    new-array v6, p2, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mLinearGradient:Landroid/graphics/LinearGradient;

    iget-object p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/ui/GradientHorizontalTextView;->mGradientMatrix:Landroid/graphics/Matrix;

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
