.class public Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;
.super Landroid/widget/LinearLayout;
.source "SaltBatteryBarController.java"


# static fields
.field protected static final CURRENT_LOC:I = 0x1

.field public static final STYLE_REGULAR:I = 0x0

.field public static final STYLE_REVERSE:I = 0x2

.field public static final STYLE_SYMMETRIC:I = 0x1


# instance fields
.field isAttached:Z

.field isVertical:Z

.field private mBatteryCharging:Z

.field private mBatteryLevel:I

.field mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mLocation:I

.field mLocationToLookFor:I

.field mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mStyle:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mLocation:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mLocationToLookFor:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mBatteryLevel:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mBatteryCharging:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->isAttached:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->isVertical:Z

    new-instance v1, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController$1;-><init>(Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    const-string p1, "http://schemas.android.com/apk/res/com.android.systemui"

    const-string v1, "viewLocation"

    invoke-interface {p2, p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mLocationToLookFor:I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mBatteryLevel:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mBatteryCharging:Z

    return p1
.end method


# virtual methods
.method public addBars()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarBatteryBarThickness:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->isVertical:Z

    if-eqz v2, :cond_0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->isVertical:Z

    if-eqz v2, :cond_1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_1
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame$Prefs;->getLastBatteryLevel(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mBatteryLevel:I

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mStyle:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mBatteryCharging:Z

    iget v5, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mBatteryLevel:I

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->isVertical:Z

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    const/high16 v4, 0x43340000    # 180.0f

    if-ne v0, v3, :cond_4

    new-instance v0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mBatteryCharging:Z

    iget v6, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mBatteryLevel:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->isVertical:Z

    invoke-direct {v0, v3, v5, v6, v7}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    new-instance v3, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    iget-object v5, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mBatteryCharging:Z

    iget v7, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mBatteryLevel:I

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->isVertical:Z

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->isVertical:Z

    if-eqz v5, :cond_3

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->setRotation(F)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->setRotation(F)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    new-instance v0, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mBatteryCharging:Z

    iget v6, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mBatteryLevel:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->isVertical:Z

    invoke-direct {v0, v3, v5, v6, v7}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/salt/SaltBatteryBar;->setRotation(F)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected isLocationValid(I)Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mLocationToLookFor:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic lambda$onConfigurationChanged$0$SaltBatteryBarController()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->updateSettings()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->isAttached:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->isVertical:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->isAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->updateSettings()V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->isAttached:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltBatteryBarController$7NaozmGrvG4y_w6syRmmsnWdfsY;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltBatteryBarController$7NaozmGrvG4y_w6syRmmsnWdfsY;-><init>(Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->isAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->isAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->removeBars()V

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public removeBars()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->removeAllViews()V

    return-void
.end method

.method public updateSettings()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarBatteryBarStyle:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mStyle:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarBatteryBarLocation:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mLocation:I

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->mLocation:I

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->isLocationValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->removeBars()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->addBars()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->removeBars()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltBatteryBarController;->setVisibility(I)V

    :goto_0
    return-void
.end method
