.class public Lcom/android/systemui/statusbar/salt/SaltClock;
.super Landroid/widget/TextView;
.source "SaltClock.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/salt/SaltClock$LeoObserver;
    }
.end annotation


# static fields
.field public static final AM_PM_STYLE_GONE:I = 0x0

.field public static final AM_PM_STYLE_NORMAL:I = 0x2

.field public static final AM_PM_STYLE_SMALL:I = 0x1

.field public static final CLOCK_DATE_DISPLAY_GONE:I = 0x0

.field public static final CLOCK_DATE_DISPLAY_NORMAL:I = 0x2

.field public static final CLOCK_DATE_DISPLAY_SMALL:I = 0x1

.field public static final CLOCK_DATE_STYLE_LOWERCASE:I = 0x1

.field public static final CLOCK_DATE_STYLE_REGULAR:I = 0x0

.field public static final CLOCK_DATE_STYLE_UPPERCASE:I = 0x2

.field private static final CLOCK_SUPER_PARCELABLE:Ljava/lang/String; = "clock_super_parcelable"

.field private static final CURRENT_USER_ID:Ljava/lang/String; = "current_user_id"

.field private static final HIDE_DURATION:I = 0x3c

.field private static final SHOW_DURATION:I = 0x5

.field private static final SHOW_SECONDS:Ljava/lang/String; = "show_seconds"

.field public static final STYLE_DATE_LEFT:I = 0x0

.field public static final STYLE_DATE_RIGHT:I = 0x1

.field private static final VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final VISIBLE_BY_POLICY:Ljava/lang/String; = "visible_by_policy"

.field private static final VISIBLE_BY_USER:Ljava/lang/String; = "visible_by_user"

