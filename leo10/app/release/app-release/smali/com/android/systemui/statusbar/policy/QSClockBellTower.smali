.class public Lcom/android/systemui/statusbar/policy/QSClockBellTower;
.super Ljava/lang/Object;
.source "QSClockBellTower.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static sInstance:Lcom/android/systemui/statusbar/policy/QSClockBellTower;


# instance fields
.field private mAudienceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;",
            ">;"
        }
    .end annotation
.end field

.field public mCalendar:Ljava/util/Calendar;

.field public mClockFormat:Ljava/text/SimpleDateFormat;

.field public mClockFormatString:Ljava/lang/String;

.field public mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

.field public mContext:Landroid/content/Context;

.field private final mCurrentDate:Ljava/util/Date;

.field public mDateStringFormat:Ljava/lang/String;

.field private mDateStringPattern:Ljava/lang/String;

.field public mDemoMode:Z

.field public mHandler:Landroid/os/Handler;

.field public mLocale:Ljava/util/Locale;

.field private final mTimeIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mUpdateNotifyNewClockTime:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentDate:Ljava/util/Date;

    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mTimeIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mUpdateNotifyNewClockTime:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.TIME_TICK"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.TIME_SET"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.leo.salt.UPDATE_SETTINGS"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "QSClockBellTower()   (((timeText:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getSmallTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", demo:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", dateText:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")))"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QSClockBellTower"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellTower;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->sInstance:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->sInstance:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->sInstance:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    return-object p0
.end method

.method private ringBellOfTower(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getSmallTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getDateViewText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "He is ready to ring the bell. (((timeText:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", skipUpdateForDemo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", dateText:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QSClockBellTower"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;

    invoke-interface {v4, v0, v2, p1, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->notifyTimeChanged(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    if-nez p2, :cond_0

    const-string p2, "enter"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    if-eqz p2, :cond_1

    const-string p2, "exit"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "   QSClockBellTower mAudienceList: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getChinaSaltDate(Z)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    const-string v1, ","

    if-eqz p1, :cond_0

    sget p1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSheaderDateLunarStyle:I

    const-string v2, "\n"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move-object v2, v1

    :goto_0
    sget-boolean v3, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSheaderDateLunarDisplayEnabled:Z

    const-string v4, ""

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/android/settingslib/salt/LeoLunar;

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/android/settingslib/salt/LeoLunar;-><init>(Landroid/icu/util/Calendar;Landroid/content/Context;)V

    sget-boolean v5, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSheaderDateLunarFestivalSymbolEnabled:Z

    sget-boolean v6, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSheaderDateLunarZodiacSymbolEnabled:Z

    sget v7, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSheaderDateLunarMonthStyle:I

    invoke-virtual {v2, v5, v6, v7, p1}, Lcom/android/settingslib/salt/LeoLunar;->toLeoLunarChineseLunar(ZZII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v4

    :goto_1
    sget-boolean v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSheaderDateWeekDisplayEnabled:Z

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSheaderDateWeekStyle:I

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/salt/SaltConfigCenter;->getLeoChineseWeekStyle(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    return-object v4
.end method

.method public getChinaTime()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSheaderClockChinaTimeDetailStyle:I

    sget-boolean v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSheaderClockChinaTimeDetailsEnabled:Z

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-lt v1, v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v3, v2, v1, v4}, Lcom/android/settingslib/salt/SaltConfigCenter;->getLeoTimeStyle(Landroid/content/Context;IZILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSheaderClockChinaTimeDetailSymbolStyle:I

    const-string v2, ","

    invoke-static {v0, v1, v4, v2}, Lcom/android/settingslib/salt/SaltConfigCenter;->getLeoSymbolStyle(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0, v3, v2, v1, v4}, Lcom/android/settingslib/salt/SaltConfigCenter;->getLeoTimeStyle(Landroid/content/Context;IZILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDateViewText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settingslib/salt/SaltConfigFrame;->isChineseLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MMMMd"

    goto :goto_0

    :cond_0
    const-string v0, "EEEMMMMd"

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringPattern:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringPattern:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    const-string v0, ""

    return-object v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentDate:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentDate:Ljava/util/Date;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getPersianCalendar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getPersianCalendar()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmallTime()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0xef01

    const v4, 0xef00

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormat:Ljava/text/SimpleDateFormat;

    goto/16 :goto_3

    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x27

    if-ne v7, v8, :cond_1

    xor-int/lit8 v6, v6, 0x1

    :cond_1
    if-nez v6, :cond_2

    const/16 v8, 0x61

    if-ne v7, v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_1
    if-ltz v2, :cond_5

    move v6, v2

    :goto_2
    if-lez v6, :cond_4

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "a"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormat:Ljava/text/SimpleDateFormat;

    iget-object v0, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    move-object v0, v2

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v1, :cond_9

    if-gt v2, v1, :cond_6

    goto :goto_5

    :cond_6
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-le v1, v0, :cond_7

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v3, v5, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_8
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    :goto_5
    return-object v0
.end method

.method public registerAudience(Ljava/lang/String;Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAudience() ticket:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSClockBellTower"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ringBellOfTower()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower(Z)V

    return-void
.end method

.method public unregisterAudience(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterAudience() ticket:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSClockBellTower"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
