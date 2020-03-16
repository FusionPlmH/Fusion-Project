.class public Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;
.super Lcom/android/systemui/widget/SystemUITextView;
.source "SaltKeyguardNextAlarm.java"

# interfaces
.implements Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;


# instance fields
.field mContext:Landroid/content/Context;

.field mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->checkSettingsAndUpdate()V

    new-instance p1, Lcom/android/settingslib/salt/utils/LeoReceiver;

    invoke-direct {p1, p0}, Lcom/android/settingslib/salt/utils/LeoReceiver;-><init>(Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "U0FMVF9VUERBVEVfTE9DS0FMQVJNX1NFVFRJTkdT"

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public checkSettingsAndUpdate()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "string"

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "servicebox_alarm_no_alarm"

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->setText(I)V

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardAlarmcapEnr:I

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "servicebox_alarm_next"

    invoke-virtual {v4, v6, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "ic_alarm"

    invoke-static {v0, v2}, Lcom/android/settingslib/salt/SaltConfigFrame;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-boolean v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardAlarmIcon:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->setCompoundDrawablePadding(I)V

    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardAlarmSize:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->setTextSize(F)V

    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardAlarmColorEnr:I

    if-ne v2, v1, :cond_4

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardAlarmColor:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->setLeoCustomColor(I)V

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardAlarmIconColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->setLeoRemoveCustomColor()V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardAlarmColorFont:I

    const/4 v2, 0x0

    const-string v3, "sec-roboto-condensed"

    invoke-static {v0, v1, v3, v2}, Lcom/android/settingslib/salt/SaltConfigCenter;->setLeoTextFont(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->setTypeface(Landroid/graphics/Typeface;)V

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardAlarm:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->setVisibility(I)V

    return-void
.end method

.method public onLeoChange(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "U0FMVF9VUERBVEVfTE9DS0FMQVJNX1NFVFRJTkdT"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardNextAlarm;->checkSettingsAndUpdate()V

    :cond_0
    return-void
.end method
