.class final Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$3;
.super Ljava/lang/Object;
.source "DeviceProductModel.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/constants/DeviceProductModel;->DeviceProductModelInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceProductModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceProductModel.kt\ncom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$3\n*L\n1#1,236:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/constants/DeviceProductModel;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$3;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$3;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    invoke-static {p1}, Lcom/leo/salt/tools/constants/DeviceProductModel;->access$getMEditModel$p(Lcom/leo/salt/tools/constants/DeviceProductModel;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-string p2, "mEditModel.text"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$3;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    invoke-static {p2}, Lcom/leo/salt/tools/constants/DeviceProductModel;->access$getMEditProduct$p(Lcom/leo/salt/tools/constants/DeviceProductModel;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    const-string v0, "mEditProduct.text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$3;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    invoke-static {v0}, Lcom/leo/salt/tools/constants/DeviceProductModel;->access$getMEditProductName$p(Lcom/leo/salt/tools/constants/DeviceProductModel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "mEditProductName.text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$3;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    invoke-static {v1}, Lcom/leo/salt/tools/constants/DeviceProductModel;->access$getMEditDevice$p(Lcom/leo/salt/tools/constants/DeviceProductModel;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, "mEditDevice.text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$3;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    invoke-static {v2}, Lcom/leo/salt/tools/constants/DeviceProductModel;->access$getMEditFlavor$p(Lcom/leo/salt/tools/constants/DeviceProductModel;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const-string v3, "mEditFlavor.text"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$3;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/DeviceProductModel;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1002da

    invoke-static {p2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10

    :cond_6
    :goto_5
    iget-object v3, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$3;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    invoke-static {v3}, Lcom/leo/salt/tools/constants/DeviceProductModel;->access$backupDefault(Lcom/leo/salt/tools/constants/DeviceProductModel;)V

    invoke-static {}, Lcom/leo/script/MagiskExtend;->moduleInstalled()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_8

    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v3}, Lcom/leo/salt/utils/Consts;->getRO_MODEL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/leo/script/MagiskExtend;->setSystemProp(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_7

    :cond_9
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_a

    sget-object p1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {p1}, Lcom/leo/salt/utils/Consts;->getRO_PRODUCT()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leo/script/MagiskExtend;->setSystemProp(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_a
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_8

    :cond_b
    const/4 p1, 0x0

    :goto_8
    if-eqz p1, :cond_c

    sget-object p1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {p1}, Lcom/leo/salt/utils/Consts;->getRO_PRODUCTNAME()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leo/script/MagiskExtend;->setSystemProp(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_c
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_d

    const/4 p1, 0x1

    goto :goto_9

    :cond_d
    const/4 p1, 0x0

    :goto_9
    if-eqz p1, :cond_e

    sget-object p1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {p1}, Lcom/leo/salt/utils/Consts;->getRO_DEVICE()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leo/script/MagiskExtend;->setSystemProp(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_e
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_f

    goto :goto_a

    :cond_f
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_1c

    sget-object p1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {p1}, Lcom/leo/salt/utils/Consts;->getRO_FLAVOR()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leo/script/MagiskExtend;->setSystemProp(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_10

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v6}, Lcom/leo/salt/utils/Consts;->getMountSystemRW()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$3;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    invoke-virtual {v6}, Lcom/leo/salt/tools/constants/DeviceProductModel;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "FirstRun"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "First"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v6, "cp /system/build.prop /sdcard/LeoTweaks/backups/build.bak.prop;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v6, "cp /system/build.prop /data/build.prop;chmod 0755 /data/build.prop;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_12

    const/4 v6, 0x1

    goto :goto_b

    :cond_12
    const/4 v6, 0x0

    :goto_b
    const-string v7, "/\' /data/build.prop;"

    if-eqz v6, :cond_13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "busybox sed -i \'s/^ro.product.model=.*/ro.product.model="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_c

    :cond_14
    const/4 p1, 0x0

    :goto_c
    if-eqz p1, :cond_15

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "busybox sed -i \'s/^ro.build.product=.*/ro.build.product="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_d

    :cond_16
    const/4 p1, 0x0

    :goto_d
    if-eqz p1, :cond_17

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "busybox sed -i \'s/^ro.product.name=.*/ro.product.name="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_e

    :cond_18
    const/4 p1, 0x0

    :goto_e
    if-eqz p1, :cond_19

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "busybox sed -i \'s/^ro.product.device=.*/ro.product.device="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_1b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "busybox sed -i \'s/^ro.build.flavor=.*/ro.build.flavor="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string p1, "cp /system/build.prop /system/build.bak.prop\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "cp /data/build.prop /system/build.prop\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "rm /data/build.prop\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "chmod 0644 /system/build.prop\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "sync\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "sb.toString()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$3;->this$0:Lcom/leo/salt/tools/constants/DeviceProductModel;

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/DeviceProductModel;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1003a0

    invoke-static {p2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f1002de

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->RestartDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_10
    return-void
.end method