.field public static final mStyleableClock:[I


# instance fields
.field private autoHideHandler:Landroid/os/Handler;

.field private mAmPmStyle:I

.field protected mAttached:Z

.field protected mCalendar:Ljava/util/Calendar;

.field private mChinaDetails:Z

.field private mChinaDetailsSting:Ljava/lang/String;

.field private mChinaDetailsStyle:I

.field private mChinaDetailssymbolSting:Ljava/lang/String;

.field private mChinaDetailssymbolStyle:I

.field private mChinaLunarMonthStyle:I

.field private mClockAutoHide:Z

.field private mClockColor:I

.field protected mClockDateDisplay:I

.field protected mClockDateFormat:Ljava/lang/String;

.field protected mClockDatePosition:I

.field protected mClockDateStyle:I

.field public mClockDateWeekPosition:I

.field public mClockDateWeekStyle:I

.field public mClockDetailsPosition:I

.field private mClockFontStyle:I

.field protected mClockFormat:Ljava/text/SimpleDateFormat;

.field protected mClockFormatString:Ljava/lang/String;

.field private mClockSize:I

.field protected mClockVisibleByPolicy:Z

.field protected mClockVisibleByUser:Z

.field private mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mDatesymbolSting:Ljava/lang/String;

.field private mDatesymbolStyle:I

.field private mDemoMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mHideDuration:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs12:Z

.field private mLeoObserver:Lcom/android/systemui/statusbar/salt/SaltClock$LeoObserver;

.field protected mLocale:Ljava/util/Locale;

.field public mNonAdaptedColor:I

.field private mScreenOn:Z

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mSecondTick:Ljava/lang/Runnable;

.field private mSecondsHandler:Landroid/os/Handler;

.field protected mShowClock:Z

.field private final mShowDark:Z

.field protected mShowDateWeek:Z

.field private mShowDuration:I

.field private mShowSeconds:Z

.field public mSingleLine:Z

.field public mStatusbarClock:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/salt/config/R$styleable;->Clock:[I

    sput-object v0, Lcom/android/systemui/statusbar/salt/SaltClock;->mStyleableClock:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/salt/SaltClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/salt/SaltClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockVisibleByPolicy:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockVisibleByUser:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mScreenOn:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->autoHideHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDateDisplay:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDateStyle:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDateFormat:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowClock:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowDateWeek:Z

    const/16 v1, 0xe

    iput v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockSize:I

    const/16 v1, 0x3c

    iput v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mHideDuration:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowDuration:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/salt/SaltClock$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/salt/SaltClock$2;-><init>(Lcom/android/systemui/statusbar/salt/SaltClock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/statusbar/salt/SaltClock$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/salt/SaltClock$3;-><init>(Lcom/android/systemui/statusbar/salt/SaltClock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/statusbar/salt/SaltClock$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/salt/SaltClock$4;-><init>(Lcom/android/systemui/statusbar/salt/SaltClock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mSecondTick:Ljava/lang/Runnable;

    const-string v1, "leo_status_bar_clock"

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mStatusbarClock:Ljava/lang/String;

    sget v1, Lcom/android/settingslib/salt/SaltValues;->mLightModeFillColor:I

    iput v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockColor:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mStatusbarClock:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltClock;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/salt/SaltClock;->mStyleableClock:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    :try_start_0
    const-string v0, "styleable/Clock_amPmStyle"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v0

    const-string v1, "styleable/AM_PM_STYLE_GONE"

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mAmPmStyle:I

    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowDark:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->getCurrentTextColor()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mNonAdaptedColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lcom/android/systemui/statusbar/salt/SaltClock$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/salt/SaltClock$1;-><init>(Lcom/android/systemui/statusbar/salt/SaltClock;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateSettings()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/salt/SaltClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClockFontStyle()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/salt/SaltClock;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/salt/SaltClock;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/salt/SaltClock;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mScreenOn:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/salt/SaltClock;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/salt/SaltClock;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockAutoHide:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/salt/SaltClock;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->autoHideHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/salt/SaltClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateStatus()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/salt/SaltClock;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mSecondsHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/salt/SaltClock;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mSecondTick:Ljava/lang/Runnable;

    return-object p0
.end method

.method private autoHideClock()V
    .locals 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->autoHideHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$ljalTL_cQhyCs2fzR_CxbEtJ7LU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$ljalTL_cQhyCs2fzR_CxbEtJ7LU;-><init>(Lcom/android/systemui/statusbar/salt/SaltClock;)V

    iget v2, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mHideDuration:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 14

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mIs12:Z

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowSeconds:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v0, v0, Llibcore/icu/LocaleData;->timeFormat_Hms:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Llibcore/icu/LocaleData;->timeFormat_hms:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0xef01

    const v3, 0xef00

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_8

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mAmPmStyle:I

    if-eq v1, v4, :cond_7

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x27

    if-ne v8, v9, :cond_3

    xor-int/lit8 v7, v7, 0x1

    :cond_3
    if-nez v7, :cond_4

    const/16 v9, 0x61

    if-ne v8, v9, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    :goto_2
    if-ltz v1, :cond_7

    move v7, v1

    :goto_3
    if-lez v7, :cond_6

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "a"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockFormatString:Ljava/lang/String;

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    :goto_4
    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mChinaLunarMonthStyle:I

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mChinaDetails:Z

    iget v10, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mChinaDetailsStyle:I

    iget-object v11, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mChinaDetailsSting:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/settingslib/salt/SaltConfigCenter;->getLeoTimeStyle(Landroid/content/Context;IZILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mChinaDetailssymbolStyle:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mChinaDetailssymbolSting:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoSaltSymbolStyle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDetailsPosition:I

    if-nez v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v7, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDateDisplay:I

    if-eqz v7, :cond_d

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDateWeekPosition:I

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowDateWeek:Z

    iget v10, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDateWeekStyle:I

    iget v11, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mDatesymbolStyle:I

    iget-object v12, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mDatesymbolSting:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDateFormat:Ljava/lang/String;

    invoke-static/range {v7 .. v13}, Lcom/android/settingslib/salt/SaltConfigCenter;->getLeoDateStyle(Landroid/content/Context;IZIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDateStyle:I

    if-ne v7, v6, :cond_a

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_a
    if-ne v7, v4, :cond_b

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_b
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_6
    iget v8, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDatePosition:I

    const-string v9, "\n"

    if-nez v8, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_d
    move-object v7, v1

    :goto_8
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v9, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDateDisplay:I

    const/16 v10, 0x22

    const v11, 0x3f333333    # 0.7f

    if-eq v9, v4, :cond_10

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v9, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDatePosition:I

    if-ne v9, v6, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v6

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :goto_9
    iget v9, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDateDisplay:I

    if-nez v9, :cond_f

    invoke-virtual {v8, v5, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_a

    :cond_f
    if-ne v9, v6, :cond_10

    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v5, v11}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/2addr v0, v1

    invoke-virtual {v8, v5, v1, v0, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_10
    :goto_a
    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mAmPmStyle:I

    if-eq v0, v4, :cond_13

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v0, :cond_13

    if-le v1, v0, :cond_13

    iget v2, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mAmPmStyle:I

    if-nez v2, :cond_11

    add-int/2addr v1, v6

    invoke-virtual {v8, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_b

    :cond_11
    if-ne v2, v6, :cond_12

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v2, v11}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v8, v2, v0, v1, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_12
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v8, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_13
    :goto_b
    return-object v8
.end method

.method private updateClockFontStyle()V
    .locals 4

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockFont:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockFontStyle:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockFontStyle:I

    const-string v2, "sec-roboto-light"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settingslib/salt/SaltConfigCenter;->setLeoTextFont(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltClock;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClock()V

    return-void
.end method

.method private updateShowSeconds()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowSeconds:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mSecondsHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mSecondsHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mSecondsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mSecondTick:Ljava/lang/Runnable;

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

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mSecondsHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mSecondsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mSecondTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mSecondsHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClock()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateStatus()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClock()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateShowSeconds()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClockColor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClockSize()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClockFontStyle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    const/high16 p2, 0x800000

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockVisibleByPolicy:Z

    if-eq p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->setClockVisibilityByPolicy(Z)V

    :cond_1
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mDemoMode:Z

    if-nez v0, :cond_0

    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mDemoMode:Z

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mDemoMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mDemoMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClock()V

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mDemoMode:Z

    if-eqz v0, :cond_5

    const-string v0, "clock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "millis"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "hhmm"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const/4 p1, 0x2

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mIs12:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {p2, v1, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {p2, v1, v0}, Ljava/util/Calendar;->set(II)V

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCalendar:Ljava/util/Calendar;

    const/16 v0, 0xc

    invoke-virtual {p2, v0, p1}, Ljava/util/Calendar;->set(II)V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    iget-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public isClockDateEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->isClockVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDateDisplay:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClockVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockVisibleByUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockVisibleByPolicy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$autoHideClock$1$SaltClock()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClockVisibility()V

    return-void
.end method

.method public synthetic lambda$updateClockVisibility$0$SaltClock()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->autoHideClock()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mAttached:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider$-CC;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowDark:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCurrentUserId:I

    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCalendar:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mLeoObserver:Lcom/android/systemui/statusbar/salt/SaltClock$LeoObserver;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/statusbar/salt/SaltClock$LeoObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/salt/SaltClock$LeoObserver;-><init>(Lcom/android/systemui/statusbar/salt/SaltClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mLeoObserver:Lcom/android/systemui/statusbar/salt/SaltClock$LeoObserver;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mLeoObserver:Lcom/android/systemui/statusbar/salt/SaltClock$LeoObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/salt/SaltClock$LeoObserver;->observe()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateStatus()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$-CC;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mNonAdaptedColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->setClockCustomColor()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mNonAdaptedColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClockColor()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mAttached:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider$-CC;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowDark:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_3

    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "clock_super_parcelable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "current_user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCurrentUserId:I

    :cond_1
    const/4 v0, 0x1

    const-string v1, "visible_by_policy"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockVisibleByPolicy:Z

    const-string v1, "visible_by_user"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockVisibleByUser:Z

    const/4 v0, 0x0

    const-string v1, "show_seconds"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowSeconds:Z

    const-string v0, "visibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltClock;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "clock_super_parcelable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCurrentUserId:I

    const-string v2, "current_user_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockVisibleByPolicy:Z

    const-string v2, "visible_by_policy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockVisibleByUser:Z

    const-string v2, "visible_by_user"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowSeconds:Z

    const-string v2, "show_seconds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->getVisibility()I

    move-result v1

    const-string v2, "visibility"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setClockCustomColor()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockCustomColorEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setClockVisibilityByPolicy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockVisibleByPolicy:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClockVisibility()V

    return-void
.end method

.method public setClockVisibleByUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockVisibleByUser:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClockVisibility()V

    return-void
.end method

.method final updateClock()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mDemoMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltClock;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltClock;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateClockColor()V
    .locals 1

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->setClockCustomColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltClock;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mNonAdaptedColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltClock;->setTextColor(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClock()V

    return-void
.end method

.method public updateClockSize()V
    .locals 2

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockSingleLine:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mSingleLine:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mSingleLine:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockSingleSize:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltClock;->setGravity(I)V

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockMultiSize:I

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mSingleLine:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltClock;->setSingleLine(Z)V

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockSize:I

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockSize:I

    invoke-static {p0, v0}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->setLeoTextSize(Landroid/widget/TextView;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClock()V

    return-void
.end method

.method protected updateClockVisibility()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowClock:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockVisibleByPolicy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockVisibleByUser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-class v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    const-string v3, "clock"

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconVisibility(Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->autoHideHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltClock;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockAutoHide:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mScreenOn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->autoHideHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$CuId7_NJKN4Cwca7WbR29xRjHRM;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/salt/-$$Lambda$SaltClock$CuId7_NJKN4Cwca7WbR29xRjHRM;-><init>(Lcom/android/systemui/statusbar/salt/SaltClock;)V

    iget v2, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowDuration:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method protected updateSettings()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClock12Format:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mIs12:Z

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockShow:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowClock:Z

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockShowSeconds:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowSeconds:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mIs12:Z

    invoke-static {}, Lcom/android/settingslib/salt/SaltConfigFrame;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockChinaDetailSymbol:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mChinaDetailssymbolStyle:I

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockChinaDetail:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mChinaDetails:Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mChinaDetailssymbolStyle:I

    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockAMPMStyle:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mAmPmStyle:I

    :goto_1
    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockWeekSymbol:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mDatesymbolStyle:I

    sget-object v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockWeekSymbolStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mDatesymbolSting:Ljava/lang/String;

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockChinaDetailStyle:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mChinaDetailsStyle:I

    sget-object v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockChinaDetailStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mChinaDetailsSting:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockFormatString:Ljava/lang/String;

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockDateShow:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDateDisplay:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockDateStyle:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDateStyle:I

    sget-object v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockDateFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDateFormat:Ljava/lang/String;

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockDatePosition:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDatePosition:I

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockWeekShow:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowDateWeek:Z

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockWeekOrientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDateWeekPosition:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockWeekStyle:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDateWeekStyle:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockChinaOrientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockDetailsPosition:I

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockAutoHide:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mClockAutoHide:Z

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockHideDuration:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mHideDuration:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockShowDuration:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mShowDuration:I

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockStartPadding:F

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockEndPadding:F

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame$SaltSettings;->setLeoTextPadding(Landroid/widget/TextView;FF)V

    sget-object v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockChinaDetailSymbolStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mChinaDetailssymbolSting:Ljava/lang/String;

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarClockLunarMonthStyle:I

    iput v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mChinaLunarMonthStyle:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltClock;->mAttached:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClockVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateClock()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltClock;->updateShowSeconds()V

    :cond_2
    return-void
.end method
