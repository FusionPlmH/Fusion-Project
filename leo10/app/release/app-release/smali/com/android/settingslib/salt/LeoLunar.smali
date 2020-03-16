.class public Lcom/android/settingslib/salt/LeoLunar;
.super Ljava/lang/Object;
.source "LeoLunar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/salt/LeoLunar$Festival;,
        Lcom/android/settingslib/salt/LeoLunar$SolarTermsUtil;,
        Lcom/android/settingslib/salt/LeoLunar$Constant;
    }
.end annotation


# static fields
.field private static final lunarInfo:[J


# instance fields
.field private EarthlyMonthName:[Ljava/lang/String;

.field private MailBorgMonthName:[Ljava/lang/String;

.field private MailEdecylMonthName:[Ljava/lang/String;

.field private MailyearsMonthName:[Ljava/lang/String;

.field private ancientlunarMonthName:[Ljava/lang/String;

.field private chineseDateFormat:Ljava/text/SimpleDateFormat;

.field private chineseNumber:[Ljava/lang/String;

.field private day:I

.field private leap:Z

.field private lunarMonthName:[Ljava/lang/String;

.field private mCalendar:Landroid/icu/util/Calendar;

.field public mContext:Landroid/content/Context;

.field private month:I

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settingslib/salt/LeoLunar;->lunarInfo:[J

    return-void

    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data
.end method

.method public constructor <init>(Landroid/icu/util/Calendar;Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/salt/LeoLunar;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settingslib/salt/LeoLunar;->mCalendar:Landroid/icu/util/Calendar;

    sget-object v0, Lcom/android/settingslib/salt/LeoLunar$Constant;->CHINESE_NUMBER_CN:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/salt/LeoLunar;->chineseNumber:[Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/salt/LeoLunar$Constant;->LUNAR_MONTH_NAME_CN:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/salt/LeoLunar;->lunarMonthName:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/settingslib/salt/LeoLunar$Constant;->getCncient(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/salt/LeoLunar;->ancientlunarMonthName:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/settingslib/salt/LeoLunar$Constant;->getTerrestrialbranch(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/salt/LeoLunar;->EarthlyMonthName:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/settingslib/salt/LeoLunar$Constant;->getMailyears(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/salt/LeoLunar;->MailyearsMonthName:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/settingslib/salt/LeoLunar$Constant;->getBorg(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/salt/LeoLunar;->MailBorgMonthName:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/settingslib/salt/LeoLunar$Constant;->getEdecyl(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/salt/LeoLunar;->MailEdecylMonthName:[Ljava/lang/String;

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settingslib/salt/LeoLunar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    :try_start_0
    const-string p2, "1900\u5e741\u670831\u65e5"

    iget-object v0, p0, Lcom/android/settingslib/salt/LeoLunar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x5265c00

    div-long/2addr v0, p1

    long-to-int p1, v0

    const/16 p2, 0x76c

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x802

    if-ge p2, v2, :cond_0

    if-lez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/settingslib/salt/LeoLunar;->yearDays(I)I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    if-gez p1, :cond_1

    add-int/2addr p1, v1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    iput p2, p0, Lcom/android/settingslib/salt/LeoLunar;->year:I

    invoke-direct {p0, p2}, Lcom/android/settingslib/salt/LeoLunar;->leapMonth(I)I

    move-result p2

    iput-boolean v0, p0, Lcom/android/settingslib/salt/LeoLunar;->leap:Z

    const/4 v1, 0x1

    move v2, p1

    const/4 p1, 0x1

    const/4 v3, 0x0

    :goto_2
    const/16 v4, 0xd

    if-ge p1, v4, :cond_4

    if-lez v2, :cond_4

    if-lez p2, :cond_2

    add-int/lit8 v3, p2, 0x1

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settingslib/salt/LeoLunar;->leap:Z

    if-nez v3, :cond_2

    add-int/lit8 p1, p1, -0x1

    iput-boolean v1, p0, Lcom/android/settingslib/salt/LeoLunar;->leap:Z

    iget v3, p0, Lcom/android/settingslib/salt/LeoLunar;->year:I

    invoke-direct {p0, v3}, Lcom/android/settingslib/salt/LeoLunar;->leapDays(I)I

    move-result v3

    goto :goto_3

    :cond_2
    iget v3, p0, Lcom/android/settingslib/salt/LeoLunar;->year:I

    invoke-direct {p0, v3, p1}, Lcom/android/settingslib/salt/LeoLunar;->monthDays(II)I

    move-result v3

    :goto_3
    sub-int/2addr v2, v3

    iget-boolean v4, p0, Lcom/android/settingslib/salt/LeoLunar;->leap:Z

    if-eqz v4, :cond_3

    add-int/lit8 v4, p2, 0x1

    if-ne p1, v4, :cond_3

    iput-boolean v0, p0, Lcom/android/settingslib/salt/LeoLunar;->leap:Z

    :cond_3
    iget-boolean v4, p0, Lcom/android/settingslib/salt/LeoLunar;->leap:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    if-nez v2, :cond_6

    if-lez p2, :cond_6

    add-int/2addr p2, v1

    if-ne p1, p2, :cond_6

    iget-boolean p2, p0, Lcom/android/settingslib/salt/LeoLunar;->leap:Z

    if-eqz p2, :cond_5

    iput-boolean v0, p0, Lcom/android/settingslib/salt/LeoLunar;->leap:Z

    goto :goto_4

    :cond_5
    iput-boolean v1, p0, Lcom/android/settingslib/salt/LeoLunar;->leap:Z

    add-int/lit8 p1, p1, -0x1

    :cond_6
    :goto_4
    if-gez v2, :cond_7

    add-int/2addr v2, v3

    add-int/lit8 p1, p1, -0x1

    :cond_7
    iput p1, p0, Lcom/android/settingslib/salt/LeoLunar;->month:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/settingslib/salt/LeoLunar;->day:I

    return-void
.end method

.method private cyclicalm(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/android/settingslib/salt/LeoLunar$Constant;->GAN_CN:[Ljava/lang/String;

    sget-object v1, Lcom/android/settingslib/salt/LeoLunar$Constant;->ZHI_CN:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v3, p1, 0xa

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 p1, p1, 0xc

    aget-object p1, v1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getChinaCalendarMsg(III[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    aget-object p1, p4, v0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xf

    if-ne p2, v0, :cond_1

    if-ne p3, v1, :cond_1

    const/4 p1, 0x2

    aget-object p1, p4, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    if-ne p3, v0, :cond_2

    const/4 p1, 0x3

    aget-object p1, p4, p1

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    if-ne p2, v2, :cond_3

    if-ne p3, v2, :cond_3

    const/4 p1, 0x4

    aget-object p1, p4, p1

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_4

    if-ne p3, v1, :cond_4

    aget-object p1, p4, v0

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    if-ne p2, v0, :cond_5

    if-ne p3, v1, :cond_5

    const/4 p1, 0x6

    aget-object p1, p4, p1

    goto :goto_0

    :cond_5
    const/16 v1, 0x9

    if-ne p2, v1, :cond_6

    if-ne p3, v1, :cond_6

    aget-object p1, p4, v2

    goto :goto_0

    :cond_6
    const/16 v1, 0xc

    if-ne p2, v1, :cond_7

    if-ne p3, v0, :cond_7

    aget-object p1, p4, v0

    goto :goto_0

    :cond_7
    if-ne p2, v1, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/salt/LeoLunar;->monthDays(II)I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_8

    if-eq p3, v1, :cond_9

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/salt/LeoLunar;->monthDays(II)I

    move-result p1

    const/16 p2, 0x1e

    if-ne p1, p2, :cond_a

    if-ne p3, p2, :cond_a

    :cond_9
    const/4 p1, 0x0

    aget-object p1, p4, p1

    goto :goto_0

    :cond_a
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private leapDays(I)I
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/settingslib/salt/LeoLunar;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settingslib/salt/LeoLunar;->lunarInfo:[J

    add-int/lit16 p1, p1, -0x76c

    aget-wide v1, v0, p1

    const-wide/32 v3, 0x10000

    and-long v0, v1, v3

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    return p1

    :cond_0
    const/16 p1, 0x1d

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private leapMonth(I)I
    .locals 5

    sget-object v0, Lcom/android/settingslib/salt/LeoLunar;->lunarInfo:[J

    add-int/lit16 p1, p1, -0x76c

    aget-wide v1, v0, p1

    const-wide/16 v3, 0xf

    and-long v0, v1, v3

    long-to-int p1, v0

    return p1
.end method

.method private monthDays(II)I
    .locals 3

    sget-object v0, Lcom/android/settingslib/salt/LeoLunar;->lunarInfo:[J

    add-int/lit16 p1, p1, -0x76c

    aget-wide v1, v0, p1

    const/high16 p1, 0x10000

    shr-int/2addr p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x1d

    return p1

    :cond_0
    const/16 p1, 0x1e

    return p1
.end method

.method private yearDays(I)I
    .locals 7

    const/16 v0, 0x15c

    const v1, 0x8000

    :goto_0
    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    sget-object v2, Lcom/android/settingslib/salt/LeoLunar;->lunarInfo:[J

    add-int/lit16 v3, p1, -0x76c

    aget-wide v3, v2, v3

    int-to-long v5, v1

    and-long v2, v3, v5

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settingslib/salt/LeoLunar;->leapDays(I)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public animalsYear(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/settingslib/salt/LeoLunar$Constant;->getAnimals(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/android/settingslib/salt/LeoLunar;->year:I

    add-int/lit8 v0, v0, -0x4

    rem-int/lit8 v0, v0, 0xc

    aget-object p1, p1, v0

    return-object p1
.end method

.method public cyclical()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/settingslib/salt/LeoLunar;->year:I

    add-int/lit16 v0, v0, -0x76c

    add-int/lit8 v0, v0, 0x24

    invoke-direct {p0, v0}, Lcom/android/settingslib/salt/LeoLunar;->cyclicalm(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChinaDayString(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/android/settingslib/salt/LeoLunar$Constant;->CHINESE_TEN_CN:[Ljava/lang/String;

    rem-int/lit8 v1, p1, 0xa

    if-nez v1, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/16 v2, 0x1e

    if-le p1, v2, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    const/16 v3, 0xa

    if-ne p1, v3, :cond_2

    const-string p1, "\u521d\u5341"

    return-object p1

    :cond_2
    const/16 v4, 0x14

    if-ne p1, v4, :cond_3

    const-string p1, "\u4e8c\u5341"

    return-object p1

    :cond_3
    if-ne p1, v2, :cond_4

    const-string p1, "\u4e09\u5341"

    return-object p1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p1, v3

    aget-object p1, v0, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settingslib/salt/LeoLunar;->chineseNumber:[Ljava/lang/String;

    aget-object p1, p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLeoMonthChinese(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/salt/LeoLunar;->lunarMonthName:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settingslib/salt/LeoLunar;->month:I

    sub-int/2addr v1, v0

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/salt/LeoLunar;->MailEdecylMonthName:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settingslib/salt/LeoLunar;->month:I

    sub-int/2addr v1, v0

    aget-object p1, p1, v1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/salt/LeoLunar;->MailBorgMonthName:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settingslib/salt/LeoLunar;->month:I

    sub-int/2addr v1, v0

    aget-object p1, p1, v1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/salt/LeoLunar;->MailyearsMonthName:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settingslib/salt/LeoLunar;->month:I

    sub-int/2addr v1, v0

    aget-object p1, p1, v1

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/android/settingslib/salt/LeoLunar;->EarthlyMonthName:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settingslib/salt/LeoLunar;->month:I

    sub-int/2addr v1, v0

    aget-object p1, p1, v1

    return-object p1

    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/salt/LeoLunar;->ancientlunarMonthName:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settingslib/salt/LeoLunar;->month:I

    sub-int/2addr v1, v0

    aget-object p1, p1, v1

    return-object p1
.end method

.method public toLeoLunarChineseLunar(ZZII)Ljava/lang/String;
    .locals 11

    invoke-static {}, Lcom/android/settingslib/salt/LeoLunar$Constant;->getLeap()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settingslib/salt/LeoLunar;->leap:Z

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    if-ne p3, v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/android/settingslib/salt/LeoLunar;->getLeoMonthChinese(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/android/settingslib/salt/LeoLunar;->getLeoMonthChinese(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\u6708"

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_1
    iget-object v1, p0, Lcom/android/settingslib/salt/LeoLunar;->mContext:Landroid/content/Context;

    const-string v4, "\u5e74"

    iget v5, p0, Lcom/android/settingslib/salt/LeoLunar;->year:I

    iget v6, p0, Lcom/android/settingslib/salt/LeoLunar;->month:I

    iget v7, p0, Lcom/android/settingslib/salt/LeoLunar;->day:I

    new-instance v8, Ljava/lang/String;

    const-string v9, "Q2hpbmVzZV9sdW5hcl9mZXN0aXZhbA=="

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v8}, Lcom/android/settingslib/salt/SaltConfigFrame;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/settingslib/salt/LeoLunar;->getChinaCalendarMsg(III[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/settingslib/salt/LeoLunar$Festival;

    iget-object v7, p0, Lcom/android/settingslib/salt/LeoLunar;->mCalendar:Landroid/icu/util/Calendar;

    invoke-direct {v6, v7}, Lcom/android/settingslib/salt/LeoLunar$Festival;-><init>(Landroid/icu/util/Calendar;)V

    invoke-virtual {v6}, Lcom/android/settingslib/salt/LeoLunar$Festival;->getFestival()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settingslib/salt/LeoLunar$SolarTermsUtil;

    iget-object v8, p0, Lcom/android/settingslib/salt/LeoLunar;->mCalendar:Landroid/icu/util/Calendar;

    invoke-direct {v7, v8, v1}, Lcom/android/settingslib/salt/LeoLunar$SolarTermsUtil;-><init>(Landroid/icu/util/Calendar;Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/android/settingslib/salt/LeoLunar$SolarTermsUtil;->getSolartermsMsg()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\uff3d"

    const-string v9, "\uff3b"

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/LeoLunar;->animalsYear(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/settingslib/salt/LeoLunar;->animalsYear(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    if-nez p4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settingslib/salt/LeoLunar;->day:I

    invoke-virtual {p0, p2}, Lcom/android/settingslib/salt/LeoLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f

    :cond_3
    if-ne p4, v3, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settingslib/salt/LeoLunar;->day:I

    invoke-virtual {p0, p2}, Lcom/android/settingslib/salt/LeoLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f

    :cond_4
    const/4 v1, 0x2

    if-ne p4, v1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingslib/salt/LeoLunar;->cyclical()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settingslib/salt/LeoLunar;->day:I

    invoke-virtual {p0, p2}, Lcom/android/settingslib/salt/LeoLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f

    :cond_5
    const/4 v1, 0x3

    const-string v3, " "

    if-ne p4, v1, :cond_a

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingslib/salt/LeoLunar;->cyclical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/settingslib/salt/LeoLunar;->leap:Z

    if-eqz p2, :cond_9

    goto :goto_6

    :cond_9
    move-object v0, v2

    :goto_6
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settingslib/salt/LeoLunar;->day:I

    invoke-virtual {p0, p2}, Lcom/android/settingslib/salt/LeoLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f

    :cond_a
    const/4 v1, 0x4

    if-ne p4, v1, :cond_f

    if-eqz p1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_7

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_c
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_9
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingslib/salt/LeoLunar;->cyclical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/settingslib/salt/LeoLunar;->leap:Z

    if-eqz p2, :cond_e

    goto :goto_a

    :cond_e
    move-object v0, v2

    :goto_a
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settingslib/salt/LeoLunar;->day:I

    invoke-virtual {p0, p2}, Lcom/android/settingslib/salt/LeoLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f

    :cond_f
    const/4 v1, 0x5

    if-ne p4, v1, :cond_14

    if-eqz p1, :cond_12

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_b

    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_11
    :goto_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_d
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingslib/salt/LeoLunar;->cyclical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/settingslib/salt/LeoLunar;->leap:Z

    if-eqz p2, :cond_13

    goto :goto_e

    :cond_13
    move-object v0, v2

    :goto_e
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settingslib/salt/LeoLunar;->day:I

    invoke-virtual {p0, p2}, Lcom/android/settingslib/salt/LeoLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_14
    :goto_f
    return-object v2
.end method
