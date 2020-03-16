.class public Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;
.super Lcom/android/systemui/widget/SystemUITextView;
.source "SaltKeyguardLunar.java"

# interfaces
.implements Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;


# instance fields
.field private leolunar:Ljava/lang/String;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;->updateKeyguardLunar()V

    new-instance p1, Lcom/android/settingslib/salt/utils/LeoReceiver;

    invoke-direct {p1, p0}, Lcom/android/settingslib/salt/utils/LeoReceiver;-><init>(Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;)V

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "U0FMVF9VUERBVEVfTE9DS0xVTkFSX1NFVFRJTkdT"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private updateKeyguardLunar()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settingslib/salt/SaltConfigFrame;->isChineseLanguage()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardLunar:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/android/settingslib/salt/LeoLunar;

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/android/settingslib/salt/LeoLunar;-><init>(Landroid/icu/util/Calendar;Landroid/content/Context;)V

    sget-boolean v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardLunarFestivalSymbolEnabled:Z

    sget-boolean v3, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardLunarZodiacSymbolEnabled:Z

    sget v4, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardLunarMonthStyle:I

    sget v5, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardLunarStyle:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/settingslib/salt/LeoLunar;->toLeoLunarChineseLunar(ZZII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;->leolunar:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;->leolunar:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardLunarSize:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardLunarFont:I

    const-string v3, "sec-roboto-condensed"

    invoke-static {v0, v2, v3, v1}, Lcom/android/settingslib/salt/SaltConfigCenter;->setLeoTextFont(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;->setTypeface(Landroid/graphics/Typeface;)V

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardLunarColorEnabled:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoKeyguardLunarColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;->setLeoCustomColor(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;->setLeoRemoveCustomColor()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onLeoChange(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "U0FMVF9VUERBVEVfTE9DS0xVTkFSX1NFVFRJTkdT"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltKeyguardLunar;->updateKeyguardLunar()V

    :cond_0
    return-void
.end method
