.class public Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;
.super Landroid/view/View;
.source "CircularProgressBar.java"


# instance fields
.field private backgroundColor:I

.field private backgroundPaint:Landroid/graphics/Paint;

.field private backgroundRectPaint:Landroid/graphics/Paint;

.field private backgroundStrokeWidth:F

.field private color:I

.field private foregroundPaint:Landroid/graphics/Paint;

.field private progress:F

.field private rectF:Landroid/graphics/RectF;

.field private rectFRect:Landroid/graphics/RectF;

.field private startAngle:I

.field private strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->progress:F

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->strokeWidth:F

    iput v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundStrokeWidth:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->color:I

    const v0, -0x777778

    iput v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundColor:I

    const/16 v0, -0x5a

    iput v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->startAngle:I

    invoke-direct {p0, p1, p2}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/meiqia/meiqiasdk/R$color;->mq_circle_progress_bg:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundColor:I

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/meiqia/meiqiasdk/R$color;->mq_circle_progress_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->color:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->rectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->rectFRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundStrokeWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundRectPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundRectPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundRectPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundRectPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->strokeWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundRectPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->color:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->strokeWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundColor:I

    return v0
.end method

.method public getBackgroundProgressBarWidth()F
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundStrokeWidth:F

    return v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->color:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->progress:F

    return v0
.end method

.method public getProgressBarWidth()F
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->strokeWidth:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->progress:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v5, v0, v1

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->rectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->startAngle:I

    int-to-float v4, v0

    iget-object v7, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->rectFRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->getDefaultSize(II)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->setMeasuredDimension(II)V

    iget v1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->strokeWidth:F

    iget v2, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundStrokeWidth:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v2, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    add-float/2addr v3, v1

    int-to-float v0, v0

    sub-float/2addr v0, v1

    invoke-virtual {v2, v3, v3, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->rectFRect:Landroid/graphics/RectF;

    int-to-float p2, p2

    const v1, 0x3ecccccd    # 0.4f

    mul-float v2, p2, v1

    int-to-float p1, p1

    mul-float v1, v1, p1

    const v3, 0x3f19999a    # 0.6f

    mul-float p2, p2, v3

    mul-float p1, p1, v3

    invoke-virtual {v0, v2, v1, p2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iput p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundColor:I

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->invalidate()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->requestLayout()V

    return-void
.end method

.method public setBackgroundProgressBarWidth(F)V
    .locals 1

    iput p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundStrokeWidth:F

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->requestLayout()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iput p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->color:I

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->invalidate()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->requestLayout()V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    :goto_0
    iput v1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->progress:F

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->invalidate()V

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->progress:F

    :cond_1
    return-void
.end method

.method public setProgressBarWidth(F)V
    .locals 1

    iput p1, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->strokeWidth:F

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->requestLayout()V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/CircularProgressBar;->invalidate()V

    return-void
.end method
