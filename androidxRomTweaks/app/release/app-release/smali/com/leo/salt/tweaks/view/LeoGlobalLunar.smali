.class public Lcom/leo/salt/tweaks/view/LeoGlobalLunar;
.super Ljava/lang/Object;
.source "LeoGlobalLunar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;
    }
.end annotation


# static fields
.field public static final ConstellationArray:[Ljava/lang/String;

.field public static final ConstellationEdgeDay:[I

.field private static final lunarInfo:[J


# instance fields
.field private chineseDateFormat:Ljava/text/SimpleDateFormat;

.field private chineseNumber:[Ljava/lang/String;

.field private day:I

.field private leap:Z

.field private lunarMonthName:[Ljava/lang/String;

.field private mCalendar:Landroid/icu/util/Calendar;

.field private month:I

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->lunarInfo:[J

    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "constellation_Aquarius"

    invoke-static {v2}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->DATEView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "constellation_Pisces"

    invoke-static {v2}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->DATEView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "constellation_Aries"

    invoke-static {v2}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->DATEView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "constellation_Taurus"

    invoke-static {v2}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->DATEView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "constellation_Gemini"

    invoke-static {v2}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->DATEView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "constellation_Cancer"

    invoke-static {v2}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->DATEView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "constellation_Leo"

    invoke-static {v2}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->DATEView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "constellation_Virgo"

    invoke-static {v2}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->DATEView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "constellation_Libra"

    invoke-static {v2}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->DATEView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "constellation_Scorpio"

    invoke-static {v2}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->DATEView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "constellation_Sagittarius"

    invoke-static {v2}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->DATEView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string v2, "constellation_Capricorn"

    invoke-static {v2}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->DATEView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sput-object v1, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->ConstellationArray:[Ljava/lang/String;

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->ConstellationEdgeDay:[I

    return-void

    nop

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

    :array_1
    .array-data 4
        0x14
        0x13
        0x15
        0x15
        0x15
        0x16
        0x17
        0x17
        0x17
        0x17
        0x16
        0x16
    .end array-data
.end method

.method public constructor <init>(Landroid/icu/util/Calendar;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->mCalendar:Landroid/icu/util/Calendar;

    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->CHINESE_NUMBER_CN:[Ljava/lang/String;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->chineseNumber:[Ljava/lang/String;

    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->LUNAR_MONTH_NAME_CN:[Ljava/lang/String;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->lunarMonthName:[Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    :try_start_0
    const-string v0, "1900\u5e741\u670831\u65e5"

    iget-object v1, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int p1, v1

    const/16 v0, 0x76c

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x802

    if-ge v0, v3, :cond_0

    if-lez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->yearDays(I)I

    move-result v2

    sub-int/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-gez p1, :cond_1

    add-int/2addr p1, v2

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iput v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->year:I

    invoke-direct {p0, v0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leapMonth(I)I

    move-result v0

    iput-boolean v1, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leap:Z

    const/4 v2, 0x1

    move v3, p1

    const/4 p1, 0x1

    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0xd

    if-ge p1, v5, :cond_4

    if-lez v3, :cond_4

    if-lez v0, :cond_2

    add-int/lit8 v4, v0, 0x1

    if-ne p1, v4, :cond_2

    iget-boolean v4, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leap:Z

    if-nez v4, :cond_2

    add-int/lit8 p1, p1, -0x1

    iput-boolean v2, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leap:Z

    iget v4, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->year:I

    invoke-direct {p0, v4}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leapDays(I)I

    move-result v4

    goto :goto_3

    :cond_2
    iget v4, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->year:I

    invoke-direct {p0, v4, p1}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->monthDays(II)I

    move-result v4

    :goto_3
    sub-int/2addr v3, v4

    iget-boolean v5, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leap:Z

    if-eqz v5, :cond_3

    add-int/lit8 v5, v0, 0x1

    if-ne p1, v5, :cond_3

    iput-boolean v1, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leap:Z

    :cond_3
    iget-boolean v5, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leap:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    if-nez v3, :cond_6

    if-lez v0, :cond_6

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_6

    iget-boolean v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leap:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leap:Z

    goto :goto_4

    :cond_5
    iput-boolean v2, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leap:Z

    add-int/lit8 p1, p1, -0x1

    :cond_6
    :goto_4
    if-gez v3, :cond_7

    add-int/2addr v3, v4

    add-int/lit8 p1, p1, -0x1

    :cond_7
    iput p1, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->month:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->day:I

    return-void
.end method

.method public static ConstellationString(Landroid/icu/util/Calendar;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    sget-object v1, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->ConstellationEdgeDay:[I

    aget v1, v1, v0

    if-ge p0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    if-ltz v0, :cond_1

    sget-object p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->ConstellationArray:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    sget-object p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->ConstellationArray:[Ljava/lang/String;

    const/16 v0, 0xb

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static DATEView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cyclicalm(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->GAN_CN:[Ljava/lang/String;

    sget-object v1, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->ZHI_CN:[Ljava/lang/String;

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

.method public static getToday(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "constellation_date_format"

    invoke-static {v1}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->DATEView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result v5

    const-string v6, " "

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->ConstellationString(Landroid/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\u519c\u5386:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;

    invoke-direct {v0, p0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;-><init>(Landroid/icu/util/Calendar;)V

    invoke-virtual {v0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->toLunarChineseZodiacTimeSrting()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\u662f"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5e74\u4e2d\u7684\u7b2c "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u5468 \u7b2c"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u5929"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->ConstellationString(Landroid/icu/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nare "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " year "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " week No."

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "day"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private leapDays(I)I
    .locals 5

    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->lunarInfo:[J

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

    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->lunarInfo:[J

    add-int/lit16 p1, p1, -0x76c

    aget-wide v1, v0, p1

    const-wide/16 v3, 0xf

    and-long v0, v1, v3

    long-to-int p1, v0

    return p1
.end method

.method private monthDays(II)I
    .locals 3

    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->lunarInfo:[J

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

    sget-object v2, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->lunarInfo:[J

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
    invoke-direct {p0, p1}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leapDays(I)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public animalsYear()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->getAnimals()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->year:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public cyclical()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->year:I

    add-int/lit16 v0, v0, -0x76c

    add-int/lit8 v0, v0, 0x24

    invoke-direct {p0, v0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->cyclicalm(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChinaDayString(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->CHINESE_TEN_CN:[Ljava/lang/String;

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

    iget-object p1, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->chineseNumber:[Ljava/lang/String;

    aget-object p1, p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isBigMonth(Ljava/lang/String;)Z
    .locals 1

    iget p1, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->year:I

    iget v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->month:I

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->monthDays(II)I

    move-result p1

    const/16 v0, 0x1e

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toLunarChineseSrting()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->getLeap()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leap:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->lunarMonthName:[Ljava/lang/String;

    iget v2, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->month:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6708"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->day:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLunarChineseTimeSrting()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->getLeap()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->cyclical()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5e74"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leap:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->lunarMonthName:[Ljava/lang/String;

    iget v2, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->month:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6708"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->day:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLunarChineseZodiacSrting()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->getLeap()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->animalsYear()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5e74"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leap:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->lunarMonthName:[Ljava/lang/String;

    iget v2, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->month:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6708"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->day:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLunarChineseZodiacTimeMultiSrting()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->getLeap()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->cyclical()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->animalsYear()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5e74"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leap:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->lunarMonthName:[Ljava/lang/String;

    iget v2, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->month:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6708"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->day:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLunarChineseZodiacTimeSrting()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->getLeap()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->cyclical()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->animalsYear()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5e74"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->leap:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->lunarMonthName:[Ljava/lang/String;

    iget v2, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->month:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6708"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->day:I

    invoke-virtual {p0, v0}, Lcom/leo/salt/tweaks/view/LeoGlobalLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
