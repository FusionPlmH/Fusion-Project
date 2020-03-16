.class public Lcom/leo/salt/preference/SaltSettingColorPickerPreference;
.super Landroid/preference/Preference;
.source "SaltSettingColorPickerPreference.java"


# static fields
.field private static final ANDROIDNS:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final DEF_VALUE_DEFAULT:I = -0x6

.field private static final DEF_VALUE_DEFAULT_CHECK:I = -0x7


# instance fields
.field protected alphaSlider:Z

.field protected colorIndicator:Landroid/widget/ImageView;

.field protected density:I

.field protected lightSlider:Z

.field private mAutoSummary:Z

.field private mDensity:F

.field public mKey:Ljava/lang/String;

.field private mReverseDependencyKey:Ljava/lang/String;

.field private mValue:I

.field protected selectedColor:I

.field protected wheelType:Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->selectedColor:I

    iput-boolean p1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mAutoSummary:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mDensity:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "leo_salt_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mKey:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->selectedColor:I

    iput-boolean v0, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mAutoSummary:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mDensity:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leo_salt_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mKey:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mValue:I

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->selectedColor:I

    iput-boolean p3, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mAutoSummary:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mDensity:F

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "leo_salt_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mKey:Ljava/lang/String;

    const/4 p3, -0x1

    iput p3, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mValue:I

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->selectedColor:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    const/4 v6, 0x1

    if-le v4, v6, :cond_0

    if-le v5, v6, :cond_0

    add-int/lit8 v6, v2, -0x2

    if-ge v4, v6, :cond_0

    add-int/lit8 v6, v3, -0x2

    :cond_0
    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    if-eq v4, v5, :cond_1

    invoke-virtual {v0, v5, v4, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "defaultValue"

    const-string v1, "http://schemas.android.com/apk/res/android"

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mDensity:F

    sget-object v2, Lcom/leo/salt/tweaks/R$styleable;->ColorPickerPreference:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->alphaSlider:Z

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->lightSlider:Z

    const/4 v4, 0x2

    const/16 v5, 0xa

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->density:I

    const/4 v4, 0x1

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-static {v5}, Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;->indexOf(I)Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;

    move-result-object v5

    iput-object v5, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->wheelType:Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;

    const/4 v5, -0x6

    invoke-interface {p2, v1, v0, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->selectedColor:I

    iget v6, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->selectedColor:I

    if-ne v6, v5, :cond_1

    const/4 v5, -0x7

    invoke-interface {p2, v1, v0, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iget v6, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->selectedColor:I

    if-eq v5, v6, :cond_1

    invoke-interface {p2, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->selectedColor:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Preference with key \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" needs a default value (check your xml!)!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->selectedColor:I

    iput v0, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mValue:I

    const v0, 0x7f0c0039

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->setWidgetLayoutResource(I)V

    sget-object v0, Lcom/leo/salt/tweaks/R$styleable;->LeoPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private setAutoSummaryColor()V
    .locals 6

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->selectedColor:I

    iget-boolean v4, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->alphaSlider:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->convertToARGB(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    const-string v2, "#ffa0a0a0"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->selectedColor:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-direct {p0, v0, v5}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private setPreviewColor(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mAutoSummary:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->setAutoSummaryColor()V

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x1020018

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v0, 0xc

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    new-instance p1, Lcom/leo/salt/colorpicker/CircleColorDrawable;

    const/high16 v0, 0x40a00000    # 5.0f

    iget v2, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mDensity:F

    mul-float v2, v2, v0

    float-to-int v0, v2

    invoke-direct {p1, v0}, Lcom/leo/salt/colorpicker/CircleColorDrawable;-><init>(I)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance p1, Lcom/leo/salt/preference/SaltSettingColorPickerPreference$1;

    invoke-direct {p1, p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference$1;-><init>(Lcom/leo/salt/preference/SaltSettingColorPickerPreference;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    const/high16 p1, 0x41200000    # 10.0f

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setElevation(F)V

    return-void
.end method

.method private setSummary(Ljava/lang/CharSequence;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mAutoSummary:Z

    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public convertToARGB(IZ)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "0"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    if-eqz p2, :cond_4

    const-string v0, ""

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$onClick$0$SaltSettingColorPickerPreference(Landroid/content/DialogInterface;I[Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->setValue(I)V

    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 2

    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    :cond_0
    check-cast v0, Lcom/leo/salt/preference/ReverseDependencyMonitor;

    invoke-interface {v0, p0}, Lcom/leo/salt/preference/ReverseDependencyMonitor;->registerReverseDependencyPreference(Landroid/preference/Preference;)V

    :cond_1
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->setPreviewColor(Landroid/view/View;)V

    return-void
.end method

.method public onClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->with(Landroid/content/Context;)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget v1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->selectedColor:I

    invoke-virtual {v0, v1}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->initialColor(I)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->wheelType:Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;

    invoke-virtual {v0, v1}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->wheelType(Lcom/leo/salt/colorpicker/ColorPickerView$WHEEL_TYPE;)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget v1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->density:I

    invoke-virtual {v0, v1}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->density(I)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400a5

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->setColorEditTextColor(I)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/preference/-$$Lambda$SaltSettingColorPickerPreference$cZVX8uDJFBFimvo_jRIT8UBtmgg;

    invoke-direct {v1, p0}, Lcom/leo/salt/preference/-$$Lambda$SaltSettingColorPickerPreference$cZVX8uDJFBFimvo_jRIT8UBtmgg;-><init>(Lcom/leo/salt/preference/SaltSettingColorPickerPreference;)V

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->setPositiveButton(ILcom/leo/salt/colorpicker/builder/ColorPickerClickListener;)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->alphaSlider:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->lightSlider:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->noSliders()Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->alphaSlider:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->lightnessSliderOnly()Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->lightSlider:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->alphaSliderOnly()Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/leo/salt/colorpicker/builder/ColorPickerDialogBuilder;->build()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onColorChanged(ILandroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->persistInt(I)Z

    :cond_0
    iput p1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mValue:I

    invoke-direct {p0, p2}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->setPreviewColor(Landroid/view/View;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mValue:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getPersistedInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mKey:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getPersistedInt(I)I

    move-result p1

    goto :goto_2

    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_2
    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->setValue(I)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setValue(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->selectedColor:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->persistInt(I)Z

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->notifyChanged()V

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mKey:Ljava/lang/String;

    iget v1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->selectedColor:I

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean p1, p0, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->mAutoSummary:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/leo/salt/preference/SaltSettingColorPickerPreference;->setAutoSummaryColor()V

    :cond_1
    return-void
.end method
