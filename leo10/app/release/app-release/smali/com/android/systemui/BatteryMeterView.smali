.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/widget/LinearLayout;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mAlapa:F

.field private mBatteryIconDarkModeAlpha:F

.field private mBatteryIconLightModeAlpha:F

.field private mBatteryIconView:Landroid/widget/ImageView;

.field private mBatteryPercentView:Landroid/widget/TextView;

.field mContext:Landroid/content/Context;

.field private mDarkIntensity:F

.field private mDarkModeBackgroundColor:I

.field private mDarkModeFillColor:I

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field private mForceShowPercent:Z

.field private mIntensity:F

.field private mLeoBatteryView:Lcom/android/systemui/statusbar/salt/SaltMainBattery;

.field private mLevel:I

.field private mLightModeBackgroundColor:I

.field private mLightModeFillColor:I

.field private mNonAdaptedBackgroundColor:I

.field private mNonAdaptedForegroundColor:I

.field private mQsTintIntensity:F

.field private mShouldUseQsTintColor:Z

.field private mTextColor:I

.field private mUseWallpaperTextColors:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mAlapa:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterView;->mShouldUseQsTintColor:Z

    const p3, 0x800013

    invoke-virtual {p0, p3}, Lcom/android/systemui/BatteryMeterView;->setGravity(I)V

    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p1, p3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    invoke-virtual {p1, p2, p2, p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 p3, 0x0

    const v0, -0x42000001    # -0.12499999f

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/BatteryMeterView;->setClipChildren(Z)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/BatteryMeterView;->setClipToPadding(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private loadPercentView()Landroid/widget/TextView;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private updateShowPercent(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->updateSettings()V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBatteryPercentVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZIII)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$-CC;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-boolean p3, p0, Lcom/android/systemui/BatteryMeterView;->mShouldUseQsTintColor:Z

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/android/systemui/BatteryMeterView;->mQsTintIntensity:F

    :cond_1
    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mIntensity:F

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconLightModeAlpha:F

    iget p3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconDarkModeAlpha:F

    sub-float/2addr p3, p1

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    goto :goto_1

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mAlapa:F

    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setColorsFromContext(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setFillColor(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    const v1, -0x42000001    # -0.12499999f

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    :cond_0
    return-void
.end method

.method public setForceQsTintColor(ZF)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mShouldUseQsTintColor:Z

    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mQsTintIntensity:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 p2, 0x0

    const v0, -0x42000001    # -0.12499999f

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public setForceShowPercent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    return-void
.end method

.method public updateLeoBatteryView(Landroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    return-void
.end method

.method public updateSettings()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusbarMainBatteryEnabled:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarBatteryPercentFont:I

    const-string v4, "sec-roboto-light"

    invoke-static {v2, v3, v4, v1}, Lcom/android/settingslib/salt/SaltConfigCenter;->setLeoTextFont(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarBatteryPercentSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_3
    return-void
.end method

.method public useWallpaperTextColor(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    iget-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    :cond_0
    return-void
.end method
