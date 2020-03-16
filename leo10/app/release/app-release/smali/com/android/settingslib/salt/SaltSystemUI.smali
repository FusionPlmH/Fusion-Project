.class public Lcom/android/settingslib/salt/SaltSystemUI;
.super Ljava/lang/Object;
.source "SaltSystemUI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSaltFloat()V
    .locals 2

    sget-object v0, Lcom/android/settingslib/salt/SaltConfigFrame;->mSaltContext:Landroid/content/Context;

    sget-boolean v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoFloatBallEnabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/salt/SaltSystemUI;->setFloatVisibility(Landroid/content/Context;Z)V

    return-void
.end method

.method public refreshSaltMinipop()V
    .locals 1

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoMiniPopEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/settingslib/salt/SaltSystemUI;->setMinipopVisibility(Z)V

    return-void
.end method

.method public refreshSaltSystemUI()V
    .locals 2

    sget-object v0, Lcom/android/settingslib/salt/SaltConfigFrame;->mSaltContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settingslib/salt/SaltIcon;->getLeoStatusBarIcons()V

    invoke-static {v0}, Lcom/android/settingslib/salt/widget/Until;->initialPop(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settingslib/salt/widget/MeterFlashlight;

    invoke-direct {v1, v0}, Lcom/android/settingslib/salt/widget/MeterFlashlight;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settingslib/salt/widget/MeterRecent;

    invoke-direct {v1, v0}, Lcom/android/settingslib/salt/widget/MeterRecent;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settingslib/salt/widget/MeterBack;

    invoke-direct {v1, v0}, Lcom/android/settingslib/salt/widget/MeterBack;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settingslib/salt/widget/MeterHome;

    invoke-direct {v1, v0}, Lcom/android/settingslib/salt/widget/MeterHome;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settingslib/salt/SaltFloatBall;

    invoke-direct {v1, v0}, Lcom/android/settingslib/salt/SaltFloatBall;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settingslib/salt/SaltSystemUI;->refreshSaltMinipop()V

    invoke-virtual {p0}, Lcom/android/settingslib/salt/SaltSystemUI;->refreshSaltFloat()V

    return-void
.end method

.method public setFloatVisibility(Landroid/content/Context;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/settingslib/salt/SaltFloatWindowManager;->addBallView(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/salt/SaltFloatWindowManager;->removeBallView(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public setMinipopVisibility(Z)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->stop()V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/settingslib/salt/animation/AnimationParking;->mOriginSide:Z

    const/4 p1, -0x1

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/settingslib/salt/widget/MeterHome;->baseY:I

    invoke-static {p1, v1}, Lcom/android/settingslib/salt/animation/AnimationParking;->updateAll(II)V

    sget-object p1, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/settingslib/salt/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/salt/widget/MeterBase;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/settingslib/salt/widget/MeterBase;->setVisibility(I)V

    sget-object p1, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/settingslib/salt/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/salt/widget/MeterBase;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/salt/widget/MeterBase;->setVisibility(I)V

    sget-object p1, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/settingslib/salt/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/salt/widget/MeterBase;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/salt/widget/MeterBase;->setVisibility(I)V

    sget-object p1, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/settingslib/salt/widget/MeterFlashlight;->NAME:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/salt/widget/MeterBase;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/salt/widget/MeterBase;->setVisibility(I)V

    sget-object p1, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v0, Lcom/android/settingslib/salt/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/salt/widget/MeterBase;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Lcom/android/settingslib/salt/widget/MeterBase;->setAlpha(F)V

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->shrinkStart()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/settingslib/salt/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/salt/widget/MeterBase;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/salt/widget/MeterBase;->setVisibility(I)V

    sget-object p1, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/settingslib/salt/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/salt/widget/MeterBase;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/salt/widget/MeterBase;->setVisibility(I)V

    sget-object p1, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/settingslib/salt/widget/MeterFlashlight;->NAME:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/salt/widget/MeterBase;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/salt/widget/MeterBase;->setVisibility(I)V

    sget-object p1, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/settingslib/salt/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/salt/widget/MeterBase;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/salt/widget/MeterBase;->setVisibility(I)V

    :goto_0
    return-void
.end method
