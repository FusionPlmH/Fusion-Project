.class public Lcom/leo/salt/colorpicker/slider/AlphaSlider;
.super Lcom/leo/salt/colorpicker/slider/AbsCustomSlider;
.source "AlphaSlider.java"


# instance fields
.field private alphaPatternPaint:Landroid/graphics/Paint;

.field private barPaint:Landroid/graphics/Paint;

.field private clearingStroke:Landroid/graphics/Paint;

.field public color:I

.field private colorPicker:Lcom/leo/salt/colorpicker/ColorPickerView;

.field private solid:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/leo/salt/colorpicker/slider/AbsCustomSlider;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->xPerMode(Landroid/graphics/PorterDuff$Mode;)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->clearingStroke:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/colorpicker/slider/AbsCustomSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->xPerMode(Landroid/graphics/PorterDuff$Mode;)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->clearingStroke:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/leo/salt/colorpicker/slider/AbsCustomSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->xPerMode(Landroid/graphics/PorterDuff$Mode;)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->clearingStroke:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected createBitmaps()V
    .locals 2

    invoke-super {p0}, Lcom/leo/salt/colorpicker/slider/AbsCustomSlider;->createBitmaps()V

    iget-object v0, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->barHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->createAlphaPatternShader(I)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method protected drawBar(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v0

    int-to-float v1, v1

    iget-object v7, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    div-int/lit16 v2, v0, 0x100

    const/4 v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v0, :cond_0

    int-to-float v7, v3

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    div-float v4, v7, v4

    iget-object v5, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->color:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v4, v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v8, 0x0

    add-int/2addr v3, v2

    int-to-float v9, v3

    iget-object v11, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->barPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v10, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected drawHandle(Landroid/graphics/Canvas;FF)V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    iget v1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    iget v1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->value:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->handleRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->clearingStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->value:F

    const/high16 v1, 0x3f400000    # 0.75f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->handleRadius:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->alphaPatternPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget v0, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->handleRadius:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->solid:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onValueChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->colorPicker:Lcom/leo/salt/colorpicker/ColorPickerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/leo/salt/colorpicker/ColorPickerView;->setAlphaValue(F)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->color:I

    invoke-static {p1}, Lcom/leo/salt/colorpicker/Utils;->getAlphaPercent(I)F

    move-result p1

    iput p1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->value:F

    iget-object p1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->bar:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->updateBar()V

    invoke-virtual {p0}, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->invalidate()V

    :cond_0
    return-void
.end method

.method public setColorPicker(Lcom/leo/salt/colorpicker/ColorPickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->colorPicker:Lcom/leo/salt/colorpicker/ColorPickerView;

    return-void
.end method
