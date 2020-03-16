.class public final Lcom/leo/salt/utils/ktshell/ThermalAddin;
.super Lcom/leo/salt/utils/ktshell/AddinBase;
.source "ThermalAddin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0008\u0010\t\u001a\u00020\u0006H\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0008\u0010\u000c\u001a\u00020\u0006H\u0002J\u0008\u0010\r\u001a\u00020\u0006H\u0002J\u0006\u0010\u000e\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/leo/salt/utils/ktshell/ThermalAddin;",
        "Lcom/leo/salt/utils/ktshell/AddinBase;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "RestartMeun",
        "",
        "string",
        "",
        "closeThermal",
        "isSupprt",
        "",
        "removeThermal",
        "resumeThermal",
        "showOption",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/ktshell/AddinBase;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin;->context:Landroid/content/Context;

    return-void
.end method

.method private final RestartMeun(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/leo/salt/utils/ktshell/ThermalAddin$RestartMeun$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/utils/ktshell/ThermalAddin$RestartMeun$1;-><init>(Lcom/leo/salt/utils/ktshell/ThermalAddin;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f10034c

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static final synthetic access$closeThermal(Lcom/leo/salt/utils/ktshell/ThermalAddin;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/utils/ktshell/ThermalAddin;->closeThermal()V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/leo/salt/utils/ktshell/ThermalAddin;)Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$removeThermal(Lcom/leo/salt/utils/ktshell/ThermalAddin;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/utils/ktshell/ThermalAddin;->removeThermal()V

    return-void
.end method

.method public static final synthetic access$resumeThermal(Lcom/leo/salt/utils/ktshell/ThermalAddin;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/utils/ktshell/ThermalAddin;->resumeThermal()V

    return-void
.end method

.method public static final synthetic access$setContext$p(Lcom/leo/salt/utils/ktshell/ThermalAddin;Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin;->context:Landroid/content/Context;

    return-void
.end method

.method private final closeThermal()V
    .locals 2

    invoke-direct {p0}, Lcom/leo/salt/utils/ktshell/ThermalAddin;->isSupprt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop thermald;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "stop mpdecision;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "stop thermal-engine;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "echo 0 > /sys/module/msm_thermal/core_control/enabled;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "echo 0 > /sys/module/msm_thermal/vdd_restriction/enabled;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "echo N > /sys/module/msm_thermal/parameters/enabled;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/utils/ktshell/ThermalAddin;->setCommand(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/leo/salt/utils/ktshell/AddinBase;->run()V

    return-void
.end method

.method private final isSupprt()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/vendor/bin/thermal-engine"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/vendor/bin/thermal-engine.bak"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final removeThermal()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/vendor/bin/thermal-engine.bak"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100357

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getResources().g\u2026g(R.string.removeThermal)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/leo/salt/utils/ktshell/ThermalAddin;->RestartMeun(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/ktshell/Consts;->getMountSystemRW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/ktshell/Consts;->getRMThermal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/utils/ktshell/ThermalAddin;->setCommand(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/leo/salt/utils/ktshell/AddinBase;->run()V

    return-void
.end method

.method private final resumeThermal()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/vendor/bin/thermal-engine"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100365

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getResources().g\u2026g(R.string.resumeThermal)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/leo/salt/utils/ktshell/ThermalAddin;->RestartMeun(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/ktshell/Consts;->getMountSystemRW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leo/salt/utils/ktshell/Consts;->INSTANCE:Lcom/leo/salt/utils/ktshell/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/ktshell/Consts;->getResetThermal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/utils/ktshell/ThermalAddin;->setCommand(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/leo/salt/utils/ktshell/AddinBase;->run()V

    return-void
.end method


# virtual methods
.method public final showOption()V
    .locals 5

    invoke-direct {p0}, Lcom/leo/salt/utils/ktshell/ThermalAddin;->isSupprt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1001ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1001f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/leo/salt/utils/ktshell/ThermalAddin;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f100408

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    check-cast v0, [Ljava/lang/CharSequence;

    iget v3, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v4, Lcom/leo/salt/utils/ktshell/ThermalAddin$showOption$1;

    invoke-direct {v4, v1}, Lcom/leo/salt/utils/ktshell/ThermalAddin$showOption$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/leo/salt/utils/ktshell/ThermalAddin$showOption$2;

    invoke-direct {v3, p0, v1}, Lcom/leo/salt/utils/ktshell/ThermalAddin$showOption$2;-><init>(Lcom/leo/salt/utils/ktshell/ThermalAddin;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
