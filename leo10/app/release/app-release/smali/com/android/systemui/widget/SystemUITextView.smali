.class public Lcom/android/systemui/widget/SystemUITextView;
.super Landroid/widget/TextView;
.source "SystemUITextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUITextView$ResData;
    }
.end annotation


# static fields
.field protected static mContext:Landroid/content/Context;


# instance fields
.field private mAttrCount:I

.field private mCompoundVisble:Z

.field private mDensityDpi:I

.field private mFontScale:F

.field private mIsFixedFontSize:Z

.field protected mLeoCustomKeyguard:Z

.field protected mLeoCustomKeyguardColor:I

.field private mMaxFontScale:F

.field private mOriginalFontSize:F

.field protected mOriginalFontSizeDp:F

.field protected mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

.field protected mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, 0x3f99999a    # 1.2f

    iput p2, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisble:Z

    iput p2, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iput p2, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    sput-object p1, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F
    .locals 0

    const p0, 0x3f99999a    # 1.2f

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private getResIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemUITextView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p2
.end method

.method private initAttributeSet(Landroid/content/res/TypedArray;)V
    .locals 3

    new-instance v0, Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUITextView$ResData;-><init>(Lcom/android/systemui/widget/SystemUITextView;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    if-ge v0, v1, :cond_a

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v2, 0x6

    if-eq v1, v2, :cond_8

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    const/16 v2, 0xa

    if-eq v1, v2, :cond_6

    const/16 v2, 0xc

    if-eq v1, v2, :cond_5

    const/16 v2, 0xf

    if-eq v1, v2, :cond_4

    const/16 v2, 0x11

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundScale:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundPadding:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundDrawable:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColor:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColor:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeShadowColor:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeColor:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->originShadowColor:Ljava/lang/String;

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->originColor:Ljava/lang/String;

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->adaptiveColorMain:Ljava/lang/String;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUITextView;->refreshResIds()V

    :cond_b
    return-void
.end method

.method private refreshResIds()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->originColor:Ljava/lang/String;

    const-string v1, "color"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->originColor:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->originColorId:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColor:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColor:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColorId:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeColor:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeColor:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeColorId:I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->originShadowColor:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->originShadowColor:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->originShadowColorId:I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColor:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColor:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColorId:I

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeShadowColor:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeShadowColor:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeShadowColorId:I

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundDrawable:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundDrawable:Ljava/lang/String;

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundDrawableId:I

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundScale:Ljava/lang/String;

    const-string v1, "dimen"

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundScale:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundScaleId:I

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundPadding:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundPadding:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundPaddingId:I

    :cond_8
    return-void
.end method

.method private updateCompoundDrawable(Z)V
    .locals 6

    const-string v0, "SystemUITextView"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/systemui/widget/SystemUITextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget p1, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundDrawableId:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget p1, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundScaleId:I

    if-lez p1, :cond_2

    sget-object p1, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v2, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundDrawableId:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getKeyguardFontScale()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getKeyguardFontScale()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    add-float/2addr v2, v4

    sget-object v4, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v5, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundScaleId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v2, v4

    invoke-virtual {p1, v1, v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget p1, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeColorId:I

    if-lez p1, :cond_3

    sget-object p1, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v2, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeColorId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "#%08X"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object p1, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->adaptiveColorMain:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string p1, "apply style: adaptive color"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object p1, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColor:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object p1, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColor:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget p1, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColorId:I

    :cond_3
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget p1, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundPaddingId:I

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundPaddingId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setCompoundDrawablePadding(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Exception adding compoundDrawable!"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public getKeyguardFontScale()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow mAttrCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUITextView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSize:F

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSize:F

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setLeoCustomColor(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mLeoCustomKeyguard:Z

    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mLeoCustomKeyguardColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setTextColor(I)V

    return-void
.end method

.method public setLeoRemoveCustomColor()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mLeoCustomKeyguard:Z

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->updateTextView()V

    return-void
.end method

.method public setMaxFontScale(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f99999a    # 1.2f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    iget p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    :cond_1
    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public updateCompoundVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisble:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateCompoundDrawable(Z)V

    return-void
.end method

.method public updateFontSizeInKeyguardBoundary()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsFixedFontSize:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F

    move-result v0

    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    const/4 p1, 0x1

    :cond_2
    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    mul-float p1, p1, v0

    sget-object v0, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/widget/SystemUITextView;->setTextSize(IF)V

    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisble:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateCompoundDrawable(Z)V

    :cond_3
    return-void
.end method

.method public updateStyle(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStyle() flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUITextView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUITextView;->refreshResIds()V

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->updateTextView()V

    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisble:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateCompoundDrawable(Z)V

    return-void
.end method

.method protected updateTextView()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->originColorId:I

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->originShadowColorId:I

    iget v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    and-int/lit8 v3, v2, 0x1

    const-string v4, "SystemUITextView"

    if-eqz v3, :cond_0

    const-string v0, "apply style: theme"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeColorId:I

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeShadowColorId:I

    goto :goto_0

    :cond_0
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->adaptiveColorMain:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "apply style: adaptive color"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    const-string v2, "apply style: white-bg"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColor:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColorId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "textColorResId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v2, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColor:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColorId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shadowColorResId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const/4 v2, 0x0

    if-lez v0, :cond_4

    sget-object v3, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setTextColor(I)V

    :cond_4
    if-lez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getShadowRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getShadowDx()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getShadowDy()F

    move-result v4

    sget-object v5, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/android/systemui/widget/SystemUITextView;->setShadowLayer(FFFI)V

    :cond_5
    return-void
.end method
