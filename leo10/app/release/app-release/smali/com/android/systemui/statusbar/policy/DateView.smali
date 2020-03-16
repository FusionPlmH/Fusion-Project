.class public Lcom/android/systemui/statusbar/policy/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;


# instance fields
.field private mLastText:Ljava/lang/String;

.field private mSaltDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public notifyTimeChanged(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/settingslib/salt/SaltConfigFrame;->isChineseLanguage()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mSaltDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_0
    sget-object p1, Lcom/android/settingslib/salt/SaltValues;->Values16:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/DateView;->setSingleLine(Z)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DateView;->setGravity(I)V

    const-string p1, "sans-serif-light"

    goto :goto_0

    :cond_1
    const-string p1, "sec-roboto-light"

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSheaderDateDateFont:I

    invoke-static {p3, v0, p1, p2}, Lcom/android/settingslib/salt/SaltConfigCenter;->setLeoTextFont(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DateView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLastText:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/policy/DateView;->setText(Ljava/lang/CharSequence;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLastText:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->registerAudience(Ljava/lang/String;Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateDate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->unregisterAudience(Ljava/lang/String;)V

    return-void
.end method

.method public updateDate()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/settingslib/salt/SaltValues;->Values16:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getChinaSaltDate(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mSaltDate:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getDateViewText()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p0, v2, v2, v1, v0}, Lcom/android/systemui/statusbar/policy/DateView;->notifyTimeChanged(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSheaderDateDisplayEnabled:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->setVisibility(I)V

    return-void
.end method
