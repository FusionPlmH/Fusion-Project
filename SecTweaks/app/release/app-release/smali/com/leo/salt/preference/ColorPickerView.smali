.class public Lcom/leo/salt/preference/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/preference/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f

.field private static final PANEL_ALPHA:I = 0x2

.field private static final PANEL_HUE:I = 0x1

.field private static final PANEL_SAT_VAL:I


# instance fields
.field private ALPHA_PANEL_HEIGHT:F

.field private HUE_PANEL_WIDTH:F

.field private PALETTE_CIRCLE_TRACKER_RADIUS:F

.field private PANEL_SPACING:F

.field private RECTANGLE_TRACKER_OFFSET:F

.field private mAlpha:I

.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mAlphaPattern:Lcom/leo/salt/preference/AlphaPatternDrawable;

.field private mAlphaRect:Landroid/graphics/RectF;

.field private mAlphaShader:Landroid/graphics/Shader;

.field private mAlphaSliderText:Ljava/lang/String;

.field private mAlphaTextPaint:Landroid/graphics/Paint;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mDensity:F

.field private mDrawingOffset:F

.field private mDrawingRect:Landroid/graphics/RectF;

.field private mHue:F

.field private mHuePaint:Landroid/graphics/Paint;

.field private mHueRect:Landroid/graphics/RectF;

.field private mHueShader:Landroid/graphics/Shader;

.field private mHueTrackerPaint:Landroid/graphics/Paint;

.field private mLastTouchedPanel:I

.field private mListener:Lcom/leo/salt/preference/ColorPickerView$OnColorChangedListener;

.field private mSat:F

.field private mSatShader:Landroid/graphics/Shader;

.field private mSatValPaint:Landroid/graphics/Paint;

.field private mSatValRect:Landroid/graphics/RectF;

.field private mSatValTrackerPaint:Landroid/graphics/Paint;

.field private mShowAlphaPanel:Z

.field private mSliderTrackerColor:I

.field private mStartTouchPoint:Landroid/graphics/Point;

.field private mVal:F

.field private mValShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/preference/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/leo/salt/preference/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41f00000    # 30.0f

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->HUE_PANEL_WIDTH:F

    const/high16 p1, 0x41a00000    # 20.0f

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->PANEL_SPACING:F

    const/high16 p1, 0x40a00000    # 5.0f

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mDensity:F

    const/16 p1, 0xff

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlpha:I

    const/high16 p1, 0x43b40000    # 360.0f

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mHue:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mSat:F

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mVal:F

    const-string p1, ""

    iput-object p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    const p1, -0xe3e3e4

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mSliderTrackerColor:I

    const p1, -0x919192

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mBorderColor:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mShowAlphaPanel:Z

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mLastTouchedPanel:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerView;->init()V

    return-void
.end method

.method private alphaToPoint(I)Landroid/graphics/Point;
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    int-to-float p1, p1

    mul-float p1, p1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr p1, v3

    sub-float/2addr v1, p1

    iget p1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v2, Landroid/graphics/Point;->x:I

    iget p1, v0, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    iput p1, v2, Landroid/graphics/Point;->y:I

    return-object v2
.end method

