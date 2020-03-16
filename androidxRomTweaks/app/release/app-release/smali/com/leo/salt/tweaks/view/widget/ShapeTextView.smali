.class public Lcom/leo/salt/tweaks/view/widget/ShapeTextView;
.super Landroid/widget/TextView;
.source "ShapeTextView.java"


# instance fields
.field private bottomLeftRadius:F

.field private bottomRightRadius:F

.field dashGap:F

.field dashWidth:F

.field private gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private openSelector:Z

.field private radius:F

.field private selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private solidColor:I

.field private solidTouchColor:I

.field private strokeColor:I

.field private strokeTouchColor:I

.field private strokeWidth:I

.field private textColor:I

.field private textTouchColor:I

.field private topLeftRadius:F

.field private topRightRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 22

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->solidColor:I

    iput v1, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->strokeColor:I

    iput v1, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->solidTouchColor:I

    iput v1, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->strokeTouchColor:I

    iput v1, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->textTouchColor:I

    iput v1, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->strokeWidth:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->dashWidth:F

    iput v2, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->dashGap:F

    iput v1, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->textColor:I

    invoke-direct/range {p0 .. p2}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v2, 0x8

    new-array v3, v2, [F

    iget v4, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->topLeftRadius:F

    aput v4, v3, v1

    const/4 v9, 0x1

    aput v4, v3, v9

    iget v4, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->topRightRadius:F

    const/4 v10, 0x2

    aput v4, v3, v10

    const/4 v11, 0x3

    aput v4, v3, v11

    iget v4, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->bottomRightRadius:F

    const/4 v12, 0x4

    aput v4, v3, v12

    const/4 v13, 0x5

    aput v4, v3, v13

    iget v4, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->bottomLeftRadius:F

    const/4 v14, 0x6

    aput v4, v3, v14

    const/4 v15, 0x7

    aput v4, v3, v15

    iget v4, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->solidColor:I

    iget v5, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->strokeWidth:I

    iget v6, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->strokeColor:I

    iget v7, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->dashWidth:F

    iget v8, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->dashGap:F

    invoke-static/range {v3 .. v8}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->getNeedDrawable([FIIIFF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    iput-object v3, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-boolean v3, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->openSelector:Z

    if-eqz v3, :cond_0

    new-array v2, v2, [F

    iget v3, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->topLeftRadius:F

    aput v3, v2, v1

    aput v3, v2, v9

    iget v3, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->topRightRadius:F

    aput v3, v2, v10

    aput v3, v2, v11

    iget v3, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->bottomRightRadius:F

    aput v3, v2, v12

    aput v3, v2, v13

    iget v3, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->bottomLeftRadius:F

    aput v3, v2, v14

    aput v3, v2, v15

    iget v3, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->solidTouchColor:I

    iget v4, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->strokeWidth:I

    iget v5, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->strokeTouchColor:I

    iget v6, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->dashWidth:F

    iget v7, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->dashGap:F

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    invoke-static/range {v16 .. v21}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->getNeedDrawable([FIIIFF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v3, 0x10100a7

    new-array v4, v9, [I

    aput v3, v4, v1

    iget-object v3, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v1, [I

    iget-object v3, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public static getNeedDrawable([FIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public static getNeedDrawable([FIIIFF)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public static getNeedDrawable([F[III)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/leo/salt/tweaks/R$styleable;->ShapeTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->openSelector:Z

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->solidColor:I

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->strokeColor:I

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->solidTouchColor:I

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->strokeTouchColor:I

    const/16 p2, 0xb

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->textTouchColor:I

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->getCurrentTextColor()I

    move-result p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->textColor:I

    const/4 p2, 0x0

    const/16 v0, 0xa

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->strokeWidth:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->radius:F

    iget v0, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->radius:F

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->topLeftRadius:F

    iget v0, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->radius:F

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->topRightRadius:F

    iget v0, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->radius:F

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->bottomLeftRadius:F

    iget v0, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->radius:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->bottomRightRadius:F

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->dashGap:F

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/leo/salt/tweaks/view/widget/ShapeTextView;->dashWidth:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
