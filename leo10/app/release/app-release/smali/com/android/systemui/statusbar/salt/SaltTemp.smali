.class public Lcom/android/systemui/statusbar/salt/SaltTemp;
.super Landroid/widget/TextView;
.source "SaltTemp.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# static fields
.field private static final TEMP:Ljava/lang/String; = " \u2103"

.field public static final TEMP_TAG:Ljava/lang/String; = "leo_statusbar_temp_view"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNonAdaptedColor:I

.field private mTempDisplay:Z

.field private mTempDisplayFont:I

.field private mTempDisplaySize:I

.field private mTempDisplayStyle:I

.field private mTempTextColor:I

.field private final mTemperatureReceiver:Landroid/content/BroadcastReceiver;

.field private final mTemperatureTick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/salt/SaltTemp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/salt/SaltTemp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/android/systemui/statusbar/salt/SaltTemp$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/salt/SaltTemp$1;-><init>(Lcom/android/systemui/statusbar/salt/SaltTemp;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTemperatureReceiver:Landroid/content/BroadcastReceiver;

    new-instance p2, Lcom/android/systemui/statusbar/salt/SaltTemp$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/salt/SaltTemp$2;-><init>(Lcom/android/systemui/statusbar/salt/SaltTemp;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTemperatureTick:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mContext:Landroid/content/Context;

    const-string p1, "leo_statusbar_temp_view"

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltTemp;->setTag(Ljava/lang/Object;)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltTemp;->setGravity(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltTemp;->setSingleLine(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/salt/SaltTemp;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/salt/SaltTemp;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTemperatureTick:Ljava/lang/Runnable;

    return-object p0
.end method

.method private getBatteryTemperature()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/settingslib/salt/SaltConfigCenter;->getBatteryTemp()F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u2103"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCPUTemperature()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settingslib/salt/SaltConfigCenter;->getCpuTemp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u2103"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLeoTempVoltageData(I)Ljava/lang/String;
    .locals 8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->getCPUTemperature()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->getBatteryTemperature()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpu"

    invoke-static {v2}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery"

    invoke-static {v3}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return-object v0

    :cond_0
    return-object v6

    :cond_1
    return-object v4
.end method


# virtual methods
.method public getLeoTempVoltage()V
    .locals 6

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarTempEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTempDisplay:Z

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarTempStyle:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTempDisplayStyle:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarTempFont:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTempDisplayFont:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarTempSize:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTempDisplaySize:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTempDisplay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTemperatureTick:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    mul-long v2, v2, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTemperatureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTempDisplayStyle:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->getLeoTempVoltageData(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTempDisplayFont:I

    const/4 v2, 0x1

    const-string v3, "roboto-regular"

    invoke-static {v0, v1, v3, v2}, Lcom/android/settingslib/salt/SaltConfigCenter;->setLeoTextFont(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarTempStartPadding:F

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarTempEndPadding:F

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->setLeoTextPadding(Landroid/widget/TextView;FF)V

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTempDisplaySize:I

    invoke-static {p0, v0}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->setLeoTextSize(Landroid/widget/TextView;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->updateTempColor()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->getLeoTempVoltage()V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$-CC;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mNonAdaptedColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->setTempCustomColor()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTempTextColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltTemp;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mNonAdaptedColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltTemp;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTemperatureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTemperatureTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->getLeoTempVoltage()V

    :cond_0
    return-void
.end method

.method public setTempCustomColor()Z
    .locals 2

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarTempCustomColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public updateTempColor()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarTempColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTempTextColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->setTempCustomColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mTempTextColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltTemp;->mNonAdaptedColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltTemp;->setTextColor(I)V

    :goto_0
    return-void
.end method
