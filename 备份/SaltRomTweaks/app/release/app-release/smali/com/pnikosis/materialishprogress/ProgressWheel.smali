.class public Lcom/pnikosis/materialishprogress/ProgressWheel;
.super Landroid/view/View;
.source "ProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;,
        Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private barColor:I

.field private barExtraLength:F

.field private barGrowingFromFront:Z

.field private final barLength:I

.field private final barMaxLength:I

.field private barPaint:Landroid/graphics/Paint;

.field private barSpinCycleTime:D

.field private barWidth:I

.field private callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

.field private circleBounds:Landroid/graphics/RectF;

.field private circleRadius:I

.field private fillRadius:Z

.field private isSpinning:Z

.field private lastTimeAnimated:J

.field private linearProgress:Z

.field private mProgress:F

.field private mTargetProgress:F

.field private final pauseGrowingTime:J

.field private pausedTimeWithoutGrowing:J

.field private rimColor:I

.field private rimPaint:Landroid/graphics/Paint;

.field private rimWidth:I

.field private shouldAnimate:Z

.field private spinSpeed:F

.field private timeStartGrowing:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x10

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barLength:I

    const/16 p1, 0x10e

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barMaxLength:I

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pauseGrowingTime:J

    const/16 p1, 0x1c

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barGrowingFromFront:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    const/high16 v3, -0x56000000

    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    const v3, 0xffffff

    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v3, 0x43660000    # 230.0f

    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    iput-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setAnimationEnabled()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x10

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barLength:I

    const/16 v0, 0x10e

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barMaxLength:I

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pauseGrowingTime:J

    const/16 v0, 0x1c

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    const-wide v1, 0x407cc00000000000L    # 460.0

    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    const/4 v1, 0x0

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barGrowingFromFront:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    const/high16 v4, -0x56000000

    iput v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    const v4, 0xffffff

    iput v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v4, 0x43660000    # 230.0f

    iput v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    iput-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    sget-object v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->parseAttributes(Landroid/content/res/TypedArray;)V

    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setAnimationEnabled()V

    return-void
.end method

.method private parseAttributes(Landroid/content/res/TypedArray;)V
    .locals 4

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_circleRadius:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_fillRadius:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_barWidth:I

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_rimWidth:I

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_spinSpeed:I

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    mul-float v0, v0, v3

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_barSpinCycleTime:I

    iget-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    double-to-int v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_barColor:I

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_rimColor:I

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_linearProgress:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->linearProgress:Z

    sget v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel_matProg_progressIndeterminate:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->spin()V

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private runCallback()V
    .locals 3

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

    invoke-interface {v1, v0}, Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    :cond_0
    return-void
.end method

.method private runCallback(F)V
    .locals 1

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    :cond_0
    return-void
.end method

.method private setAnimationEnabled()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "animator_duration_scale"

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    :goto_0
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->shouldAnimate:Z

    return-void
.end method

