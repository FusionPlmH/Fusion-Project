.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "CarrierText"


# instance fields
.field private mNonAdaptedColor:I

.field private mTogeCarrier:I

.field private mTogeCarrier5G:Z

.field private mTogeCarrierColorEnabled:I

.field private mTogeCarrierSingleLine:I

.field private mTogeCarrierStrA:Ljava/lang/String;

.field private mTogeCarrierStrB:Ljava/lang/String;

.field private mTogeCarrierSymbol:Ljava/lang/String;

.field private mTogeCarrierText:Ljava/lang/CharSequence;

.field private mTogeCarrierTextColor:I

.field private mUseWallpaperTextColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget p1, Lcom/android/settingslib/salt/SaltValues;->mLightModeFillColor:I

    iput p1, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierTextColor:I

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrierText()V

    return-void
.end method

.method static synthetic access$001(Lcom/android/keyguard/CarrierText;Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$101(Lcom/android/keyguard/CarrierText;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    return-void
.end method

.method static synthetic access$201(Lcom/android/keyguard/CarrierText;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method

.method private updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 0

    return-object p1
.end method


# virtual methods
.method public getCarrierText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierText:Ljava/lang/CharSequence;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-static {p0}, Lcom/android/keyguard/CarrierText;->access$101(Lcom/android/keyguard/CarrierText;)V

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->onLeoAttached()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1

    sget-object p2, Lcom/android/settingslib/salt/SaltValues;->Values8:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/android/settingslib/salt/SaltValues;->Values9:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$-CC;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/CarrierText;->mNonAdaptedColor:I

    iget p1, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierColorEnabled:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget p1, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierTextColor:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierText;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/keyguard/CarrierText;->mNonAdaptedColor:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierText;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-static {p0}, Lcom/android/keyguard/CarrierText;->access$201(Lcom/android/keyguard/CarrierText;)V

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->onLeoDetached()V

    return-void
.end method

.method public onLeoAttached()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public onLeoDetached()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/CarrierText;->access$001(Lcom/android/keyguard/CarrierText;Landroid/view/View;I)V

    if-nez p2, :cond_0

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void
.end method

.method public setLeoTogeCarrier(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrier:I

    iput p2, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierSingleLine:I

    iput-object p3, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierStrA:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierStrB:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierSymbol:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateLeoCarrierText()V

    return-void
.end method

.method public setLeoTogeCarrier5G(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrier5G:Z

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateLeoCarrierText()V

    return-void
.end method

.method public setLeoTogeCarrierColor(II)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierTextColor:I

    iput p2, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierColorEnabled:I

    sget-object p1, Lcom/android/settingslib/salt/SaltValues;->Values8:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/settingslib/salt/SaltValues;->Values9:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/settingslib/salt/SaltValues;->Values10:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierTextColor:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierText;->setTextColor(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierColorEnabled:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget p1, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierTextColor:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierText;->setTextColor(I)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/android/keyguard/CarrierText;->mNonAdaptedColor:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierText;->setTextColor(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateLeoCarrierText()V

    return-void
.end method

.method protected updateCarrierText()V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->getCarrierText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateLeoCarrierText()V

    return-void
.end method

.method public updateLeoCarrierText()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierText:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrier:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierSingleLine:I

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierStrA:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->getLeoCustomString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierStrB:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->getLeoCustomString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierStrA:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->getLeoCustomString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrier5G:Z

    if-eqz v1, :cond_2

    const-string v1, "4G"

    const-string v3, "5G"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    sget-object v0, Lcom/android/settingslib/salt/SaltValues;->Values8:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/settingslib/salt/SaltValues;->Values10:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/keyguard/CarrierText;->setSingleLine(Z)V

    :cond_4
    sget-object v0, Lcom/android/settingslib/salt/SaltValues;->Values9:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/keyguard/CarrierText;->mTogeCarrierSingleLine:I

    if-ne v0, v2, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setSingleLine(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/keyguard/CarrierText;->setSingleLine(Z)V

    :cond_6
    :goto_2
    return-void
.end method
