.class public Lcom/android/systemui/coloring/QSColoringServiceManager;
.super Ljava/lang/Object;
.source "QSColoringServiceManager.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mIndicatorAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mIndicatorAlpha:F

    return-void
.end method


# virtual methods
.method public getQSColoringBackgroundAlpha()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getQSColoringBackgroundColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getQSColoringBlurEffectAmount()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getQSColoringColor(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isNotificationColoringEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPluginConnected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isQSColoringBlurEffectEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isQSColoringEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refreshAllQSColoringFunctions()V
    .locals 0

    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of p1, p1, Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method
