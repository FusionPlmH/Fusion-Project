.class public Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.super Landroid/widget/RelativeLayout;
.source "KeyguardStatusBarView.java"


# instance fields
.field private mCarrierLabel:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCustomCarrierLabel:Landroid/widget/TextView;

.field private mObserver:Landroid/database/ContentObserver;

.field private mTouchStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->refreshKeyguardStatusBarView()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public refreshKeyguardStatusBarView()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardStatusBarViewVisibilities:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    :cond_0
    sget-object v0, Lcom/android/settingslib/salt/SaltValues;->Values8:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0}, Lcom/android/keyguard/CarrierText;->updateLeoCarrierText()V

    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardCarrierColor:I

    sget v3, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardCarrierCustomColorEnabled:I

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrierColor(II)V

    sget v3, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardCustomCarrier:I

    sget v4, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardCarrierMulti:I

    sget-object v5, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardCustomCarrierStringA:Ljava/lang/String;

    sget-object v6, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardCustomCarrierStringB:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardCarrierSymbol:I

    sget-object v8, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardCustomCarrierSymbol:Ljava/lang/String;

    const-string v9, ","

    invoke-static {v2, v7, v8, v9}, Lcom/android/settingslib/salt/SaltConfigCenter;->getLeoSymbolStyle(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrier(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardCarrier:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardCarrierSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setTextSize(F)V

    sget-boolean v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBar5Gicon:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setLeoTogeCarrier5G(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardCarrierFont:I

    const-string v4, "sec-roboto-condensed"

    invoke-static {v1, v2, v4, v3}, Lcom/android/settingslib/salt/SaltConfigCenter;->setLeoTextFont(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
