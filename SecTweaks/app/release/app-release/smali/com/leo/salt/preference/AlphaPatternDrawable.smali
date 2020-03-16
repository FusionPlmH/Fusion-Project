.class public Lcom/leo/salt/preference/AlphaPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AlphaPatternDrawable.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintGray:Landroid/graphics/Paint;

.field private mPaintWhite:Landroid/graphics/Paint;

.field private mRectangleSize:I

.field private numRectanglesHorizontal:I

.field private numRectanglesVertical:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mRectangleSize:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    iput p1, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mRectangleSize:I

    iget-object p1, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    const v0, -0x343435

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private generatePatternBitmap()V
    .locals 10

    invoke-virtual {p0}, Lcom/leo/salt/preference/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/leo/salt/preference/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/preference/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/leo/salt/preference/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    iget v6, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->numRectanglesVertical:I

    if-gt v4, v6, :cond_4

    move v7, v5

    const/4 v6, 0x0

    :goto_1
    iget v8, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->numRectanglesHorizontal:I

    if-gt v6, v8, :cond_3

    iget v8, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mRectangleSize:I

    mul-int v9, v4, v8

    iput v9, v1, Landroid/graphics/Rect;->top:I

    mul-int v8, v8, v6

    iput v8, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mRectangleSize:I

    add-int/2addr v8, v9

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mRectangleSize:I

    add-int/2addr v8, v9

    iput v8, v1, Landroid/graphics/Rect;->right:I

    if-eqz v7, :cond_1

    iget-object v8, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    goto :goto_2

    :cond_1
    iget-object v8, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {v0, v1, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    xor-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/leo/salt/preference/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v1, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mRectangleSize:I

    div-int/2addr p1, v1

    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->numRectanglesHorizontal:I

    iget p1, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->mRectangleSize:I

    div-int/2addr v0, p1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/leo/salt/preference/AlphaPatternDrawable;->numRectanglesVertical:I

    invoke-direct {p0}, Lcom/leo/salt/preference/AlphaPatternDrawable;->generatePatternBitmap()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Alpha is not supported by this drawwable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ColorFilter is not supported by this drawwable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