.method private buildHueColorArray()[I
    .locals 8

    const/16 v0, 0x169

    new-array v0, v0, [I

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ltz v1, :cond_0

    const/4 v5, 0x3

    new-array v5, v5, [F

    int-to-float v6, v1

    aput v6, v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v2

    const/4 v7, 0x2

    aput v6, v5, v7

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v4, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private calculateRequiredOffset()F
    .locals 3

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v1, p0, Lcom/leo/salt/preference/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    return v0
.end method

.method private chooseHeight(II)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerView;->getPrefferedHeight()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method private chooseWidth(II)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerView;->getPrefferedWidth()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method private drawAlphaPanel(Landroid/graphics/Canvas;)V
    .locals 13

    iget-boolean v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaPattern:Lcom/leo/salt/preference/AlphaPatternDrawable;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float v7, v1, v2

    iget-object v8, p0, Lcom/leo/salt/preference/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaPattern:Lcom/leo/salt/preference/AlphaPatternDrawable;

    invoke-virtual {v1, p1}, Lcom/leo/salt/preference/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mHue:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    iget v4, p0, Lcom/leo/salt/preference/ColorPickerView;->mSat:F

    aput v4, v1, v2

    const/4 v2, 0x2

    iget v4, p0, Lcom/leo/salt/preference/ColorPickerView;->mVal:F

    aput v4, v1, v2

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    invoke-static {v3, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v11

    new-instance v1, Landroid/graphics/LinearGradient;

    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget v8, v0, Landroid/graphics/RectF;->right:F

    iget v9, v0, Landroid/graphics/RectF;->top:F

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    const/high16 v2, 0x40800000    # 4.0f

    if-eqz v1, :cond_1

    const-string v3, ""

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, p0, Lcom/leo/salt/preference/ColorPickerView;->mDensity:F

    mul-float v5, v5, v2

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    iget v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mDensity:F

    mul-float v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlpha:I

    invoke-direct {p0, v3}, Lcom/leo/salt/preference/ColorPickerView;->alphaToPoint(I)Landroid/graphics/Point;

    move-result-object v3

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    iput v3, v4, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/leo/salt/preference/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v1, v3

    iput v1, v4, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/leo/salt/preference/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float v7, v1, v2

    iget-object v8, p0, Lcom/leo/salt/preference/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/LinearGradient;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerView;->buildHueColorArray()[I

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v1, 0x40800000    # 4.0f

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mDensity:F

    mul-float v2, v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    iget v3, p0, Lcom/leo/salt/preference/ColorPickerView;->mHue:F

    invoke-direct {p0, v3}, Lcom/leo/salt/preference/ColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    move-result-object v3

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/leo/salt/preference/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/leo/salt/preference/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v5

    iput v0, v4, Landroid/graphics/RectF;->right:F

    iget v0, v3, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    iput v0, v4, Landroid/graphics/RectF;->top:F

    iget v0, v3, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSatValPanel(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v8, v0, Lcom/leo/salt/preference/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget-object v1, v0, Lcom/leo/salt/preference/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/leo/salt/preference/ColorPickerView;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, v0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v1, v8, Landroid/graphics/RectF;->right:F

    const/high16 v9, 0x3f800000    # 1.0f

    add-float v4, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    add-float v5, v1, v9

    iget-object v6, v0, Lcom/leo/salt/preference/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/leo/salt/preference/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/LinearGradient;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    iget v12, v8, Landroid/graphics/RectF;->top:F

    iget v13, v8, Landroid/graphics/RectF;->left:F

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    const/4 v15, -0x1

    const/high16 v16, -0x1000000

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/leo/salt/preference/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, v0, Lcom/leo/salt/preference/ColorPickerView;->mHue:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v9, v1, v2

    const/4 v2, 0x2

    aput v9, v1, v2

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v16

    new-instance v1, Landroid/graphics/LinearGradient;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    iget v12, v8, Landroid/graphics/RectF;->top:F

    iget v13, v8, Landroid/graphics/RectF;->right:F

    iget v14, v8, Landroid/graphics/RectF;->top:F

    const/4 v15, -0x1

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/leo/salt/preference/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/ComposeShader;

    iget-object v2, v0, Lcom/leo/salt/preference/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    iget-object v3, v0, Lcom/leo/salt/preference/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iget-object v2, v0, Lcom/leo/salt/preference/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lcom/leo/salt/preference/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v1, v0, Lcom/leo/salt/preference/ColorPickerView;->mSat:F

    iget v2, v0, Lcom/leo/salt/preference/ColorPickerView;->mVal:F

    invoke-direct {v0, v1, v2}, Lcom/leo/salt/preference/ColorPickerView;->satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, v0, Lcom/leo/salt/preference/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, v0, Lcom/leo/salt/preference/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v5, v0, Lcom/leo/salt/preference/ColorPickerView;->mDensity:F

    mul-float v5, v5, v9

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/leo/salt/preference/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/leo/salt/preference/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const v3, -0x222223

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v3, v0, Lcom/leo/salt/preference/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget-object v4, v0, Lcom/leo/salt/preference/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getPrefferedHeight()I
    .locals 3

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mDensity:F

    const/high16 v1, 0x43480000    # 200.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-boolean v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    int-to-float v0, v0

    iget v1, p0, Lcom/leo/salt/preference/ColorPickerView;->PANEL_SPACING:F

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    return v0
.end method

.method private getPrefferedWidth()I
    .locals 3

    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerView;->getPrefferedHeight()I

    move-result v0

    iget-boolean v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    int-to-float v0, v0

    iget v1, p0, Lcom/leo/salt/preference/ColorPickerView;->PANEL_SPACING:F

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    int-to-float v0, v0

    iget v1, p0, Lcom/leo/salt/preference/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/leo/salt/preference/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private hueToPoint(F)Landroid/graphics/Point;
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    mul-float p1, p1, v1

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr p1, v3

    sub-float/2addr v1, p1

    iget p1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v2, Landroid/graphics/Point;->y:I

    iget p1, v0, Landroid/graphics/RectF;->left:F

    float-to-int p1, p1

    iput p1, v2, Landroid/graphics/Point;->x:I

    return-object v2
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mDensity:F

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mDensity:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerView;->HUE_PANEL_WIDTH:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerView;->HUE_PANEL_WIDTH:F

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerView;->PANEL_SPACING:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerView;->PANEL_SPACING:F

    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerView;->calculateRequiredOffset()F

    move-result v0

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingOffset:F

    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerView;->initPaintTools()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/ColorPickerView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/ColorPickerView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private initPaintTools()V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mDensity:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/leo/salt/preference/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/leo/salt/preference/ColorPickerView;->mDensity:F

    mul-float v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const v2, -0xe3e3e4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mDensity:F

    const/high16 v3, 0x41600000    # 14.0f

    mul-float v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method private moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {v3, v0, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iput v4, p0, Lcom/leo/salt/preference/ColorPickerView;->mLastTouchedPanel:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/ColorPickerView;->pointToHue(F)F

    move-result p1

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mHue:F

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/leo/salt/preference/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mLastTouchedPanel:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/leo/salt/preference/ColorPickerView;->pointToSatVal(FF)[F

    move-result-object p1

    aget v0, p1, v1

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mSat:F

    aget p1, p1, v4

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mVal:F

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mLastTouchedPanel:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/ColorPickerView;->pointToAlpha(I)I

    move-result p1

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlpha:I

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private pointToAlpha(I)I
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int/2addr p1, v0

    :goto_0
    mul-int/lit16 p1, p1, 0xff

    div-int/2addr p1, v1

    rsub-int p1, p1, 0xff

    return p1
.end method

.method private pointToHue(F)F
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v0

    :goto_0
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    return v0
.end method

.method private pointToSatVal(FF)[F
    .locals 6

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    const/4 v5, 0x0

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v4

    :goto_0
    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v0

    :goto_1
    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v2, v4, v2

    mul-float v2, v2, p1

    aput v2, v1, v0

    const/4 p1, 0x1

    div-float v0, v4, v3

    mul-float v0, v0, p2

    sub-float/2addr v4, v0

    aput v4, v1, p1

    return-object v1
.end method

.method private satValToPoint(FF)Landroid/graphics/Point;
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    mul-float p1, p1, v2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, v3, Landroid/graphics/Point;->x:I

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    mul-float p1, p1, v1

    iget p2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v3, Landroid/graphics/Point;->y:I

    return-object v3
.end method

.method private setUpAlphaRect()V
    .locals 5

    iget-boolean v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/leo/salt/preference/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v3, v4

    add-float/2addr v3, v2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v2

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1, v3, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    new-instance v0, Lcom/leo/salt/preference/AlphaPatternDrawable;

    const/high16 v1, 0x40a00000    # 5.0f

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mDensity:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-direct {v0, v1}, Lcom/leo/salt/preference/AlphaPatternDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaPattern:Lcom/leo/salt/preference/AlphaPatternDrawable;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaPattern:Lcom/leo/salt/preference/AlphaPatternDrawable;

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/leo/salt/preference/AlphaPatternDrawable;->setBounds(IIII)V

    return-void
.end method

.method private setUpHueRect()V
    .locals 7

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v2

    iget-boolean v5, p0, Lcom/leo/salt/preference/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/leo/salt/preference/ColorPickerView;->PANEL_SPACING:F

    iget v6, p0, Lcom/leo/salt/preference/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v5, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    sub-float/2addr v4, v5

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1, v3, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    return-void
.end method

.method private setUpSatValRect()V
    .locals 5

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lcom/leo/salt/preference/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    :cond_0
    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v3

    add-float v3, v0, v1

    add-float/2addr v1, v2

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2, v0, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/leo/salt/preference/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getAlphaSliderText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaSliderVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mShowAlphaPanel:Z

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mBorderColor:I

    return v0
.end method

.method public getColor()I
    .locals 4

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlpha:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mHue:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mSat:F

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mVal:F

    const/4 v3, 0x2

    aput v2, v1, v3

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public getDrawingOffset()F
    .locals 1

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingOffset:F

    return v0
.end method

.method public getSliderTrackerColor()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mSliderTrackerColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/leo/salt/preference/ColorPickerView;->drawSatValPanel(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/ColorPickerView;->drawHuePanel(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/ColorPickerView;->drawAlphaPanel(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-direct {p0, v0, p1}, Lcom/leo/salt/preference/ColorPickerView;->chooseWidth(II)I

    move-result p1

    invoke-direct {p0, v1, p2}, Lcom/leo/salt/preference/ColorPickerView;->chooseHeight(II)I

    move-result p2

    iget-boolean v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v0, :cond_2

    int-to-float v0, p1

    iget v1, p0, Lcom/leo/salt/preference/ColorPickerView;->PANEL_SPACING:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/leo/salt/preference/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    if-gt v0, p2, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerView;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "landscape"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float p1, p2

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr p1, v0

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_1

    :cond_2
    int-to-float v0, p2

    iget v1, p0, Lcom/leo/salt/preference/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    if-le v0, p1, :cond_3

    int-to-float p2, p1

    sub-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p2, p2

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/preference/ColorPickerView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget p4, p0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p4, v0

    iput p4, p3, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    iget p4, p0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr p1, p4

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerView;->getPaddingRight()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p1, p4

    iput p1, p3, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget p3, p0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerView;->getPaddingTop()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p3, p4

    iput p3, p1, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float p2, p2

    iget p3, p0, Lcom/leo/salt/preference/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr p2, p3

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerView;->getPaddingBottom()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerView;->setUpSatValRect()V

    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerView;->setUpHueRect()V

    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerView;->setUpAlphaRect()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/leo/salt/preference/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mListener:Lcom/leo/salt/preference/ColorPickerView$OnColorChangedListener;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlpha:I

    const/4 v3, 0x3

    new-array v3, v3, [F

    iget v4, p0, Lcom/leo/salt/preference/ColorPickerView;->mHue:F

    aput v4, v3, v1

    iget v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mSat:F

    aput v1, v3, v0

    const/4 v1, 0x2

    iget v4, p0, Lcom/leo/salt/preference/ColorPickerView;->mVal:F

    aput v4, v3, v1

    invoke-static {v2, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/leo/salt/preference/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerView;->invalidate()V

    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_a

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mLastTouchedPanel:I

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-boolean v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlpha:I

    int-to-float v1, v1

    mul-float v0, v0, v6

    sub-float/2addr v1, v0

    float-to-int v0, v1

    const/16 v1, 0xff

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    const/16 v0, 0xff

    :cond_2
    :goto_0
    iput v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlpha:I

    const/4 v0, 0x1

    goto :goto_6

    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_6

    :pswitch_1
    iget v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mHue:F

    mul-float v1, v1, v6

    sub-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    cmpg-float v2, v0, v7

    if-gez v2, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    cmpl-float v2, v0, v1

    if-lez v2, :cond_5

    const/high16 v0, 0x43b40000    # 360.0f

    :cond_5
    :goto_2
    iput v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mHue:F

    const/4 v0, 0x1

    goto :goto_6

    :pswitch_2
    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mSat:F

    const/high16 v6, 0x42480000    # 50.0f

    div-float/2addr v0, v6

    add-float/2addr v0, v2

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mVal:F

    div-float/2addr v1, v6

    sub-float v1, v2, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v6, v0, v7

    if-gez v6, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    cmpl-float v6, v0, v2

    if-lez v6, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_7
    :goto_3
    cmpg-float v6, v1, v7

    if-gez v6, :cond_8

    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    cmpl-float v6, v1, v2

    if-lez v6, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_9
    :goto_4
    iput v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mSat:F

    iput v1, p0, Lcom/leo/salt/preference/ColorPickerView;->mVal:F

    const/4 v0, 0x1

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mListener:Lcom/leo/salt/preference/ColorPickerView$OnColorChangedListener;

    if-eqz p1, :cond_b

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlpha:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mHue:F

    aput v2, v1, v4

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mSat:F

    aput v2, v1, v5

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mVal:F

    aput v2, v1, v3

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/leo/salt/preference/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_b
    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerView;->invalidate()V

    return v5

    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAlphaSliderText(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/ColorPickerView;->setAlphaSliderText(Ljava/lang/String;)V

    return-void
.end method

.method public setAlphaSliderText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mShowAlphaPanel:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mShowAlphaPanel:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    iput-object p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    iput-object p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    iput-object p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mBorderColor:I

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/preference/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public setColor(IZ)V
    .locals 5

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v1, 0x3

    new-array v2, v1, [F

    invoke-static {p1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlpha:I

    const/4 p1, 0x0

    aget v0, v2, p1

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mHue:F

    const/4 v0, 0x1

    aget v3, v2, v0

    iput v3, p0, Lcom/leo/salt/preference/ColorPickerView;->mSat:F

    const/4 v3, 0x2

    aget v2, v2, v3

    iput v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mVal:F

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/leo/salt/preference/ColorPickerView;->mListener:Lcom/leo/salt/preference/ColorPickerView$OnColorChangedListener;

    if-eqz p2, :cond_0

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerView;->mAlpha:I

    new-array v1, v1, [F

    iget v4, p0, Lcom/leo/salt/preference/ColorPickerView;->mHue:F

    aput v4, v1, p1

    iget p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mSat:F

    aput p1, v1, v0

    iget p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mVal:F

    aput p1, v1, v3

    invoke-static {v2, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/leo/salt/preference/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setOnColorChangedListener(Lcom/leo/salt/preference/ColorPickerView$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mListener:Lcom/leo/salt/preference/ColorPickerView$OnColorChangedListener;

    return-void
.end method

.method public setSliderTrackerColor(I)V
    .locals 1

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mSliderTrackerColor:I

    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/leo/salt/preference/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerView;->invalidate()V

    return-void
.end method
