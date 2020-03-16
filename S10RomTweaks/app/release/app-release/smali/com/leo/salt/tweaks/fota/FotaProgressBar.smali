.class public Lcom/leo/salt/tweaks/fota/FotaProgressBar;
.super Landroid/view/View;
.source "FotaProgressBar.java"


# instance fields
.field private final DEFAULT_FINISHED_COLOR:I

.field private final DEFAULT_UNFINISHED_COLOR:I

.field private mBarHeight:F

.field private mMax:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPrefix:Ljava/lang/String;

.field private mProgress:F

.field private mReachedBarColor:I

.field private mReachedRectF:Landroid/graphics/RectF;

.field private mSuffix:Ljava/lang/String;

.field private mTextColor:I

.field private mTextVisibility:Z

.field private mUnreachedBarColor:I

.field private mUnreachedRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x42c80000    # 100.0f

    iput p3, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mMax:F

    const/4 p3, 0x0

    iput p3, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mProgress:F

    const v0, 0x7f06002d

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getColorInt(I)I

    move-result v0

    iput v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->DEFAULT_FINISHED_COLOR:I

    const v0, 0x7f06004f

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getColorInt(I)I

    move-result v0

    iput v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->DEFAULT_UNFINISHED_COLOR:I

    const-string v0, "%"

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mSuffix:Ljava/lang/String;

    const v0, 0x7f10011c

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPrefix:Ljava/lang/String;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3, p3, p3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3, p3, p3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->initPainters()V

    return-void
.end method

.method private calculateDrawRectFWithoutProgressText()V
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mBarHeight:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getMax()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getProgress()F

    move-result v3

    mul-float v1, v1, v3

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mBarHeight:F

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mBarHeight:F

    neg-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mBarHeight:F

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private checkProgress(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mMax:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method private dp2px(F)I
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget-object v0, Lcom/leo/salt/tweaks/R$styleable;->FotaProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    iget p2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mMax:F

    float-to-int p2, p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mMax:F

    iget p2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mProgress:F

    float-to-int p2, p2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mProgress:F

    iget p2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->DEFAULT_FINISHED_COLOR:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mReachedBarColor:I

    iget p2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->DEFAULT_UNFINISHED_COLOR:I

    const/16 v1, 0x8

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mUnreachedBarColor:I

    iget p2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->DEFAULT_UNFINISHED_COLOR:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mTextColor:I

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mSuffix:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mSuffix:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPrefix:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPrefix:Ljava/lang/String;

    const/4 p2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v1}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mBarHeight:F

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mTextVisibility:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initPainters()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public getMax()F
    .locals 1

    iget v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mMax:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mProgress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->calculateDrawRectFWithoutProgressText()V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mUnreachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mBarHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float/2addr v1, v2

    iget-object v4, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mReachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mBarHeight:F

    div-float v3, v1, v2

    div-float/2addr v1, v2

    iget-object v4, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mBarHeight:F

    const v3, 0x3f19999a    # 0.6f

    mul-float v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getProgress()F

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v1, v1, v3

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getMax()F

    move-result v3

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mSuffix:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-boolean v3, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mTextVisibility:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getProgress()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    iget v1, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mBarHeight:F

    const v4, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v4

    sub-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v4, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v2

    sub-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mMax:F

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->checkProgress(F)F

    move-result p1

    iput p1, p0, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->mProgress:F

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/fota/FotaProgressBar;->invalidate()V

    return-void
.end method
