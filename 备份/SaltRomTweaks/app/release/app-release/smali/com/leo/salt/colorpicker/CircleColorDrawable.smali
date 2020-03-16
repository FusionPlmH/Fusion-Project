.class public Lcom/leo/salt/colorpicker/CircleColorDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "CircleColorDrawable.java"


# instance fields
.field private fillBackPaint:Landroid/graphics/Paint;

.field private fillPaint:Landroid/graphics/Paint;

.field private strokePaint:Landroid/graphics/Paint;

.field private strokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->style(Landroid/graphics/Paint$Style;)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    iget v1, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->strokeWidth:F

    invoke-virtual {v0, v1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->stroke(F)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->style(Landroid/graphics/Paint$Style;)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->createAlphaPatternShader(I)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->shader(Landroid/graphics/Shader;)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->fillBackPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->style(Landroid/graphics/Paint$Style;)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    iget v0, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->strokeWidth:F

    invoke-virtual {p1, v0}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->stroke(F)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->style(Landroid/graphics/Paint$Style;)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->newPaint()Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/leo/salt/colorpicker/builder/PaintBuilder;->createAlphaPatternShader(I)Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->shader(Landroid/graphics/Shader;)Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->fillBackPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41400000    # 12.0f

    div-float v1, v0, v1

    iput v1, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->strokeWidth:F

    iget-object v1, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->strokePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->strokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/leo/salt/colorpicker/CircleColorDrawable;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->strokeWidth:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v1, v1, v2

    sub-float v1, v0, v1

    iget-object v3, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->fillBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->strokeWidth:F

    mul-float v1, v1, v2

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->strokeWidth:F

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/leo/salt/colorpicker/CircleColorDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    invoke-virtual {p0}, Lcom/leo/salt/colorpicker/CircleColorDrawable;->invalidateSelf()V

    return-void
.end method
