.class public Lcom/android/settingslib/salt/LeoLunar$Constant;
.super Ljava/lang/Object;
.source "LeoLunar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/salt/LeoLunar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constant"
.end annotation


# static fields
.field public static final CHINESE_NUMBER_CN:[Ljava/lang/String;

.field public static final CHINESE_TEN_CN:[Ljava/lang/String;

.field public static final GAN_CN:[Ljava/lang/String;

.field public static final LUNAR_MONTH_NAME_CN:[Ljava/lang/String;

.field public static final STATUS_CHUSHI_CN:Ljava/lang/String; = "\u521d\u5341"

.field public static final STATUS_DAY_CN:Ljava/lang/String; = "\u65e5"

.field public static final STATUS_ERSHI_CN:Ljava/lang/String; = "\u4e8c\u5341"

.field public static final STATUS_FORMAT_1_CN:Ljava/lang/String; = "yyyy\u5e74MM\u6708dd\u65e5"

.field public static final STATUS_FORMAT_2_CN:Ljava/lang/String; = "1900\u5e741\u670831\u65e5"

.field public static final STATUS_LEAP_CN:Ljava/lang/String; = "\u95f0"

.field public static final STATUS_LEAP_HK_TW:Ljava/lang/String; = "\u958f"

.field public static final STATUS_MONTH_CN:Ljava/lang/String; = "\u6708"

.field public static final STATUS_SANSHI_CN:Ljava/lang/String; = "\u4e09\u5341"

.field public static final STATUS_YEAR_CN:Ljava/lang/String; = "\u5e74"

.field public static final ZHI_CN:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "\u7532"

    const-string v1, "\u4e59"

    const-string v2, "\u4e19"

    const-string v3, "\u4e01"

    const-string v4, "\u620a"

    const-string v5, "\u5df1"

    const-string v6, "\u5e9a"

    const-string v7, "\u8f9b"

    const-string v8, "\u58ec"

    const-string v9, "\u7678"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/salt/LeoLunar$Constant;->GAN_CN:[Ljava/lang/String;

    const-string v1, "\u5b50"

    const-string v2, "\u4e11"

    const-string v3, "\u5bc5"

    const-string v4, "\u536f"

    const-string v5, "\u8fb0"

    const-string v6, "\u5df3"

    const-string v7, "\u5348"

    const-string v8, "\u672a"

    const-string v9, "\u7533"

    const-string v10, "\u9149"

    const-string v11, "\u620c"

    const-string v12, "\u4ea5"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/salt/LeoLunar$Constant;->ZHI_CN:[Ljava/lang/String;

    const-string v1, "\u4e00"

    const-string v2, "\u4e8c"

    const-string v3, "\u4e09"

    const-string v4, "\u56db"

    const-string v5, "\u4e94"

    const-string v6, "\u516d"

    const-string v7, "\u4e03"

    const-string v8, "\u516b"

    const-string v9, "\u4e5d"

    const-string v10, "\u5341"

    const-string v11, "\u5341\u4e00"

    const-string v12, "\u5341\u4e8c"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/salt/LeoLunar$Constant;->CHINESE_NUMBER_CN:[Ljava/lang/String;

    const-string v0, "\u521d"

    const-string v1, "\u5341"

    const-string v2, "\u5eff"

    const-string v3, "\u5345"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/salt/LeoLunar$Constant;->CHINESE_TEN_CN:[Ljava/lang/String;

    const-string v1, "\u6b63"

    const-string v2, "\u4e8c"

    const-string v3, "\u4e09"

    const-string v4, "\u56db"

    const-string v5, "\u4e94"

    const-string v6, "\u516d"

    const-string v7, "\u4e03"

    const-string v8, "\u516b"

    const-string v9, "\u4e5d"

    const-string v10, "\u5341"

    const-string v11, "\u51ac"

    const-string v12, "\u814a"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/salt/LeoLunar$Constant;->LUNAR_MONTH_NAME_CN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get12solar(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    const-string v0, "Q2hpbmVzZV9sdW5hcl8xMnNvbGFy"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get24solar(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    const-string v0, "Q2hpbmVzZV9sdW5hcl8yNHNvbGFy"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAnimals(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    const-string v0, "Q2hpbmVzZV9sdW5hcl9ab2RpYWM="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBorg(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    const-string v0, "Q2hpbmVzZV9sdW5hcl9Cb3Jn"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCncient(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    const-string v0, "Q2hpbmVzZV9sdW5hcl9BbmNpZW50TW9udGg="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEdecyl(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    const-string v0, "Q2hpbmVzZV9sdW5hcl9FZGVjeWw="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLeap()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u95f0"

    return-object v0

    :cond_0
    const-string v0, "\u958f"

    return-object v0
.end method

.method public static getMailyears(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    const-string v0, "Q2hpbmVzZV9sdW5hcl9NYWlseWVhcnM="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTerrestrialbranch(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    const-string v0, "Q2hpbmVzZV9sdW5hcl9FYXJ0aGx5"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
