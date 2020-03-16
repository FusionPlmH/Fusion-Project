.class public Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
.super Ljava/lang/Object;
.source "ColorPickerDialogBuilder.java"


# instance fields
.field private alphaSlider:Lcom/leo/salt/colorpicker/slider/AlphaSlider;

.field private builder:Landroid/app/AlertDialog$Builder;

.field private colorEdit:Landroid/widget/EditText;

.field private colorPickerView:Lcom/leo/salt/colorpicker/ColorPickerView;

.field private colorPreview:Landroid/widget/LinearLayout;

.field private defaultMargin:I

.field private initialColor:[Ljava/lang/Integer;

.field private isAlphaSliderEnabled:Z

.field private isColorEditEnabled:Z

.field private isLightnessSliderEnabled:Z

.field private isPreviewEnabled:Z

.field private lightnessSlider:Lcom/leo/salt/colorpicker/slider/LightnessSlider;

.field private pickerContainer:Landroid/widget/LinearLayout;

.field private pickerCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    iput-boolean v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    iput-boolean v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isColorEditEnabled:Z

    iput-boolean v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isPreviewEnabled:Z

    iput v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->pickerCount:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->defaultMargin:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    aput-object v3, v2, v0

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    const v2, 0x7f070064

    invoke-static {p1, v2}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->getDimensionAsPx(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->defaultMargin:I

    const v2, 0x7f070065

    invoke-static {p1, v2}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->getDimensionAsPx(Landroid/content/Context;I)I

    move-result v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p2, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p2, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->defaultMargin:I

    invoke-virtual {p2, v0, v2, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v0, Lcom/leo/salt/colorpicker/ColorPickerView;

    invoke-direct {v0, p1}, Lcom/leo/salt/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/leo/salt/colorpicker/ColorPickerView;

    iget-object p1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/leo/salt/colorpicker/ColorPickerView;

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;Landroid/content/DialogInterface;Lcom/leo/salt/colorpicker/builder/ColorPickerClickListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->positiveButtonOnClick(Landroid/content/DialogInterface;Lcom/leo/salt/colorpicker/builder/ColorPickerClickListener;)V

    return-void
.end method

.method private static getDimensionAsPx(Landroid/content/Context;I)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private getStartColor([Ljava/lang/Integer;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->getStartOffset([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method private getStartOffset([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private positiveButtonOnClick(Landroid/content/DialogInterface;Lcom/leo/salt/colorpicker/builder/ColorPickerClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/leo/salt/colorpicker/ColorPickerView;

    invoke-virtual {v0}, Lcom/leo/salt/colorpicker/ColorPickerView;->getSelectedColor()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/leo/salt/colorpicker/ColorPickerView;

    invoke-virtual {v1}, Lcom/leo/salt/colorpicker/ColorPickerView;->getAllColors()[Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p1, v0, v1}, Lcom/leo/salt/colorpicker/builder/ColorPickerClickListener;->onClick(Landroid/content/DialogInterface;I[Ljava/lang/Integer;)V

    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    new-instance v0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

    invoke-direct {v0, p0}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static with(Landroid/content/Context;I)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    new-instance v0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

    invoke-direct {v0, p0, p1}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public alphaSliderOnly()Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    return-object p0
.end method

.method public build()Landroid/app/AlertDialog;
    .locals 6

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/leo/salt/colorpicker/ColorPickerView;

    iget-object v2, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->getStartOffset([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/leo/salt/colorpicker/ColorPickerView;->setInitialColors([Ljava/lang/Integer;I)V

    const v1, 0x7f0c0038

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPreview:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f090137

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/colorpicker/slider/LightnessSlider;

    iput-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->lightnessSlider:Lcom/leo/salt/colorpicker/slider/LightnessSlider;

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/leo/salt/colorpicker/ColorPickerView;

    iget-object v1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->lightnessSlider:Lcom/leo/salt/colorpicker/slider/LightnessSlider;

    invoke-virtual {v0, v1}, Lcom/leo/salt/colorpicker/ColorPickerView;->setLightnessSlider(Lcom/leo/salt/colorpicker/slider/LightnessSlider;)V

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->lightnessSlider:Lcom/leo/salt/colorpicker/slider/LightnessSlider;

    iget-object v1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->getStartColor([Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/colorpicker/slider/LightnessSlider;->setColor(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/colorpicker/slider/AlphaSlider;

    iput-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->alphaSlider:Lcom/leo/salt/colorpicker/slider/AlphaSlider;

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/leo/salt/colorpicker/ColorPickerView;

    iget-object v1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->alphaSlider:Lcom/leo/salt/colorpicker/slider/AlphaSlider;

    invoke-virtual {v0, v1}, Lcom/leo/salt/colorpicker/ColorPickerView;->setAlphaSlider(Lcom/leo/salt/colorpicker/slider/AlphaSlider;)V

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->alphaSlider:Lcom/leo/salt/colorpicker/slider/AlphaSlider;

    iget-object v1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->getStartColor([Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/colorpicker/slider/AlphaSlider;->setColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f0900d5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v3}, Landroid/text/InputFilter$AllCaps;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "color_select_value_title"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    :goto_0
    iget-object v3, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->getStartColor([Ljava/lang/Integer;)I

    move-result v3

    iget-boolean v5, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    invoke-static {v3, v5}, Lcom/leo/salt/colorpicker/Utils;->getHexString(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/leo/salt/colorpicker/ColorPickerView;

    invoke-virtual {v1, v0}, Lcom/leo/salt/colorpicker/ColorPickerView;->setColorEdit(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/leo/salt/colorpicker/ColorPickerView;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/leo/salt/colorpicker/ColorPickerView;->setDensity(I)V

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/leo/salt/colorpicker/CircleColorDrawable;

    iget-object v2, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/leo/salt/colorpicker/CircleColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/leo/salt/colorpicker/ColorPickerView;

    new-instance v2, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder$3;

    invoke-direct {v2, p0, v0}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder$3;-><init>(Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lcom/leo/salt/colorpicker/ColorPickerView;->addOnColorChangedListener(Lcom/leo/salt/colorpicker/OnColorChangedListener;)V

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f090138

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPreview:Landroid/widget/LinearLayout;

    const v2, 0x7f09002e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "color_select_alpha_title"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "color_select_brightness_title"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public density(I)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/leo/salt/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/leo/salt/colorpicker/ColorPickerView;->setDensity(I)V

    return-object p0
.end method

.method public initialColor(I)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object p0
.end method

.method public initialColors([I)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public lightnessSliderOnly()Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    return-object p0
.end method

.method public noSliders()Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    iput-boolean v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    return-object p0
.end method

.method public setColorEditTextColor(I)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/leo/salt/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/leo/salt/colorpicker/ColorPickerView;->setColorEditTextColor(I)V

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setOnColorChangedListener(Lcom/leo/salt/colorpicker/OnColorChangedListener;)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/leo/salt/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/leo/salt/colorpicker/ColorPickerView;->addOnColorChangedListener(Lcom/leo/salt/colorpicker/OnColorChangedListener;)V

    return-object p0
.end method

.method public setOnColorSelectedListener(Lcom/leo/salt/colorpicker/OnColorSelectedListener;)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/leo/salt/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/leo/salt/colorpicker/ColorPickerView;->addOnColorSelectedListener(Lcom/leo/salt/colorpicker/OnColorSelectedListener;)V

    return-object p0
.end method

.method public setPickerCount(I)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v1, 0x5

    if-gt p1, v1, :cond_1

    iput p1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->pickerCount:I

    iget p1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->pickerCount:I

    if-le p1, v0, :cond_0

    iput-boolean v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isPreviewEnabled:Z

    :cond_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Picker Can Only Support 1-5 Colors"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPositiveButton(ILcom/leo/salt/colorpicker/builder/ColorPickerClickListener;)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder$2;

    invoke-direct {v1, p0, p2}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder$2;-><init>(Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;Lcom/leo/salt/colorpicker/builder/ColorPickerClickListener;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/leo/salt/colorpicker/builder/ColorPickerClickListener;)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder$1;

    invoke-direct {v1, p0, p2}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder$1;-><init>(Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;Lcom/leo/salt/colorpicker/builder/ColorPickerClickListener;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setTitle(I)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public showAlphaSlider(Z)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    return-object p0
.end method

.method public showColorEdit(Z)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isColorEditEnabled:Z

    return-object p0
.end method

.method public showColorPreview(Z)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isPreviewEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->pickerCount:I

    :cond_0
    return-object p0
.end method

.method public showLightnessSlider(Z)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    return-object p0
.end method

.method public wheelType(Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    invoke-static {p1}, Lcom/leo/salt/colorpicker/builder/ColorWheelRendererBuilder;->getRenderer(Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;)Lcom/leo/salt/colorpicker/renderer/ColorWheelRenderer;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/leo/salt/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/leo/salt/colorpicker/ColorPickerView;->setRenderer(Lcom/leo/salt/colorpicker/renderer/ColorWheelRenderer;)V

    return-object p0
.end method
