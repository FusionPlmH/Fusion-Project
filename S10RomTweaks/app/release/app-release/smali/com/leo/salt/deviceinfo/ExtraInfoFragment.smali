.class public Lcom/leo/salt/deviceinfo/ExtraInfoFragment;
.super Landroid/app/Fragment;
.source "ExtraInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field HardwareCPU:Ljava/lang/String;

.field private isRun:Z

.field private mBattery:Landroid/widget/TextView;

.field private mBatteryTitle:Landroid/widget/TextView;

.field private mCPU:Landroid/widget/TextView;

.field private mCPUTitle:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field mLine:Ljava/lang/String;

.field mLine2:Ljava/lang/String;

.field private mLinkConut:Landroid/support/v7/widget/CardView;

.field private mMake:Landroid/widget/TextView;

.field private mScreen:Landroid/widget/TextView;

.field private mScreenTitle:Landroid/widget/TextView;

.field private mStorage:Landroid/widget/TextView;

.field private mStorageTitle:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, "CPU "

    iput-object v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->HardwareCPU:Ljava/lang/String;

    const-string v0, "\n"

    iput-object v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    const-string v0, "\n\n"

    iput-object v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    return-void
.end method

.method public static CharFromString(Ljava/lang/String;)C
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public static ObjectToChar(Ljava/lang/Object;)C
    .locals 1

    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->CharFromString(Ljava/lang/String;)C

    move-result p0

    :goto_0
    return p0
.end method

