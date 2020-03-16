.class public Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;
.super Ljava/lang/Object;
.source "LeoGlobalLunar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/view/LeoGlobalLunar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constant"
.end annotation


# static fields
.field public static final ANIMALS_CN:[Ljava/lang/String;

.field public static final ANIMALS_HK_TW:[Ljava/lang/String;

.field public static final CHINESE_NUMBER_CN:[Ljava/lang/String;

.field public static final CHINESE_TEN_CN:[Ljava/lang/String;

.field public static final GAN_CN:[Ljava/lang/String;

.field public static final HOLIDAY_CN:[Ljava/lang/String;

.field public static final HOLIDAY_HK:[Ljava/lang/String;

.field public static final HOLIDAY_TW:[Ljava/lang/String;

.field public static final LUNAR_FESTIVAL_CN:[Ljava/lang/String;

.field public static final LUNAR_FESTIVAL_HK_TW:[Ljava/lang/String;

.field public static final LUNAR_MONTH_NAME_CN:[Ljava/lang/String;

.field public static final SOLAR_TERM_CN:[Ljava/lang/String;

.field public static final SPEC_DAY_CN:[Ljava/lang/String;

.field public static final SPEC_DAY_HK:[Ljava/lang/String;

.field public static final SPEC_DAY_TW:[Ljava/lang/String;

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
    .locals 26

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

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->GAN_CN:[Ljava/lang/String;

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

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->ZHI_CN:[Ljava/lang/String;

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

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->CHINESE_NUMBER_CN:[Ljava/lang/String;

    const-string v0, "\u521d"

    const-string v1, "\u5341"

    const-string v2, "\u5eff"

    const-string v3, "\u5345"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->CHINESE_TEN_CN:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "\u5c0f\u5bd2"

    const-string v3, "\u5927\u5bd2"

    const-string v4, "\u7acb\u6625"

    const-string v5, "\u96e8\u6c34"

    const-string v6, "\u60ca\u86f0"

    const-string v7, "\u6625\u5206"

    const-string v8, "\u6e05\u660e"

    const-string v9, "\u8c37\u96e8"

    const-string v10, "\u7acb\u590f"

    const-string v11, "\u5c0f\u6ee1"

    const-string v12, "\u8292\u79cd"

    const-string v13, "\u590f\u81f3"

    const-string v14, "\u5c0f\u6691"

    const-string v15, "\u5927\u6691"

    const-string v16, "\u7acb\u79cb"

    const-string v17, "\u5904\u6691"

    const-string v18, "\u767d\u9732"

    const-string v19, "\u79cb\u5206"

    const-string v20, "\u5bd2\u9732"

    const-string v21, "\u971c\u964d"

    const-string v22, "\u7acb\u51ac"

    const-string v23, "\u5c0f\u96ea"

    const-string v24, "\u5927\u96ea"

    const-string v25, "\u51ac\u81f3"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->SOLAR_TERM_CN:[Ljava/lang/String;

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

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->LUNAR_MONTH_NAME_CN:[Ljava/lang/String;

    const-string v1, "\u9f20"

    const-string v2, "\u725b"

    const-string v3, "\u864e"

    const-string v4, "\u5154"

    const-string v5, "\u9f99"

    const-string v6, "\u86c7"

    const-string v7, "\u9a6c"

    const-string v8, "\u7f8a"

    const-string v9, "\u7334"

    const-string v10, "\u9e21"

    const-string v11, "\u72d7"

    const-string v12, "\u732a"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->ANIMALS_CN:[Ljava/lang/String;

    const-string v1, "\u9f20"

    const-string v2, "\u725b"

    const-string v3, "\u864e"

    const-string v4, "\u5154"

    const-string v5, "\u9f8d"

    const-string v6, "\u86c7"

    const-string v7, "\u99ac"

    const-string v8, "\u7f8a"

    const-string v9, "\u7334"

    const-string v10, "\u96de"

    const-string v11, "\u72d7"

    const-string v12, "\u8c6c"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->ANIMALS_HK_TW:[Ljava/lang/String;

    const-string v1, "\u814a\u6708\u5eff\u4e5d \u9664\u5915"

    const-string v2, "\u814a\u6708\u4e09\u5341 \u9664\u5915"

    const-string v3, "\u6b63\u6708\u521d\u4e00 \u6625\u8282"

    const-string v4, "\u6b63\u6708\u5341\u4e94 \u5143\u5bb5\u8282"

    const-string v5, "\u4e94\u6708\u521d\u4e94 \u7aef\u5348\u8282"

    const-string v6, "\u4e03\u6708\u521d\u4e03 \u4e03\u5915\u8282"

    const-string v7, "\u4e03\u6708\u5341\u4e94 \u4e2d\u5143\u8282"

    const-string v8, "\u516b\u6708\u5341\u4e94 \u4e2d\u79cb\u8282"

    const-string v9, "\u4e5d\u6708\u521d\u4e5d \u91cd\u9633\u8282"

    const-string v10, "\u814a\u6708\u521d\u516b \u814a\u516b\u8282"

    const-string v11, "\u814a\u6708\u5eff\u4e09 \u5c0f\u5e74"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->LUNAR_FESTIVAL_CN:[Ljava/lang/String;

    const-string v1, "\u81d8\u6708\u5eff\u4e5d \u9664\u5915"

    const-string v2, "\u81d8\u6708\u4e09\u5341 \u9664\u5915"

    const-string v3, "\u6b63\u6708\u521d\u4e00 \u6625\u7bc0"

    const-string v4, "\u6b63\u6708\u5341\u4e94 \u5143\u5bb5\u7bc0"

    const-string v5, "\u4e94\u6708\u521d\u4e94 \u7aef\u5348\u7bc0"

    const-string v6, "\u4e03\u6708\u521d\u4e03 \u4e03\u5915\u7bc0"

    const-string v7, "\u4e03\u6708\u5341\u4e94 \u4e2d\u5143\u7bc0"

    const-string v8, "\u516b\u6708\u5341\u4e94 \u4e2d\u79cb\u7bc0"

    const-string v9, "\u4e5d\u6708\u521d\u4e5d \u91cd\u967d\u7bc0"

    const-string v10, "\u814a\u6708\u521d\u516b \u81d8\u516b\u7bc0"

    const-string v11, "\u81d8\u6708\u5eff\u4e09 \u5c0f\u5e74"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->LUNAR_FESTIVAL_HK_TW:[Ljava/lang/String;

    const-string v1, "0101 \u5143\u65e6"

    const-string v2, "0214 \u60c5\u4eba\u8282"

    const-string v3, "0308 \u5987\u5973\u8282"

    const-string v4, "0312 \u690d\u6811\u8282"

    const-string v5, "0315 \u6d88\u8d39\u65e5"

    const-string v6, "0401 \u611a\u4eba\u8282"

    const-string v7, "0413 \u6cfc\u6c34\u8282"

    const-string v8, "0501 \u52b3\u52a8\u8282"

    const-string v9, "0504 \u9752\u5e74\u8282"

    const-string v10, "0601 \u513f\u7ae5\u8282"

    const-string v11, "0701 \u5efa\u515a\u65e5"

    const-string v12, "0801 \u5efa\u519b\u8282"

    const-string v13, "0903 \u6297\u6218\u80dc\u5229"

    const-string v14, "0910 \u6559\u5e08\u8282"

    const-string v15, "1001 \u56fd\u5e86\u8282"

    const-string v16, "1031 \u4e07\u5723\u8282"

    const-string v17, "1111 \u5149\u68cd\u8282"

    const-string v18, "1224 \u5e73\u5b89\u591c"

    const-string v19, "1225 \u5723\u8bde\u8282"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->HOLIDAY_CN:[Ljava/lang/String;

    const-string v1, "0101 \u5143\u65e6"

    const-string v2, "0214 \u60c5\u4eba\u7bc0"

    const-string v3, "0308 \u5a66\u5973\u7bc0"

    const-string v4, "0401 \u611a\u4eba\u7bc0"

    const-string v5, "0501 \u52de\u52d5\u7bc0"

    const-string v6, "0701 \u7279\u5340\u7d00\u5ff5"

    const-string v7, "0910 \u6559\u5e2b\u7bc0"

    const-string v8, "1001 \u570b\u6176\u7bc0"

    const-string v9, "1031 \u842c\u8056\u7bc0"

    const-string v10, "1224 \u5e73\u5b89\u591c"

    const-string v11, "1225 \u8056\u8a95\u7bc0"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->HOLIDAY_HK:[Ljava/lang/String;

    const-string v1, "0101 \u5143\u65e6"

    const-string v2, "0214 \u60c5\u4eba\u7bc0"

    const-string v3, "0228 \u548c\u5e73\u7d00\u5ff5"

    const-string v4, "0308 \u5a66\u5973\u7bc0"

    const-string v5, "0312 \u570b\u7236\u901d\u4e16"

    const-string v6, "0314 \u53cd\u4fb5\u7565\u65e5"

    const-string v7, "0329 \u5148\u70c8\u7d00\u5ff5"

    const-string v8, "0401 \u611a\u4eba\u7bc0"

    const-string v9, "0404 \u5152\u7ae5\u7bc0"

    const-string v10, "0501 \u52de\u52d5\u7bc0"

    const-string v11, "0715 \u89e3\u653e\u7d00\u5ff5"

    const-string v12, "0808 \u7236\u89aa\u7bc0"

    const-string v13, "0903 \u8ecd\u4eba\u7bc0"

    const-string v14, "0928 \u5b54\u5b50\u8a95\u8fb0"

    const-string v15, "1010 \u570b\u6176\u7bc0"

    const-string v16, "1024 \u806f\u5408\u570b\u65e5"

    const-string v17, "1025 \u81fa\u7063\u5149\u5fa9"

    const-string v18, "1112 \u570b\u7236\u8a95\u8fb0"

    const-string v19, "1031 \u842c\u8056\u7bc0"

    const-string v20, "1224 \u5e73\u5b89\u591c"

    const-string v21, "1225 \u8056\u8a95\u7bc0"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->HOLIDAY_TW:[Ljava/lang/String;

    const-string v0, "5,2,0,\u6bcd\u4eb2\u8282"

    const-string v1, "6,3,0,\u7236\u4eb2\u8282"

    const-string v2, "11,4,4,\u611f\u6069\u8282"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->SPEC_DAY_CN:[Ljava/lang/String;

    const-string v0, "11,4,4,\u611f\u6069\u7bc0"

    const-string v1, "5,2,0,\u6bcd\u89aa\u7bc0"

    const-string v2, "6,3,0,\u7236\u89aa\u7bc0"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->SPEC_DAY_HK:[Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->SPEC_DAY_TW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimals()[Ljava/lang/String;
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

    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->ANIMALS_CN:[Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->ANIMALS_HK_TW:[Ljava/lang/String;

    return-object v0
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

.method public static getLunarFestival()[Ljava/lang/String;
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

    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->LUNAR_FESTIVAL_CN:[Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->LUNAR_FESTIVAL_HK_TW:[Ljava/lang/String;

    return-object v0
.end method

.method public static getSolarHoliday()[Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->HOLIDAY_CN:[Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->HOLIDAY_HK:[Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->HOLIDAY_TW:[Ljava/lang/String;

    return-object v0

    :cond_2
    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->HOLIDAY_CN:[Ljava/lang/String;

    return-object v0
.end method

.method public static getSpecday()[Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->SPEC_DAY_CN:[Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->SPEC_DAY_HK:[Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->SPEC_DAY_TW:[Ljava/lang/String;

    return-object v0

    :cond_2
    sget-object v0, Lcom/leo/salt/tweaks/view/LeoGlobalLunar$Constant;->SPEC_DAY_CN:[Ljava/lang/String;

    return-object v0
.end method
