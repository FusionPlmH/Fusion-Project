.class public Lcom/leo/salt/colorpicker/slider/LightnessSlider;
.super Lcom/leo/salt/colorpicker/slider/AbsCustomSlider;
.source "LightnessSlider.java"


# instance fields
.field private barPaint:Landroid/graphics/Paint;

.field private clearingStroke:Landroid/graphics/Paint;

.field private color:I

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

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->barPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->solid:Landroid/graphics/Paint;

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

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->clearingStroke:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/colorpicker/slider/AbsCustomSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->barPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->solid:Landroid/graphics/Paint;

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

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->clearingStroke:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/leo/salt/colorpicker/slider/AbsCustomSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->barPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->solid:Landroid/graphics/Paint;

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

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->clearingStroke:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected drawBar(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x3

    new-array v2, v2, [F

    iget v3, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->color:I

    invoke-static {v3, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    div-int/lit16 v3, v0, 0x100

    const/4 v4, 0x2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-gt v5, v0, :cond_0

    int-to-float v7, v5

    add-int/lit8 v6, v0, -0x1

    int-to-float v6, v6

    div-float v6, v7, v6

    aput v6, v2, v4

    iget-object v6, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->barPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v8, 0x0

    add-int/2addr v5, v3

    int-to-float v9, v5

    int-to-float v10, v1

    iget-object v11, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->barPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected drawHandle(Landroid/graphics/Canvas;FF)V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->solid:Landroid/graphics/Paint;

    iget v1, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->color:I

    iget v2, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->value:F

    invoke-static {v1, v2}, Lcom/leo/salt/colorpicker/Utils;->colorAtLightness(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->handleRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->clearingStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->handleRadius:I

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->solid:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onValueChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->colorPicker:Lcom/leo/salt/colorpicker/ColorPickerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/leo/salt/colorpicker/ColorPickerView;->setLightness(F)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->color:I

    invoke-static {p1}, Lcom/leo/salt/colorpicker/Utils;->lightnessOfColor(I)F

    move-result p1

    iput p1, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->value:F

    iget-object p1, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->bar:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->updateBar()V

    invoke-virtual {p0}, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->invalidate()V

    :cond_0
    return-void
.end method

.method public setColorPicker(Lcom/leo/salt/colorpicker/ColorPickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->colorPicker:Lcom/leo/salt/colorpicker/ColorPickerView;

    return-void
.end method
