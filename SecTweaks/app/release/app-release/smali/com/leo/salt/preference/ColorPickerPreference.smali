.class public Lcom/leo/salt/preference/ColorPickerPreference;
.super Landroid/preference/Preference;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/leo/salt/preference/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/preference/ColorPickerPreference$SavedState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final leo:Ljava/lang/String; = "http://schemas.android.com/apk/res/com.leo.salt"


# instance fields
.field private mAlphaSliderEnabled:Z

.field mDefaultValue:I

.field private mDensity:F

.field private mDialog:Lcom/leo/salt/preference/ColorPickerDialog;

.field private mHexValueEnabled:Z

.field private mIsInitialSetup:Z

.field private final mIsRebootRequired:Z

.field private final mIsSilent:Z

.field private final mPackageToKill:Ljava/lang/String;

.field private mReverseDependencyKey:Ljava/lang/String;

.field private mValue:I

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mValue:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDensity:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDefaultValue:I

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/preference/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/leo/salt/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mPackageToKill:Ljava/lang/String;

    const/16 p2, 0x1a

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mIsSilent:Z

    const/16 p2, 0x20

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mIsRebootRequired:Z

    const/16 p2, 0x21

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static convertToARGB(I)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static convertToColorInt(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static convertToRGB(I)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mValue:I

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

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDensity:F

    invoke-virtual {p0, p0}, Lcom/leo/salt/preference/ColorPickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    if-eqz p2, :cond_2

    const-string v0, "http://schemas.android.com/apk/res/com.leo.salt"

    const-string v1, "defaultColor"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/leo/salt/preference/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDefaultValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ColorPickerPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "#FF000000"

    invoke-static {p1}, Lcom/leo/salt/preference/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDefaultValue:I

    goto :goto_0

    :cond_0
    const-string v0, "http://schemas.android.com/apk/res/com.leo.salt"

    const-string v1, "defaultColor"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDefaultValue:I

    :cond_1
    :goto_0
    const-string p1, "alphaSlider"

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, v1, p1, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mAlphaSliderEnabled:Z

    const-string p1, "hexValue"

    invoke-interface {p2, v1, p1, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mHexValueEnabled:Z

    :cond_2
    iget p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDefaultValue:I

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mValue:I

    return-void
.end method

.method private setPreviewColor()V
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mView:Landroid/view/View;

    const v3, 0x1020018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v0, 0xc

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    new-instance v0, Lcom/leo/salt/preference/AlphaPatternDrawable;

    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDensity:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-direct {v0, v2}, Lcom/leo/salt/preference/AlphaPatternDrawable;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Lcom/leo/salt/preference/ColorPickerPreference$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/preference/ColorPickerPreference$1;-><init>(Lcom/leo/salt/preference/ColorPickerPreference;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setElevation(F)V

    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 4

    new-instance v0, Lcom/leo/salt/preference/ColorPickerDialog;

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mValue:I

    iget v3, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDefaultValue:I

    invoke-direct {v0, v1, v2, v3}, Lcom/leo/salt/preference/ColorPickerDialog;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDialog:Lcom/leo/salt/preference/ColorPickerDialog;

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDialog:Lcom/leo/salt/preference/ColorPickerDialog;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/ColorPickerDialog;->setOnColorChangedListener(Lcom/leo/salt/preference/ColorPickerDialog$OnColorChangedListener;)V

    iget-boolean v0, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mAlphaSliderEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDialog:Lcom/leo/salt/preference/ColorPickerDialog;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/ColorPickerDialog;->setAlphaSliderVisible(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mHexValueEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDialog:Lcom/leo/salt/preference/ColorPickerDialog;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/ColorPickerDialog;->setHexValueEnabled(Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDialog:Lcom/leo/salt/preference/ColorPickerDialog;

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/ColorPickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDialog:Lcom/leo/salt/preference/ColorPickerDialog;

    invoke-virtual {p1}, Lcom/leo/salt/preference/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f080071

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDialog:Lcom/leo/salt/preference/ColorPickerDialog;

    invoke-virtual {p1}, Lcom/leo/salt/preference/ColorPickerDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onAttachedToActivity()V
    .locals 2

    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/ColorPickerPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/leo/salt/preference/MySwitchPreference;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/leo/salt/preference/MyCheckBoxPreference;

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

    iput-object p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mView:Landroid/view/View;

    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->setPreviewColor()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/ColorPickerPreference;->persistInt(I)Z

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mValue:I

    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->setPreviewColor()V

    iget-boolean p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mIsInitialSetup:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mIsRebootRequired:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/Utils;->showRebootRequiredDialog(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mPackageToKill:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/leo/salt/utils/Utils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mIsSilent:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mPackageToKill:Ljava/lang/String;

    invoke-static {p1}, Lcom/leo/salt/utils/Utils;->killPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mPackageToKill:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leo/salt/utils/Utils;->showKillPackageDialog(Ljava/lang/String;Landroid/content/Context;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mIsInitialSetup:Z

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/leo/salt/preference/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/leo/salt/preference/ColorPickerPreference$SavedState;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/leo/salt/preference/ColorPickerPreference$SavedState;

    invoke-virtual {p1}, Lcom/leo/salt/preference/ColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lcom/leo/salt/preference/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/leo/salt/preference/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDialog:Lcom/leo/salt/preference/ColorPickerDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/leo/salt/preference/ColorPickerDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/leo/salt/preference/ColorPickerPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/leo/salt/preference/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mDialog:Lcom/leo/salt/preference/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/leo/salt/preference/ColorPickerDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/leo/salt/preference/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mValue:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/ColorPickerPreference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mIsInitialSetup:Z

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/ColorPickerPreference;->onColorChanged(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/leo/salt/preference/ColorPickerPreference;->mValue:I

    invoke-direct {p0}, Lcom/leo/salt/preference/ColorPickerPreference;->setPreviewColor()V

    return-void
.end method
