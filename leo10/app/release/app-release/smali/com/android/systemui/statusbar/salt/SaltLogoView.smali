.class public Lcom/android/systemui/statusbar/salt/SaltLogoView;
.super Landroid/widget/ImageView;
.source "SaltLogoView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mAttached:Z

.field private mContext:Landroid/content/Context;

.field private mLeoLogoStyle:I

.field public mLogoColor:I

.field public mNonAdaptedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/salt/SaltLogoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/salt/SaltLogoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "leo_statusbar_logo_view"

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/salt/SaltLogoView;->setTag(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltLogoView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltLogoView;->mAttached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltLogoView;->mAttached:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltLogoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltLogoView;->updateSettings()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$-CC;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltLogoView;->mNonAdaptedColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltLogoView;->setLogoColor()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/salt/SaltLogoView;->mLogoColor:I

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/salt/SaltLogoView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/salt/SaltLogoView;->mNonAdaptedColor:I

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/salt/SaltLogoView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltLogoView;->mAttached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltLogoView;->mAttached:Z

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public setLogoColor()Z
    .locals 2

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarLogoCustomColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public updateLogoColor()V
    .locals 2

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarLogoColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltLogoView;->mLogoColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltLogoView;->setLogoColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltLogoView;->mLogoColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/salt/SaltLogoView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltLogoView;->mNonAdaptedColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/salt/SaltLogoView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void
.end method

.method public updateSettings()V
    .locals 2

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarLogoStyle:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltLogoView;->mLeoLogoStyle:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarLogoStartPadding:F

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarLogoEndPadding:F

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->setLeoImagePadding(Landroid/widget/ImageView;FF)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarLogoSize:F

    invoke-static {p0, v0}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->setLeoIconSize(Landroid/widget/ImageView;F)V

    sget-object v0, Lcom/android/settingslib/salt/SaltConfigCenter;->LogoIcon:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltLogoView;->mLeoLogoStyle:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltLogoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltLogoView;->updateLogoColor()V

    return-void
.end method
