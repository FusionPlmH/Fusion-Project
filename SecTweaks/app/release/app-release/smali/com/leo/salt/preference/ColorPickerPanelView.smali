.class public Lcom/leo/salt/preference/ColorPickerPanelView;
.super Landroid/view/View;
.source "ColorPickerPanelView.java"


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f


# instance fields
.field private mAlphaPattern:Lcom/leo/salt/preference/AlphaPatternDrawable;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mColorPaint:Landroid/graphics/Paint;

.field private mColorRect:Landroid/graphics/RectF;

.field private mDensity:F

.field private mDrawingRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/preference/ColorPickerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/leo/salt/preference/ColorPickerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mDensity:F

    const p1, -0x919192

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mBorderColor:I

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mColor:I

    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerPanelView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mDensity:F

    return-void
.end method

.method private setUpColorRect()V
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v2

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1, v3, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    new-instance v0, Lcom/leo/salt/preference/AlphaPatternDrawable;

    iget v1, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mDensity:F

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/leo/salt/preference/AlphaPatternDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mAlphaPattern:Lcom/leo/salt/preference/AlphaPatternDrawable;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mAlphaPattern:Lcom/leo/salt/preference/AlphaPatternDrawable;

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/leo/salt/preference/AlphaPatternDrawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mBorderColor:I

    return v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mAlphaPattern:Lcom/leo/salt/preference/AlphaPatternDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/leo/salt/preference/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/preference/ColorPickerPanelView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPanelView;->getPaddingLeft()I

    move-result p4

    int-to-float p4, p4

    iput p4, p3, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPanelView;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    int-to-float p1, p1

    iput p1, p3, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPanelView;->getPaddingTop()I

    move-result p3

    int-to-float p3, p3

    iput p3, p1, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPanelView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerPanelView;->setUpColorRect()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mBorderColor:I

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPanelView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerPanelView;->mColor:I

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPanelView;->invalidate()V

    return-void
.end method
