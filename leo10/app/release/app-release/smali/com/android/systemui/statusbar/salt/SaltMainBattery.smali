.class public Lcom/android/systemui/statusbar/salt/SaltMainBattery;
.super Landroid/widget/ImageView;
.source "SaltMainBattery.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field public static final BATTERY_TAG:Ljava/lang/String; = "leo_battery_view"


# instance fields
.field private ACTION_BATTERY:Ljava/lang/String;

.field public mBatteryChargeColor:I

.field private mBatteryCharging:Z

.field public mBatteryLevel:I

.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field public mBatteryStandbyColor:I

.field private mContext:Landroid/content/Context;

.field private mCustomBattery:Landroid/graphics/drawable/Drawable;

.field private mCustomBatteryCharge:Landroid/graphics/drawable/Drawable;

.field private mCustomBatteryPKG:Ljava/lang/String;

.field private mIsForceTintColor:Z

.field public mNonAdaptedColor:I

.field private mNonAdaptedForegroundColor:I

.field private mQsTintIntensity:F

.field private mShouldUseQsTintColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "android.intent.action.BATTERY_CHANGED"

    iput-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->ACTION_BATTERY:Ljava/lang/String;

    new-instance p2, Lcom/android/systemui/statusbar/salt/SaltMainBattery$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery$1;-><init>(Lcom/android/systemui/statusbar/salt/SaltMainBattery;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mIsForceTintColor:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mShouldUseQsTintColor:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/salt/SaltMainBattery;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->ACTION_BATTERY:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/salt/SaltMainBattery;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mBatteryCharging:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/salt/SaltMainBattery;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->handleBatteryChange()V

    return-void
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 1

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private getCustomBattery(Ljava/lang/String;)V
    .locals 5

    const-string v0, "drawable"

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->isCustomBatteryInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "stat_sys_battery"

    invoke-virtual {v3, v4, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mCustomBattery:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "stat_sys_battery_charge"

    invoke-virtual {v1, v3, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mCustomBatteryCharge:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mCustomBattery:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mCustomBatteryCharge:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private handleBatteryChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mBatteryCharging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mCustomBatteryCharge:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mCustomBattery:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mBatteryLevel:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->setImageLevel(I)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isCustomBatteryInstalled(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method private qsIntColor(Landroid/graphics/Rect;F)V
    .locals 1

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$-CC;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mIsForceTintColor:Z

    if-eqz v0, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mShouldUseQsTintColor:Z

    if-eqz p1, :cond_2

    iget p2, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mQsTintIntensity:F

    :cond_2
    const-class p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {p1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mShouldUseQsTintColor:Z

    if-eqz p1, :cond_3

    const-class p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/16 p2, 0x1f

    invoke-virtual {p1, p2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mNonAdaptedForegroundColor:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/android/settingslib/salt/SaltValues;->mDarkModeFillColor:I

    sget v0, Lcom/android/settingslib/salt/SaltValues;->mLightModeFillColor:I

    invoke-direct {p0, p2, p1, v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->getColorForDarkIntensity(FII)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mNonAdaptedForegroundColor:I

    :goto_1
    iget p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mNonAdaptedForegroundColor:I

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private updateVisibility(I)V
    .locals 2

    const/16 v0, 0x8

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mCustomBattery:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mCustomBatteryCharge:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mBatteryLevel:I

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->ACTION_BATTERY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->updateSettings()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "leo_battery_view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$-CC;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mNonAdaptedColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->setBatteryCustomColor()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mBatteryCharging:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mBatteryChargeColor:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mBatteryStandbyColor:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->setColorFilter(I)V

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mNonAdaptedColor:I

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/android/settingslib/salt/SaltValues;->Values17:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->qsIntColor(Landroid/graphics/Rect;F)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public setBatteryCustomColor()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarMainBatteryCustomColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setForceQsTintColor(ZF)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mShouldUseQsTintColor:Z

    iput p2, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mQsTintIntensity:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 p2, 0x0

    const v0, -0x42000001    # -0.12499999f

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public updateSettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarMainBatteryStartPadding:F

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarMainBatteryEndPadding:F

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->setLeoImagePadding(Landroid/widget/ImageView;FF)V

    sget-object v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusbarMainBatteryPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigCenter;->getLeoMianBatteryStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mCustomBatteryPKG:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mCustomBatteryPKG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->getCustomBattery(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->handleBatteryChange()V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarMainBatteryColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mBatteryStandbyColor:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarMainBatteryChargeColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mBatteryChargeColor:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusbarMainBatteryEnabled:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->updateVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "leo_battery_view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->setBatteryCustomColor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mBatteryCharging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mBatteryChargeColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mBatteryStandbyColor:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->setColorFilter(I)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->mNonAdaptedColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/salt/SaltMainBattery;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    :goto_1
    return-void
.end method