.method private setupBounds(II)V
    .locals 6

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingRight()I

    move-result v3

    iget-boolean v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    if-nez v4, :cond_0

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    sub-int v3, p2, v1

    sub-int/2addr v3, v0

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr p1, v3

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v2

    sub-int/2addr p2, v0

    sub-int/2addr p2, v1

    sub-int/2addr p2, v3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    add-int v2, p1, v1

    int-to-float v2, v2

    add-int v4, p2, v1

    int-to-float v4, v4

    add-int/2addr p1, v3

    sub-int/2addr p1, v1

    int-to-float p1, p1

    add-int/2addr p2, v3

    sub-int/2addr p2, v1

    int-to-float p2, p2

    invoke-direct {v0, v2, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    add-int/2addr v0, v5

    int-to-float v0, v0

    sub-int/2addr p1, v3

    sub-int/2addr p1, v5

    int-to-float p1, p1

    sub-int/2addr p2, v1

    sub-int/2addr p2, v5

    int-to-float p2, p2

    invoke-direct {v4, v2, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    :goto_0
    return-void
.end method

.method private setupPaints()V
    .locals 3

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private updateBarLength(J)V
    .locals 5

    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    long-to-double p1, p1

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    iget-wide p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    sub-double/2addr p1, v0

    iput-wide p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barGrowingFromFront:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barGrowingFromFront:Z

    :cond_0
    iget-wide p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->timeStartGrowing:D

    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barSpinCycleTime:D

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    const/high16 p2, 0x437e0000    # 254.0f

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barGrowingFromFront:Z

    if-eqz v0, :cond_1

    mul-float p1, p1, p2

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float v0, v0, p2

    iget p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iget p2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    sub-float/2addr p2, v0

    add-float/2addr p1, p2

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    goto :goto_0

    :cond_2
    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->pausedTimeWithoutGrowing:J

    :goto_0
    return-void
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getRimColor()I
    .locals 1

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 2

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isSpinning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->shouldAnimate:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v4, 0x1

    const/high16 v5, 0x43b40000    # 360.0f

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    sub-long/2addr v6, v8

    long-to-float v0, v6

    iget v8, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    mul-float v0, v0, v8

    div-float/2addr v0, v3

    invoke-direct {p0, v6, v7}, Lcom/pnikosis/materialishprogress/ProgressWheel;->updateBarLength(J)V

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    cmpl-float v3, v0, v5

    if-lez v3, :cond_1

    sub-float/2addr v0, v5

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->runCallback(F)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x41800000    # 16.0f

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barExtraLength:F

    add-float/2addr v3, v2

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v3, 0x43070000    # 135.0f

    const/4 v7, 0x0

    const/high16 v8, 0x43070000    # 135.0f

    goto :goto_0

    :cond_2
    move v7, v0

    move v8, v3

    :goto_0
    iget-object v6, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_3
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iget v6, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    div-float/2addr v6, v3

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    mul-float v6, v6, v3

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    add-float/2addr v3, v6

    iget v6, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->runCallback()V

    :cond_5
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iget-boolean v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->linearProgress:Z

    if-nez v3, :cond_6

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, v0

    float-to-double v6, v0

    const/high16 v0, 0x40800000    # 4.0f

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v6

    double-to-float v0, v6

    mul-float v0, v0, v5

    iget v6, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    div-float/2addr v6, v5

    sub-float/2addr v3, v6

    float-to-double v6, v3

    float-to-double v10, v1

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v8, v6

    double-to-float v1, v8

    mul-float v1, v1, v5

    goto :goto_2

    :cond_6
    move v1, v0

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v9, 0x43b40000    # 360.0f

    goto :goto_3

    :cond_7
    move v9, v1

    :goto_3
    iget-object v7, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    sub-float v8, v0, v2

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_4
    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    if-eq v3, v5, :cond_3

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    if-ne v3, v4, :cond_4

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_3
    :goto_1
    move v1, p2

    :cond_4
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;

    invoke-virtual {p1}, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mProgress:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mTargetProgress:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    iget-boolean v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->isSpinning:Z

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->spinSpeed:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barWidth:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barColor:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimWidth:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimColor:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->circleRadius:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    iget-boolean v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->linearProgress:Z

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->linearProgress:Z

    iget-boolean p1, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->fillRadius:Z

    iput-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;

    invoke-direct {v1, v0}, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mProgress:F

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mTargetProgress:F

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    iput-boolean v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->isSpinning:Z

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->spinSpeed:F

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barWidth:I

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barColor:I

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimWidth:I

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimColor:I

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->circleRadius:I

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->linearProgress:Z

    iput-boolean v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->linearProgress:Z

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->fillRadius:Z

    iput-boolean v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->fillRadius:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setupBounds(II)V

    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setupPaints()V

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    :cond_0
    return-void
.end method

.method public resetCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    return-void
.end method

.method public setBarColor(I)V
    .locals 0

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barColor:I

    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setupPaints()V

    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->barWidth:I

    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->callback:Lcom/pnikosis/materialishprogress/ProgressWheel$ProgressCallback;

    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->runCallback()V

    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->circleRadius:I

    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    const/4 p1, 0x0

    :cond_2
    :goto_0
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    iget p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    return-void
.end method

.method public setLinearProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->linearProgress:Z

    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->runCallback()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    const/4 p1, 0x0

    :cond_2
    :goto_0
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    :cond_4
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    return-void
.end method

.method public setRimColor(I)V
    .locals 0

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimColor:I

    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setupPaints()V

    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 0

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->rimWidth:I

    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->spinSpeed:F

    return-void
.end method

.method public spin()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->lastTimeAnimated:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    return-void
.end method

.method public stopSpinning()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mProgress:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->mTargetProgress:F

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    return-void
.end method
