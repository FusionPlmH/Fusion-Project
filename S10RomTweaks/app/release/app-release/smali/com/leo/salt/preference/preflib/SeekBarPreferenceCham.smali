.class public Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;
.super Landroid/preference/Preference;
.source "SeekBarPreferenceCham.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final ANDROIDNS:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final DEFAULT_VALUE:I = 0x32

.field private static final LEOGEARNS:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private initialised:Z

.field private mCurrentValue:I

.field private mDefaultValue:I

.field mFormat:Ljava/lang/String;

.field private mImageMinus:Landroid/widget/ImageView;

.field private mImagePlus:Landroid/widget/ImageView;

.field private mInterval:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mPopupAdded:Z

.field private mPopupValue:Landroid/widget/TextView;

.field private mPopupWidth:I

.field private mProgressThumb:Landroid/graphics/drawable/Drawable;

.field private mReverseDependencyKey:Ljava/lang/String;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarMax:Landroid/widget/TextView;

.field private mSeekBardefaul:Landroid/widget/TextView;

.field private mStatusText:Landroid/widget/TextView;

.field private mThumbDefaultValueColor:I

.field private mTrackingTouch:Z

.field private mUnitsLeft:Ljava/lang/String;

.field private mUnitsLeftText:Landroid/widget/TextView;

.field private mUnitsRight:Ljava/lang/String;

