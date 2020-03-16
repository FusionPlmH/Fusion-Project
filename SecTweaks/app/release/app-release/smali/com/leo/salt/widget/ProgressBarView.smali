.class public Lcom/leo/salt/widget/ProgressBarView;
.super Landroid/view/View;
.source "ProgressBarView.java"


# instance fields
.field private cyclePaint:Landroid/graphics/Paint;

.field private labelPaint:Landroid/graphics/Paint;

.field private mColor:[I

.field private mHeight:I

.field private mRadius:F

.field private mStrokeWidth:F

.field private mWidth:I

.field private str:[Ljava/lang/String;

.field private strPercent:[I

.field private textColor:I

.field private textPaint:Landroid/graphics/Paint;

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string p1, "\u5df2\u7528"

    const-string v0, "\u53ef\u7528"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/widget/ProgressBarView;->str:[Ljava/lang/String;

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/leo/salt/widget/ProgressBarView;->strPercent:[I

    const/high16 p1, 0x43960000    # 300.0f

    iput p1, p0, Lcom/leo/salt/widget/ProgressBarView;->mRadius:F

    const/high16 p1, 0x42200000    # 40.0f

    iput p1, p0, Lcom/leo/salt/widget/ProgressBarView;->mStrokeWidth:F

    const/16 p1, 0xa

    iput p1, p0, Lcom/leo/salt/widget/ProgressBarView;->textSize:I

    const/4 p1, 0x6

    new-array p1, p1, [I

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/leo/salt/widget/ProgressBarView;->mColor:[I

    const p1, -0x777778

    iput p1, p0, Lcom/leo/salt/widget/ProgressBarView;->textColor:I

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x19
    .end array-data

    :array_1
    .array-data 4
        -0xf9d6e
        -0x6a8a33
        -0x1a8c8d
        -0xb03c09
        -0xe8a
        -0x7e387c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "\u5df2\u7528"

    const-string v1, "\u53ef\u7528"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->str:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/leo/salt/widget/ProgressBarView;->strPercent:[I

    const/high16 v1, 0x43960000    # 300.0f

    iput v1, p0, Lcom/leo/salt/widget/ProgressBarView;->mRadius:F

    const/high16 v1, 0x42200000    # 40.0f

    iput v1, p0, Lcom/leo/salt/widget/ProgressBarView;->mStrokeWidth:F

    const/16 v1, 0xa

    iput v1, p0, Lcom/leo/salt/widget/ProgressBarView;->textSize:I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/leo/salt/widget/ProgressBarView;->mColor:[I

    const v1, -0x777778

    iput v1, p0, Lcom/leo/salt/widget/ProgressBarView;->textColor:I

    sget-object v1, Lcom/leo/salt/R$styleable;->RamInfo:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    int-to-double v5, v1

    div-double/2addr v3, v5

    double-to-int v1, v3

    new-array v0, v0, [I

    rsub-int/lit8 v3, v1, 0x64

    aput v3, v0, v2

    aput v1, v0, p2

    iput-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->strPercent:[I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :array_0
    .array-data 4
        0xa
        0x19
    .end array-data

    :array_1
    .array-data 4
        -0xf9d6e
        -0x6a8a33
        -0x1a8c8d
        -0xb03c09
        -0xe8a
        -0x7e387c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "\u5df2\u7528"

    const-string v0, "\u53ef\u7528"

    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/leo/salt/widget/ProgressBarView;->str:[Ljava/lang/String;

    const/4 p3, 0x2

    new-array v0, p3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->strPercent:[I

    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/leo/salt/widget/ProgressBarView;->mRadius:F

    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/leo/salt/widget/ProgressBarView;->mStrokeWidth:F

    const/16 v0, 0xa

    iput v0, p0, Lcom/leo/salt/widget/ProgressBarView;->textSize:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->mColor:[I

    const v0, -0x777778

    iput v0, p0, Lcom/leo/salt/widget/ProgressBarView;->textColor:I

    sget-object v0, Lcom/leo/salt/R$styleable;->RamInfo:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    int-to-double v4, v0

    div-double/2addr v2, v4

    double-to-int v0, v2

    new-array p3, p3, [I

    rsub-int/lit8 v2, v0, 0x64

    aput v2, p3, v1

    aput v0, p3, p2

    iput-object p3, p0, Lcom/leo/salt/widget/ProgressBarView;->strPercent:[I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :array_0
    .array-data 4
        0xa
        0x19
    .end array-data

    :array_1
    .array-data 4
        -0xf9d6e
        -0x6a8a33
        -0x1a8c8d
        -0xb03c09
        -0xe8a
        -0x7e387c
    .end array-data
.end method

.method private dp2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private drawCycle(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->cyclePaint:Landroid/graphics/Paint;

    const-string v1, "#888888"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v3, -0x3d4c0000    # -90.0f

    :goto_0
    iget-object v4, p0, Lcom/leo/salt/widget/ProgressBarView;->strPercent:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/leo/salt/widget/ProgressBarView;->cyclePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/leo/salt/widget/ProgressBarView;->mColor:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/leo/salt/widget/ProgressBarView;->strPercent:[I

    aget v3, v3, v2

    mul-int/lit16 v3, v3, 0x168

    div-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    new-instance v7, Landroid/graphics/RectF;

    iget v4, p0, Lcom/leo/salt/widget/ProgressBarView;->mRadius:F

    invoke-direct {v7, v0, v0, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v9, v3, v4

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/leo/salt/widget/ProgressBarView;->cyclePaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    move v12, v3

    move v3, v1

    move v1, v12

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initPaint()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->cyclePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->cyclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->cyclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->cyclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/leo/salt/widget/ProgressBarView;->mStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->textPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/leo/salt/widget/ProgressBarView;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/leo/salt/widget/ProgressBarView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->labelPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->labelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/leo/salt/widget/ProgressBarView;->labelPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/leo/salt/widget/ProgressBarView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/leo/salt/widget/ProgressBarView;->mRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/leo/salt/widget/ProgressBarView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr v1, v2

    sub-float/2addr v3, v1

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Lcom/leo/salt/widget/ProgressBarView;->initPaint()V

    invoke-direct {p0, p1}, Lcom/leo/salt/widget/ProgressBarView;->drawCycle(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/leo/salt/widget/ProgressBarView;->mWidth:I

    iput p2, p0, Lcom/leo/salt/widget/ProgressBarView;->mHeight:I

    invoke-virtual {p0}, Lcom/leo/salt/widget/ProgressBarView;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 p4, 0x41000000    # 8.0f

    invoke-direct {p0, p3, p4}, Lcom/leo/salt/widget/ProgressBarView;->dp2px(Landroid/content/Context;F)I

    move-result p3

    int-to-float v0, p3

    iput v0, p0, Lcom/leo/salt/widget/ProgressBarView;->mStrokeWidth:F

    invoke-virtual {p0}, Lcom/leo/salt/widget/ProgressBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/leo/salt/widget/ProgressBarView;->dp2px(Landroid/content/Context;F)I

    move-result p4

    iput p4, p0, Lcom/leo/salt/widget/ProgressBarView;->textSize:I

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    if-le p1, p2, :cond_0

    int-to-double p1, p2

    mul-double p1, p1, v0

    int-to-double p3, p3

    sub-double/2addr p1, p3

    double-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/leo/salt/widget/ProgressBarView;->mRadius:F

    goto :goto_0

    :cond_0
    int-to-double p1, p1

    mul-double p1, p1, v0

    int-to-double p3, p3

    sub-double/2addr p1, p3

    double-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/leo/salt/widget/ProgressBarView;->mRadius:F

    :goto_0
    return-void
.end method

.method public setData(FF)V
    .locals 4

    float-to-double v0, p2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    float-to-double p1, p1

    div-double/2addr v0, p1

    double-to-int p1, v0

    const/4 p2, 0x2

    new-array p2, p2, [I

    rsub-int/lit8 v0, p1, 0x64

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, 0x1

    aput p1, p2, v0

    iput-object p2, p0, Lcom/leo/salt/widget/ProgressBarView;->strPercent:[I

    invoke-virtual {p0}, Lcom/leo/salt/widget/ProgressBarView;->invalidate()V

    return-void
.end method
