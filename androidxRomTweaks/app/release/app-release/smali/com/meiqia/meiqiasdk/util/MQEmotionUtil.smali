.class public Lcom/meiqia/meiqiasdk/util/MQEmotionUtil;
.super Ljava/lang/Object;
.source "MQEmotionUtil.java"


# static fields
.field public static final REGEX_EMOJI:Ljava/lang/String; = ":[\u4e00-\u9fa5\\w]+:"

.field public static final REGEX_GROUP:Ljava/lang/String; = "(:[\u4e00-\u9fa5\\w]+:)"

.field public static final sEmotionKeyArr:[Ljava/lang/String;

.field public static final sEmotionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final sEmotionValueArr:[I


# direct methods
.method static constructor <clinit>()V
    .locals 36

    const-string v0, ":smile:"

    const-string v1, ":smiley:"

    const-string v2, ":grinning:"

    const-string v3, ":blush:"

    const-string v4, ":relaxed:"

    const-string v5, ":wink:"

    const-string v6, ":heart_eyes:"

    const-string v7, ":kissing_heart:"

    const-string v8, ":kissing_closed_eyes:"

    const-string v9, ":kissing:"

    const-string v10, ":kissing_smiling_eyes:"

    const-string v11, ":stuck_out_tongue_winking_eye:"

    const-string v12, ":stuck_out_tongue_closed_eyes:"

    const-string v13, ":stuck_out_tongue:"

    const-string v14, ":flushed:"

    const-string v15, ":grin:"

    const-string v16, ":pensive:"

    const-string v17, ":relieved:"

    const-string v18, ":unamused:"

    const-string v19, ":disappointed:"

    const-string v20, ":persevere:"

    const-string v21, ":cry:"

    const-string v22, ":joy:"

    const-string v23, ":sob:"

    const-string v24, ":sleepy:"

    const-string v25, ":disappointed_relieved:"

    const-string v26, ":cold_sweat:"

    const-string v27, ":sweat_smile:"

    const-string v28, ":sweat:"

    const-string v29, ":weary:"

    const-string v30, ":tired_face:"

    const-string v31, ":fearful:"

    const-string v32, ":scream:"

    const-string v33, ":angry:"

    const-string v34, ":rage:"

    const-string v35, ":dog:"

    filled-new-array/range {v0 .. v35}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meiqia/meiqiasdk/util/MQEmotionUtil;->sEmotionKeyArr:[Ljava/lang/String;

    const/16 v0, 0x24

    new-array v0, v0, [I

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_2:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_3:I

    const/4 v3, 0x2

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_4:I

    const/4 v3, 0x3

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_5:I

    const/4 v3, 0x4

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_6:I

    const/4 v3, 0x5

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_7:I

    const/4 v3, 0x6

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_8:I

    const/4 v3, 0x7

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_9:I

    const/16 v3, 0x8

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_10:I

    const/16 v3, 0x9

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_11:I

    const/16 v3, 0xa

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_12:I

    const/16 v3, 0xb

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_13:I

    const/16 v3, 0xc

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_14:I

    const/16 v3, 0xd

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_15:I

    const/16 v3, 0xe

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_16:I

    const/16 v3, 0xf

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_17:I

    const/16 v3, 0x10

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_18:I

    const/16 v3, 0x11

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_19:I

    const/16 v3, 0x12

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_20:I

    const/16 v3, 0x13

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_21:I

    const/16 v3, 0x14

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_22:I

    const/16 v3, 0x15

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_23:I

    const/16 v3, 0x16

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_24:I

    const/16 v3, 0x17

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_25:I

    const/16 v3, 0x18

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_26:I

    const/16 v3, 0x19

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_27:I

    const/16 v3, 0x1a

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_28:I

    const/16 v3, 0x1b

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_29:I

    const/16 v3, 0x1c

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_30:I

    const/16 v3, 0x1d

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_31:I

    const/16 v3, 0x1e

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_32:I

    const/16 v3, 0x1f

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_33:I

    const/16 v3, 0x20

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_34:I

    const/16 v3, 0x21

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_35:I

    const/16 v3, 0x22

    aput v1, v0, v3

    sget v1, Lcom/meiqia/meiqiasdk/R$drawable;->mq_emoji_36:I

    const/16 v3, 0x23

    aput v1, v0, v3

    sput-object v0, Lcom/meiqia/meiqiasdk/util/MQEmotionUtil;->sEmotionValueArr:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meiqia/meiqiasdk/util/MQEmotionUtil;->sEmotionMap:Ljava/util/Map;

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQEmotionUtil;->sEmotionKeyArr:[Ljava/lang/String;

    array-length v0, v0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v1, Lcom/meiqia/meiqiasdk/util/MQEmotionUtil;->sEmotionMap:Ljava/util/Map;

    sget-object v3, Lcom/meiqia/meiqiasdk/util/MQEmotionUtil;->sEmotionKeyArr:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v4, Lcom/meiqia/meiqiasdk/util/MQEmotionUtil;->sEmotionValueArr:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmotionText(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 5

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, "(:[\u4e00-\u9fa5\\w]+:)"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p0, v2, p2}, Lcom/meiqia/meiqiasdk/util/MQEmotionUtil;->getImageSpan(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/style/ImageSpan;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getImageSpan(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/style/ImageSpan;
    .locals 1

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQEmotionUtil;->getImgByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    int-to-float p2, p2

    invoke-static {p0, p2}, Lcom/meiqia/meiqiasdk/util/MQUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    const/4 v0, 0x1

    invoke-static {p1, p2, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/text/style/ImageSpan;

    invoke-direct {p2, p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public static getImgByName(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQEmotionUtil;->sEmotionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method