.field private mUnitsRightText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->TAG:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMaxValue:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMinValue:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mInterval:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mDefaultValue:I

    const-string v1, ""

    iput-object v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsLeft:Ljava/lang/String;

    iput-object v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsRight:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mTrackingTouch:Z

    iput-boolean v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupAdded:Z

    iput v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupWidth:I

    iput-boolean v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->initialised:Z

    const-string v0, "%d%s"

    iput-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mFormat:Ljava/lang/String;

    const v0, 0x7f0c00ad

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->setLayoutResource(I)V

    invoke-direct {p0, p2, p1}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->setValuesFromXml(Landroid/util/AttributeSet;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->TAG:Ljava/lang/String;

    const/16 p3, 0x64

    iput p3, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMaxValue:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMinValue:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mInterval:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mDefaultValue:I

    const-string v0, ""

    iput-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsLeft:Ljava/lang/String;

    iput-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsRight:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mTrackingTouch:Z

    iput-boolean p3, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupAdded:Z

    iput p3, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupWidth:I

    iput-boolean p3, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->initialised:Z

    const-string p3, "%d%s"

    iput-object p3, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mFormat:Ljava/lang/String;

    const p3, 0x7f0c00ad

    invoke-virtual {p0, p3}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->setLayoutResource(I)V

    invoke-direct {p0, p2, p1}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->setValuesFromXml(Landroid/util/AttributeSet;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mCurrentValue:I

    return p0
.end method

.method static synthetic access$002(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;I)I
    .locals 0

    iput p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mCurrentValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mInterval:I

    return p0
.end method

.method static synthetic access$200(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMinValue:I

    return p0
.end method

.method static synthetic access$300(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMaxValue:I

    return p0
.end method

.method static synthetic access$500(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mDefaultValue:I

    return p0
.end method

.method static synthetic access$600(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)I
    .locals 0

    iget p0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupWidth:I

    return p0
.end method

.method static synthetic access$702(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;I)I
    .locals 0

    iput p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->startUpdateViewValue()V

    return-void
.end method

.method private getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p4

    :cond_0
    return-object p1
.end method

.method private getSeekBarThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private setValuesFromXml(Landroid/util/AttributeSet;Landroid/content/Context;)V
    .locals 6

    sget-object v0, Lcom/leo/salt/tweaks/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "max"

    const/16 v3, 0x64

    invoke-interface {p1, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMaxValue:I

    const/4 v2, 0x0

    const-string v3, "min"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMinValue:I

    const-string v3, "defaultValue"

    const/4 v4, -0x1

    invoke-interface {p1, v1, v3, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mDefaultValue:I

    iget v4, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mDefaultValue:I

    const/4 v5, -0x2

    invoke-interface {p1, v1, v3, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    if-eq v4, v1, :cond_0

    iget v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMinValue:I

    iget v4, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMaxValue:I

    add-int/2addr v1, v4

    div-int/2addr v1, v3

    iput v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mDefaultValue:I

    iget-object v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preference with key \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" does not have a default value set in xml, assuming "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mDefaultValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " until further changes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mDefaultValue:I

    iget v4, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMinValue:I

    if-lt v1, v4, :cond_4

    iget v4, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMaxValue:I

    if-gt v1, v4, :cond_4

    const-string v1, ""

    const-string v4, "http://schemas.android.com/apk/res-auto"

    const-string v5, "unitsLeft"

    invoke-direct {p0, p1, v4, v5, v1}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsLeft:Ljava/lang/String;

    const-string v5, "unitsRight"

    invoke-direct {p0, p1, v4, v5, v1}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsRight:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsRight:Ljava/lang/String;

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsLeft:Ljava/lang/String;

    :cond_2
    :try_start_0
    const-string v2, "interval"

    invoke-interface {p1, v4, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mInterval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->TAG:Ljava/lang/String;

    const-string v4, "Invalid interval value"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010030

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->data:I

    iput v2, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mThumbDefaultValueColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v2, Lcom/leo/salt/tweaks/R$styleable;->LeoPreference:[I

    invoke-virtual {p2, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Default value is out of range!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private startUpdateViewValue()V
    .locals 14

    iget-boolean v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mTrackingTouch:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->getSeekBarThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v3, v1, [I

    iget-object v4, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->getLocationInWindow([I)V

    iget-object v4, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getRootView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->TAG:Ljava/lang/String;

    const-string v7, "Could not find main content view to calculate value view offset"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    aput v6, v3, v6

    aput v6, v3, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    :goto_0
    iget-object v4, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupValue:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsLeft:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mCurrentValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsRight:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/4 v11, 0x2

    const/16 v12, 0x8

    const/4 v13, -0x3

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v7, 0x33

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    aget v8, v2, v6

    add-int/2addr v7, v8

    aget v8, v3, v6

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v8, v0

    div-int/2addr v8, v1

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v7, v0

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    aget v0, v2, v5

    aget v1, v3, v5

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupValue:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupAdded:Z

    const-string v1, "window"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupValue:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupValue:Landroid/widget/TextView;

    invoke-interface {v0, v1, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v5, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupAdded:Z

    :goto_1
    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupValue:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private stopUpdateViewValue()V
    .locals 2

    iget-boolean v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupAdded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupValue:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupAdded:Z

    return-void
.end method

.method private updateCurrentValueText()V
    .locals 3

    iget v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mCurrentValue:I

    iget v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mDefaultValue:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f1002fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mThumbDefaultValueColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsLeftText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsRightText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mStatusText:Landroid/widget/TextView;

    iget v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mCurrentValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsLeftText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsRightText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onAttachedToActivity()V
    .locals 2

    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mReverseDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mReverseDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

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

.method public onBindView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0901d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMaxValue:I

    iget v3, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMinValue:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    const v0, 0x7f0901cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsLeftText:Landroid/widget/TextView;

    const v0, 0x7f0901cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsRightText:Landroid/widget/TextView;

    const v0, 0x7f0901cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mSeekBarMax:Landroid/widget/TextView;

    const v0, 0x7f0901d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mSeekBardefaul:Landroid/widget/TextView;

    const v0, 0x7f09011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mImagePlus:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mImagePlus:Landroid/widget/ImageView;

    new-instance v2, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$1;

    invoke-direct {v2, p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$1;-><init>(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mImagePlus:Landroid/widget/ImageView;

    new-instance v2, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$2;

    invoke-direct {v2, p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$2;-><init>(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f09011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mImageMinus:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mImageMinus:Landroid/widget/ImageView;

    new-instance v2, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$3;

    invoke-direct {v2, p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$3;-><init>(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mImageMinus:Landroid/widget/ImageView;

    new-instance v2, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$4;

    invoke-direct {v2, p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$4;-><init>(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0901ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mStatusText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mStatusText:Landroid/widget/TextView;

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mStatusText:Landroid/widget/TextView;

    new-instance v0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$5;

    invoke-direct {v0, p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$5;-><init>(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0c00ae

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupValue:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mPopupValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$6;

    invoke-direct {v0, p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham$6;-><init>(Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->initialised:Z

    invoke-virtual {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->updateView()V

    iget-object p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->setShouldDisableView(Z)V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mImagePlus:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mImageMinus:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    xor-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x32

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMinValue:I

    add-int/2addr p2, v0

    iget v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMaxValue:I

    if-le p2, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-ge p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mInterval:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    rem-int v1, p2, v0

    if-eqz v1, :cond_2

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mInterval:I

    mul-int v0, v0, p2

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->callChangeListener(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mCurrentValue:I

    iget p3, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMinValue:I

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    :cond_3
    iput v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mCurrentValue:I

    invoke-direct {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->updateCurrentValueText()V

    if-eqz p3, :cond_4

    invoke-direct {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->startUpdateViewValue()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->stopUpdateViewValue()V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->persistInt(I)Z

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mDefaultValue:I

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->getPersistedInt(I)I

    move-result p2

    :cond_1
    invoke-virtual {p0, p2}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->setValue(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->startUpdateViewValue()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->notifyChanged()V

    invoke-direct {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->stopUpdateViewValue()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mTrackingTouch:Z

    return-void
.end method

.method public refresh(I)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMinValue:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mDefaultValue:I

    invoke-virtual {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->updateView()V

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMaxValue:I

    invoke-virtual {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->updateView()V

    return-void
.end method

.method public setMin(I)V
    .locals 0

    iput p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMinValue:I

    invoke-virtual {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->updateView()V

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mCurrentValue:I

    invoke-virtual {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->updateView()V

    return-void
.end method

.method protected updateView()V
    .locals 8

    iget-boolean v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->initialised:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mStatusText:Landroid/widget/TextView;

    iget v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mCurrentValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mCurrentValue:I

    iget v2, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsRightText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsRight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsLeftText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsLeft:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mSeekBarMax:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mFormat:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMaxValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsRight:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mSeekBardefaul:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mFormat:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mMinValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->mUnitsRight:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->updateCurrentValueText()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/leo/salt/preference/preflib/SeekBarPreferenceCham;->TAG:Ljava/lang/String;

    const-string v2, "Error updating seek bar preference"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
