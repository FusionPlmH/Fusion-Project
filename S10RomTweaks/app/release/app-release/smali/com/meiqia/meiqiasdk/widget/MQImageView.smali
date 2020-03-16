.class public Lcom/meiqia/meiqiasdk/widget/MQImageView;
.super Landroid/widget/ImageView;
.source "MQImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/widget/MQImageView$OnDrawableChangedCallback;
    }
.end annotation


# instance fields
.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderWidth:I

.field private mCornerRadius:I

.field private mDefaultImageId:I

.field private mIsCircle:Z

.field private mIsSquare:Z

.field private mOnDrawableChangedCallback:Lcom/meiqia/meiqiasdk/widget/MQImageView$OnDrawableChangedCallback;

.field private mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mCornerRadius:I

    iput-boolean p3, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mIsCircle:Z

    iput-boolean p3, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mIsSquare:Z

    iput p3, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderWidth:I

    const/4 p3, -0x1

    iput p3, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderColor:I

    invoke-direct {p0, p1, p2}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->initCustomAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->initBorderPaint()V

    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->setDefaultImage()V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mRect:Landroid/graphics/RectF;

    return-void
.end method

.method public static getCircleDrawable(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->getCircleDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getCircleDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p1, v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {p1, v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    return-object p0
.end method

.method public static getRoundedDrawable(Landroid/content/Context;IF)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->getRoundedDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getRoundedDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    invoke-virtual {p0, p2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    return-object p0
.end method

.method private initBorderPaint()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private initCustomAttr(ILandroid/content/res/TypedArray;)V
    .locals 1

    sget v0, Lcom/meiqia/meiqiasdk/R$styleable;->MQImageView_android_src:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mDefaultImageId:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/meiqia/meiqiasdk/R$styleable;->MQImageView_mq_iv_isCircle:I

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mIsCircle:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mIsCircle:Z

    goto :goto_0

    :cond_1
    sget v0, Lcom/meiqia/meiqiasdk/R$styleable;->MQImageView_mq_iv_cornerRadius:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mCornerRadius:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mCornerRadius:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/meiqia/meiqiasdk/R$styleable;->MQImageView_mq_iv_isSquare:I

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mIsSquare:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mIsSquare:Z

    goto :goto_0

    :cond_3
    sget v0, Lcom/meiqia/meiqiasdk/R$styleable;->MQImageView_mq_iv_borderWidth:I

    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderWidth:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderWidth:I

    goto :goto_0

    :cond_4
    sget v0, Lcom/meiqia/meiqiasdk/R$styleable;->MQImageView_mq_iv_borderColor:I

    if-ne p1, v0, :cond_5

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderColor:I

    :cond_5
    :goto_0
    return-void
.end method

.method private initCustomAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget-object v0, Lcom/meiqia/meiqiasdk/R$styleable;->MQImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->initCustomAttr(ILandroid/content/res/TypedArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private notifyDrawableChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mOnDrawableChangedCallback:Lcom/meiqia/meiqiasdk/widget/MQImageView$OnDrawableChangedCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/meiqia/meiqiasdk/widget/MQImageView$OnDrawableChangedCallback;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setDefaultImage()V
    .locals 1

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mDefaultImageId:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderWidth:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mIsCircle:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mCornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mCornerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mIsCircle:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mIsSquare:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->getMeasuredWidth()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move p2, p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public setDrawableChangedCallback(Lcom/meiqia/meiqiasdk/widget/MQImageView$OnDrawableChangedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mOnDrawableChangedCallback:Lcom/meiqia/meiqiasdk/widget/MQImageView$OnDrawableChangedCallback;

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mCornerRadius:I

    if-lez v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mCornerRadius:I

    int-to-float v2, v2

    invoke-static {v1, v0, v2}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->getRoundedDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/widget/MQImageView;->mIsCircle:Z

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->getCircleDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->notifyDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
