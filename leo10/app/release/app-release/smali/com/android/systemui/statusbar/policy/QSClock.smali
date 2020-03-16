.class public Lcom/android/systemui/statusbar/policy/QSClock;
.super Landroid/widget/TextView;
.source "QSClock.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mClockVisibleByPolicy:Z

.field private mClockVisibleByUser:Z

.field private mKeyguardServiceBoxCallback:Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;

.field private mNonAdaptedColor:I

.field private mSaltChineseTime:Ljava/lang/String;

.field private final mShowDark:Z

.field private mUseWallpaperTextColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/salt/config/R$styleable;->Clock:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mShowDark:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getCurrentTextColor()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private updateClockVisibility()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/QSClock;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    const/high16 p2, 0x800000

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    if-eq p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->setClockVisibilityByPolicy(Z)V

    :cond_1
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public notifyTimeChanged(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mKeyguardServiceBoxCallback:Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;->onTimeTextChanged()V

    :cond_0
    sget-object p3, Lcom/android/settingslib/salt/SaltValues;->Values15:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/android/settingslib/salt/SaltConfigFrame;->isChineseLanguage()Z

    move-result p3

    if-eqz p3, :cond_2

    sget p3, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSheaderClockChinaTimeDetailZoomEnabled:I

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSheaderClockChinaTimeDetailScaling:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mSaltChineseTime:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p3, p4, :cond_1

    new-instance p3, Landroid/text/style/RelativeSizeSpan;

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigCenter;->leoSizeSpan(I)F

    move-result v1

    invoke-direct {p3, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v1, 0x22

    invoke-virtual {v3, p3, v0, p1, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    move-object p1, v3

    :cond_2
    const-string p3, "sans-serif-light"

    goto :goto_0

    :cond_3
    const-string p3, "sec-roboto-light"

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSheaderClockFont:I

    invoke-static {v1, v2, p3, v0}, Lcom/android/settingslib/salt/SaltConfigCenter;->setLeoTextFont(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/policy/QSClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/QSClock;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "status_bar_clock"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "status_bar_clock notifyTimeChanged(currentTime:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p1, ") mClockVisibleByPolicy:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mClockVisibleByUser:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", visible?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p4, 0x0

    :goto_1
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", parent:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QSClock"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mAttached:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->registerAudience(Ljava/lang/String;Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider$-CC;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mShowDark:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->updateClock()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "keyguard_status_bar_clock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "status_bar_clock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-class p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {p1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const-class p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$-CC;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I

    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mUseWallpaperTextColor:Z

    if-nez p1, :cond_3

    iget p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "keyguard_status_bar_clock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mAttached:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->unregisterAudience(Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider$-CC;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mShowDark:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCallback(Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mKeyguardServiceBoxCallback:Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;

    return-void
.end method

.method public setClockVisibilityByPolicy(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->updateClockVisibility()V

    :cond_0
    return-void
.end method

.method public setClockVisibleByUser(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "keyguard_status_bar_clock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "status_bar_clock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->updateClockVisibility()V

    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    :cond_0
    return-void
.end method

.method public updateClock()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getChinaTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mSaltChineseTime:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getSmallTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/statusbar/policy/QSClock;->notifyTimeChanged(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSheaderClockEnabled:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/QSClock;->setVisibility(I)V

    return-void
.end method

.method public useWallpaperTextColor(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mUseWallpaperTextColor:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mUseWallpaperTextColor:Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mUseWallpaperTextColor:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0403bc

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method