.method public static getCPUExtension()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.hardware"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "qcom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->getCPUInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->toUpperCaseFirstOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static producing_area(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "R"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    const-string v1, "C"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    if-gt v1, v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x1a

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "1"

    invoke-static {v6}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "2"

    invoke-static {v6}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "3"

    invoke-static {v6}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-string v6, "4"

    invoke-static {v6}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const-string v6, "5"

    invoke-static {v6}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    const/4 v10, 0x4

    aput-object v6, v5, v10

    const-string v6, "6"

    invoke-static {v6}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x6

    const-string v6, "7"

    invoke-static {v6}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x7

    const-string v6, "8"

    invoke-static {v6}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v3

    const/16 v3, 0x8

    const-string v6, "9"

    invoke-static {v6}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v3

    const/16 v3, 0x9

    const-string v6, "A"

    invoke-static {v6}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v3

    const/16 v3, 0xa

    const-string v6, "B"

    invoke-static {v6}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v3

    const/16 v3, 0xb

    const-string v6, "N"

    invoke-static {v6}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v3

    const/16 v3, 0xc

    const-string v6, "P"

    invoke-static {v6}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v3

    const/16 v3, 0xd

    const-string v6, "Q"

    invoke-static {v6}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v3

    const/16 v3, 0xe

    invoke-static {v0}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v5, v3

    const/16 v0, 0xf

    const-string v3, "T"

    invoke-static {v3}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v5, v0

    const/16 v0, 0x10

    const-string v3, "U"

    invoke-static {v3}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v5, v0

    const/16 v0, 0x11

    const-string v3, "V"

    invoke-static {v3}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v5, v0

    const/16 v0, 0x12

    const-string v3, "Y"

    invoke-static {v3}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v5, v0

    const/16 v0, 0x13

    const-string v3, "D"

    invoke-static {v3}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v5, v0

    const/16 v0, 0x14

    const-string v3, "F"

    invoke-static {v3}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v5, v0

    const/16 v0, 0x15

    const-string v3, "G"

    invoke-static {v3}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v5, v0

    const/16 v0, 0x16

    const-string v3, "J"

    invoke-static {v3}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v5, v0

    const/16 v0, 0x17

    const-string v3, "L"

    invoke-static {v3}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v5, v0

    const/16 v0, 0x18

    const-string v3, "S"

    invoke-static {v3}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v5, v0

    const/16 v0, 0x19

    const-string v3, "Z"

    invoke-static {v3}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->ObjectToChar(Ljava/lang/Object;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->switchObjectToInt(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    const-string v3, "VIETNAM"

    const-string v4, "CHINA"

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    goto :goto_0

    :pswitch_0
    const-string v0, "BRAZIL"

    goto :goto_0

    :pswitch_1
    move-object v0, v3

    goto :goto_0

    :pswitch_2
    move-object v0, v4

    goto :goto_0

    :pswitch_3
    const-string v0, "KOREA"

    :goto_0
    invoke-virtual {p0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "R21"

    aput-object v6, v5, v7

    const-string v6, "R28"

    aput-object v6, v5, v1

    const-string v6, "R51"

    aput-object v6, v5, v8

    const-string v6, "R58"

    aput-object v6, v5, v9

    invoke-static {p0, v5}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->switchObjectToInt(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_4

    if-eq p0, v1, :cond_4

    if-eq p0, v8, :cond_3

    if-eq p0, v9, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_1

    :cond_4
    move-object v0, v4

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MADE IN "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs switchObjectToInt(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 7

    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_1

    aget-object p0, p1, v2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpl-double p0, v3, v5

    if-nez p0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_1
    array-length v0, p1

    if-ge v2, v0, :cond_4

    aget-object v0, p1, v2

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v1
.end method


# virtual methods
.method public getData()V
    .locals 7

    invoke-static {}, Lcom/leo/salt/utils/BatteryUtil;->getDesignCapacity()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mMake:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "device_inf_vendor"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ro.product.manufacturer"

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->toUpperCaseFirstOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "device_inf_origin"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoSafetyID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->producing_area(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "device_inf_of_sale_csc"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ro.boot.carrierid"

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "device_inf_csc"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ro.csc.countryiso_code"

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "device_inf_fingerprint"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ro.build.fingerprint"

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Motherboard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ro.product.board"

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "device_inf_knox"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ro.boot.warranty_bit"

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "device_inf_fcc"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "FCC ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/BatteryUtil;->getDeviceFccId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "device_inf_mp"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ril.hw_ver"

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mCPU:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->HardwareCPU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->getCPUExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->HardwareCPU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "quantity_cpu"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/CpuInfo;->getNumCpuCores()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->HardwareCPU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "places_cpu"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/CpuInfo;->isCpu64()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "64"

    goto :goto_0

    :cond_0
    const-string v3, "32"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->HardwareCPU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u95f2\u7f6e"

    invoke-static {v3}, Lcom/leo/salt/utils/ExtraInfo;->getCpuMhz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->HardwareCPU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "abi_cpu"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/CpuInfo;->getCpuAbi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->HardwareCPU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "governor_cpu"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/CpuInfo;->getCpuGovernor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->HardwareCPU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "available_cpu"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/CpuInfo;->getCpuAvailableGovernorsSimple()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->HardwareCPU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "frequencies_cpu"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/CpuInfo;->getCpuAvailableFrequenciesSimple()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->HardwareCPU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "temp_cpu"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/CpuInfo;->getCpuTemparature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leo/salt/utils/ScreenUtil;->getScreenInfo(Landroid/content/Context;)Lcom/leo/salt/utils/ScreenInfo;

    move-result-object v1

    new-instance v2, Lcom/leo/salt/utils/ScreenUtil;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/leo/salt/utils/ScreenUtil;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mScreen:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GPU"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/ScreenUtil;->getGPUModel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "GPU Mhz"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;->GPUMHZ:Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    invoke-static {v6}, Lcom/leo/salt/utils/BatteryUtil;->GPUTempMHZ(Lcom/leo/salt/utils/BatteryUtil$TemperatureType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v6, "temp_info"

    invoke-static {v5, v6}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;->GPU:Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    invoke-static {v5}, Lcom/leo/salt/utils/BatteryUtil;->GPUTemp(Lcom/leo/salt/utils/BatteryUtil$TemperatureType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v6, "gpu_usage"

    invoke-static {v5, v6}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/ScreenUtil;->getGPUbusy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v6, "screen_real_metrics"

    invoke-static {v5, v6}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/leo/salt/utils/ScreenInfo;->screenRealMetrics:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v6, "screen_density"

    invoke-static {v5, v6}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/leo/salt/utils/ScreenInfo;->densityDpiStr:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v5, "screen_refresh"

    invoke-static {v1, v5}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/leo/salt/utils/ScreenUtil;->getDisplayRefreshRate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mBattery:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "device_inf_fixed_value"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/BatteryUtil;->getDeviceRated()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "battery_info_current"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/BatteryUtil;->getCurrent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "battery_info_voltage"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/BatteryUtil;->getVoltage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "battery_info_cycleindex"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/BatteryUtil;->getCycleindex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v4, "battery_info_designCapacity"

    invoke-static {v3, v4}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAh"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v3, "battery_info_tusableindex"

    invoke-static {v0, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/utils/BatteryUtil;->getUsableindex(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string v3, "battery_info_temp"

    invoke-static {v0, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;->Battery:Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    invoke-static {v0}, Lcom/leo/salt/utils/BatteryUtil;->getBatteryTemperature(Lcom/leo/salt/utils/BatteryUtil$TemperatureType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mStorage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sdcard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/sdcard"

    invoke-static {v2}, Lcom/leo/salt/utils/MemInfo;->ObtainFSPartSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/system"

    invoke-static {v2}, Lcom/leo/salt/utils/MemInfo;->ObtainFSPartSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data"

    invoke-static {v2}, Lcom/leo/salt/utils/MemInfo;->ObtainFSPartSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/cache"

    invoke-static {v2}, Lcom/leo/salt/utils/MemInfo;->ObtainFSPartSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RAM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/MemInfo;->getRAM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/CpuInfo;->getefs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f1001b4

    invoke-virtual {p0, v0}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->linkCountDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0053

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->view:Landroid/view/View;

    const p2, 0x7f0900a0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mCPU:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->view:Landroid/view/View;

    const p2, 0x7f0901f9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mStorage:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->view:Landroid/view/View;

    const p2, 0x7f0901b8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mScreen:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->view:Landroid/view/View;

    const p2, 0x7f09005f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mBattery:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->view:Landroid/view/View;

    const p2, 0x7f09014e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mMake:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->view:Landroid/view/View;

    const p2, 0x7f0900a1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mCPUTitle:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mCPUTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string p3, "cpu_info"

    invoke-static {p2, p3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->view:Landroid/view/View;

    const p2, 0x7f0901fa

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mStorageTitle:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mStorageTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string p3, "storage_info"

    invoke-static {p2, p3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->view:Landroid/view/View;

    const p2, 0x7f0901b9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mScreenTitle:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mScreenTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string p3, "screen_info"

    invoke-static {p2, p3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->view:Landroid/view/View;

    const p2, 0x7f090061

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mBatteryTitle:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mBatteryTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mContext:Landroid/content/Context;

    const-string p3, "battery_info"

    invoke-static {p2, p3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->view:Landroid/view/View;

    const p2, 0x7f09013c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/CardView;

    iput-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLinkConut:Landroid/support/v7/widget/CardView;

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->mLinkConut:Landroid/support/v7/widget/CardView;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->isRun:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->isRun:Z

    iget-boolean v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->isRun:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/leo/salt/deviceinfo/ExtraInfoFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/leo/salt/deviceinfo/ExtraInfoFragment$1;-><init>(Lcom/leo/salt/deviceinfo/ExtraInfoFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/deviceinfo/ExtraInfoFragment;->isRun:Z

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method
