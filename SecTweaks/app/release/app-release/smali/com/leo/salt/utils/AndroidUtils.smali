.class public Lcom/leo/salt/utils/AndroidUtils;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# static fields
.field public static SamsungNameBIG:Ljava/lang/String; = null

.field public static SamsungNameBIG9:Ljava/lang/String; = null

.field public static SamsungNameNote:Ljava/lang/String; = null

.field public static SamsungNameSMALL:Ljava/lang/String; = null

.field public static SamsungNameSMALL9:Ljava/lang/String; = null

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static fileDecimalFormat:Ljava/text/DecimalFormat;

.field private static fileIntegerFormat:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10036e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Galaxy S9+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameBIG9:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Galaxy S9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameSMALL9:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Galaxy S8+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameBIG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Galaxy S8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameSMALL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/LeoApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Note8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameNote:Ljava/lang/String;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/leo/salt/utils/AndroidUtils;->fileIntegerFormat:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/leo/salt/utils/AndroidUtils;->fileDecimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static APPName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R28K136VAZJ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u4e0d\u54b8\u7684\u76d0\u5df4"

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R58J44F6B3D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\u6df1\u898b\u3000\u3072\u3068\u307f"

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RF8J52ELJFR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "\u6df1\u898b\u3000\u3072\u3068\u307f"

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R28J51NJOFD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "\u590f\u5929"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R39J704L9T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Bright"

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R39J40L2DS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "\u6253\u9171\u6cb9\u7684"

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R28JC20F09T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "\u54b8\u9c7c"

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R28J51PLHQW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "Plmh"

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R39JA001JT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "\u7f52_\u2581\u80a5\u7c7d"

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/leo/salt/utils/AndroidUtils;->versions(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1001fc

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static Size(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/leo/salt/utils/AndroidUtils;->getAvailableMemory(Landroid/content/Context;)J

    move-result-wide v0

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/leo/salt/utils/AndroidUtils;->formatFileSize(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static clearmemory(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/Constants;->LEO_ACTION_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/utils/Constants;->LEO_ACTION_GLOBAL:Ljava/lang/String;

    const-string v2, "com.hitomileo.action.clearmemory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static customization(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R28K136VAZJ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u4e0d\u54b8\u7684\u76d0\u5df4 \u5b9a\u5236\u7248"

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R58J44F6B3D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\u6df1\u898b\u3000\u3072\u3068\u307f \u5973\u795e\u7248"

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RF8J52ELJFR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "\u6df1\u898b\u3000\u3072\u3068\u307f \u5973\u795e\u7248"

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R28J51NJ0FD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "\u590f\u5929 \u5973\u795e\u7248"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R39J704L9T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Bright \u5b9a\u5236\u7248"

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R39J40L2DS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "\u6253\u9171\u6cb9\u7684 \u5b9a\u5236\u7248"

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R28JC20F09T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "\u54b8\u9c7c \u5b9a\u5236\u7248"

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R28J51PLHQW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "Plmh \u5b9a\u5236\u7248"

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getAPPNAME()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R39JA001JT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "\u7f52_\u2581\u80a5\u7c7d \u5b9a\u5236\u7248"

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/leo/salt/utils/AndroidUtils;->versions(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1001fc

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static formatFileSize(JZ)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_0

    sget-object p2, Lcom/leo/salt/utils/AndroidUtils;->fileIntegerFormat:Ljava/text/DecimalFormat;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/leo/salt/utils/AndroidUtils;->fileDecimalFormat:Ljava/text/DecimalFormat;

    :goto_0
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    invoke-virtual {p2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v1

    invoke-virtual {p2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "K"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v1, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v1

    invoke-virtual {p2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "M"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    const-wide/high16 v1, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, v1

    invoke-virtual {p2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "G"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getAPPNAME()Ljava/lang/String;
    .locals 1

    const-string v0, "ril.serialnumber"

    invoke-static {v0}, Lcom/leo/salt/utils/AndroidUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getAvailableMemory(Landroid/content/Context;)J
    .locals 2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static getBaseband_Ver()Ljava/lang/String;
    .locals 9

    const-string v0, ""

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "gsm.version.baseband"

    aput-object v4, v3, v7

    const-string v4, "no message"

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    return-object v0
.end method

.method public static getBasicsSystemVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.PDA"

    invoke-static {v0}, Lcom/leo/salt/utils/AndroidUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomDateSystemVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.rom.name"

    invoke-static {v0}, Lcom/leo/salt/utils/AndroidUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomOTA()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.leo"

    invoke-static {v0}, Lcom/leo/salt/utils/AndroidUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomSystemVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.leo.code"

    invoke-static {v0}, Lcom/leo/salt/utils/AndroidUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.boot.em.model"

    invoke-static {v0}, Lcom/leo/salt/utils/AndroidUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLeoKernel()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.leo.kernel"

    invoke-static {v0}, Lcom/leo/salt/utils/AndroidUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLinuxKernalInfoEx()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "/system/bin/cat"

    const-string v2, "/proc/version"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/bin/"

    :try_start_0
    new-instance v3, Ljava/lang/ProcessBuilder;

    invoke-direct {v3, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string v1, "LeoTweaks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----Linux Kernal is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getPlatformVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.board.platform"

    invoke-static {v0}, Lcom/leo/salt/utils/AndroidUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getprop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/leo/salt/extrainfo/ExtraInfoLib;->shellExec(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p0, "[]"

    if-ne v0, p0, :cond_1

    const-string p0, "unknown"

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const-string p0, "unknown"

    return-object p0
.end method

.method public static getPropHardware()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.hardware"

    invoke-static {v0}, Lcom/leo/salt/utils/AndroidUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getROMVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.display.id"

    invoke-static {v0}, Lcom/leo/salt/utils/AndroidUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRomName()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.rom.name"

    invoke-static {v0}, Lcom/leo/salt/utils/AndroidUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDK()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.version.sdk"

    invoke-static {v0}, Lcom/leo/salt/utils/AndroidUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.version.release"

    invoke-static {v0}, Lcom/leo/salt/utils/AndroidUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdatemodel()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.chipname"

    invoke-static {v0}, Lcom/leo/salt/utils/AndroidUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public static getchipname()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.hardware.chipname"

    invoke-static {v0}, Lcom/leo/salt/utils/AndroidUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static openUrl(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static pname()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-G9500"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameSMALL:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-G950N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameSMALL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-G950F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameSMALL:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-G950FD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameSMALL:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-G955N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameBIG:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-G955F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameBIG:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-G955FD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameBIG:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-G9550"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameBIG:Ljava/lang/String;

    :cond_7
    :goto_0
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SC-02J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameSMALL:Ljava/lang/String;

    :cond_8
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SC-03J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameBIG:Ljava/lang/String;

    :cond_9
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCV35"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameBIG:Ljava/lang/String;

    :cond_a
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCV36"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameSMALL:Ljava/lang/String;

    :cond_b
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-N950N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameNote:Ljava/lang/String;

    :cond_c
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-N950F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameNote:Ljava/lang/String;

    :cond_d
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-N950FD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameNote:Ljava/lang/String;

    :cond_e
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-N9500"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameNote:Ljava/lang/String;

    :cond_f
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-G965N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameBIG9:Ljava/lang/String;

    :cond_10
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-G960N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameSMALL9:Ljava/lang/String;

    :cond_11
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-G965F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameBIG9:Ljava/lang/String;

    :cond_12
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-G960F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameSMALL9:Ljava/lang/String;

    :cond_13
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-G960FD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameSMALL9:Ljava/lang/String;

    :cond_14
    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-G965FD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v0, Lcom/leo/salt/utils/AndroidUtils;->SamsungNameBIG9:Ljava/lang/String;

    :cond_15
    return-object v0
.end method

.method public static versions(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomOTA()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f10023d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f10023e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
