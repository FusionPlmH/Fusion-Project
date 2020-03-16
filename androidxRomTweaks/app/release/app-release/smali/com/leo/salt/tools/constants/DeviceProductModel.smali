.class public final Lcom/leo/salt/tools/constants/DeviceProductModel;
.super Ljava/lang/Object;
.source "DeviceProductModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0011\u001a\u00020\u000fH\u0003J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0002J\u0008\u0010\u0016\u001a\u00020\u000fH\u0002J\u0008\u0010\u0017\u001a\u00020\u000fH\u0002J\u0008\u0010\u0018\u001a\u00020\u000fH\u0002J\u0010\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u0013H\u0002J\u0008\u0010\u001b\u001a\u00020\u000fH\u0002R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/leo/salt/tools/constants/DeviceProductModel;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "mEditDevice",
        "Landroid/widget/EditText;",
        "mEditFlavor",
        "mEditModel",
        "mEditProduct",
        "mEditProductName",
        "DeviceProductModelInfo",
        "",
        "InitialValue",
        "backupDefault",
        "getBackupProp",
        "",
        "prop",
        "default",
        "getHinit",
        "loadCurrent",
        "setDefault",
        "splitCodeStr",
        "codeStr",
        "templateChooser",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mEditDevice:Landroid/widget/EditText;

.field private mEditFlavor:Landroid/widget/EditText;

.field private mEditModel:Landroid/widget/EditText;

.field private mEditProduct:Landroid/widget/EditText;

.field private mEditProductName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->context:Landroid/content/Context;

    return-void
.end method

.method private final InitialValue()V
    .locals 4

    new-instance v0, Lcom/leo/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->context:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;IZ)V

    const v1, 0x7f1002db

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x7f1002df

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const v1, 0x104000a

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/leo/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tools/constants/DeviceProductModel$InitialValue$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/constants/DeviceProductModel$InitialValue$1;-><init>(Lcom/leo/salt/tools/constants/DeviceProductModel;)V

    check-cast v1, Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;

    invoke-virtual {v0, v1}, Lcom/leo/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/leo/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/leo/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leo/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public static final synthetic access$InitialValue(Lcom/leo/salt/tools/constants/DeviceProductModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tools/constants/DeviceProductModel;->InitialValue()V

    return-void
.end method

.method public static final synthetic access$backupDefault(Lcom/leo/salt/tools/constants/DeviceProductModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tools/constants/DeviceProductModel;->backupDefault()V

    return-void
.end method

.method public static final synthetic access$getMEditDevice$p(Lcom/leo/salt/tools/constants/DeviceProductModel;)Landroid/widget/EditText;
    .locals 1

    iget-object p0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditDevice:Landroid/widget/EditText;

    if-nez p0, :cond_0

    const-string v0, "mEditDevice"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMEditFlavor$p(Lcom/leo/salt/tools/constants/DeviceProductModel;)Landroid/widget/EditText;
    .locals 1

    iget-object p0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditFlavor:Landroid/widget/EditText;

    if-nez p0, :cond_0

    const-string v0, "mEditFlavor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMEditModel$p(Lcom/leo/salt/tools/constants/DeviceProductModel;)Landroid/widget/EditText;
    .locals 1

    iget-object p0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditModel:Landroid/widget/EditText;

    if-nez p0, :cond_0

    const-string v0, "mEditModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMEditProduct$p(Lcom/leo/salt/tools/constants/DeviceProductModel;)Landroid/widget/EditText;
    .locals 1

    iget-object p0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditProduct:Landroid/widget/EditText;

    if-nez p0, :cond_0

    const-string v0, "mEditProduct"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMEditProductName$p(Lcom/leo/salt/tools/constants/DeviceProductModel;)Landroid/widget/EditText;
    .locals 1

    iget-object p0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditProductName:Landroid/widget/EditText;

    if-nez p0, :cond_0

    const-string v0, "mEditProductName"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setDefault(Lcom/leo/salt/tools/constants/DeviceProductModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tools/constants/DeviceProductModel;->setDefault()V

    return-void
.end method

.method public static final synthetic access$setMEditDevice$p(Lcom/leo/salt/tools/constants/DeviceProductModel;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditDevice:Landroid/widget/EditText;

    return-void
.end method

.method public static final synthetic access$setMEditFlavor$p(Lcom/leo/salt/tools/constants/DeviceProductModel;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditFlavor:Landroid/widget/EditText;

    return-void
.end method

.method public static final synthetic access$setMEditModel$p(Lcom/leo/salt/tools/constants/DeviceProductModel;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditModel:Landroid/widget/EditText;

    return-void
.end method

.method public static final synthetic access$setMEditProduct$p(Lcom/leo/salt/tools/constants/DeviceProductModel;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditProduct:Landroid/widget/EditText;

    return-void
.end method

.method public static final synthetic access$setMEditProductName$p(Lcom/leo/salt/tools/constants/DeviceProductModel;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditProductName:Landroid/widget/EditText;

    return-void
.end method

.method public static final synthetic access$splitCodeStr(Lcom/leo/salt/tools/constants/DeviceProductModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/tools/constants/DeviceProductModel;->splitCodeStr(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$templateChooser(Lcom/leo/salt/tools/constants/DeviceProductModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tools/constants/DeviceProductModel;->templateChooser()V

    return-void
.end method

.method private final backupDefault()V
    .locals 5

    sget-object v0, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v0}, Lcom/leo/salt/utils/Consts;->getBACKUP_SUCCESS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/leo/salt/tools/constants/DeviceProductModel;->getBackupProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getBACKUP_MODEL()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v4, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v4}, Lcom/leo/salt/utils/Consts;->getRO_MODEL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/leo/salt/utils/Consts;->setPorp(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getBACKUP_PRODUCT()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v4, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v4}, Lcom/leo/salt/utils/Consts;->getRO_PRODUCT()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/leo/salt/utils/Consts;->setPorp(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getBACKUP_NAME()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v4, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v4}, Lcom/leo/salt/utils/Consts;->getRO_PRODUCTNAME()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/leo/salt/utils/Consts;->setPorp(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getBACKUP_DEVICE()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v4, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v4}, Lcom/leo/salt/utils/Consts;->getRO_DEVICE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/leo/salt/utils/Consts;->setPorp(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getBACKUP_FLAVOR()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v4, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v4}, Lcom/leo/salt/utils/Consts;->getRO_FLAVOR()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/leo/salt/utils/Consts;->setPorp(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getBACKUP_SUCCESS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/leo/salt/utils/Consts;->setPorp(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private final getBackupProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v0, p1}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method private final getHinit()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditModel:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v1, "mEditModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getRO_MODEL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditProduct:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const-string v1, "mEditProduct"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getRO_PRODUCT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditProductName:Landroid/widget/EditText;

    if-nez v0, :cond_2

    const-string v1, "mEditProductName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getRO_PRODUCTNAME()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditDevice:Landroid/widget/EditText;

    if-nez v0, :cond_3

    const-string v1, "mEditDevice"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getRO_DEVICE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditFlavor:Landroid/widget/EditText;

    if-nez v0, :cond_4

    const-string v1, "mEditFlavor"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getRO_FLAVOR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final loadCurrent()V
    .locals 3

    sget-object v0, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v0}, Lcom/leo/salt/utils/Consts;->getBACKUP_SUCCESS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/leo/salt/tools/constants/DeviceProductModel;->getBackupProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditModel:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const-string v1, "mEditModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getRO_MODEL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditProduct:Landroid/widget/EditText;

    if-nez v0, :cond_2

    const-string v1, "mEditProduct"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getRO_PRODUCT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditProductName:Landroid/widget/EditText;

    if-nez v0, :cond_3

    const-string v1, "mEditProductName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getRO_PRODUCTNAME()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditDevice:Landroid/widget/EditText;

    if-nez v0, :cond_4

    const-string v1, "mEditDevice"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getRO_DEVICE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditFlavor:Landroid/widget/EditText;

    if-nez v0, :cond_5

    const-string v1, "mEditFlavor"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getRO_FLAVOR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setDefault()V
    .locals 8

    sget-object v0, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v0}, Lcom/leo/salt/utils/Consts;->getBACKUP_SUCCESS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/leo/salt/tools/constants/DeviceProductModel;->getBackupProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "mEditFlavor"

    const-string v2, "mEditDevice"

    const-string v3, "mEditProductName"

    const-string v4, "mEditProduct"

    const-string v5, "mEditModel"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditModel:Landroid/widget/EditText;

    if-nez v0, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v5, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v6, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v6}, Lcom/leo/salt/utils/Consts;->getRO_MODEL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditProduct:Landroid/widget/EditText;

    if-nez v0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget-object v4, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v5, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v5}, Lcom/leo/salt/utils/Consts;->getRO_PRODUCT()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditProductName:Landroid/widget/EditText;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v4, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v4}, Lcom/leo/salt/utils/Consts;->getRO_PRODUCTNAME()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditDevice:Landroid/widget/EditText;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v3}, Lcom/leo/salt/utils/Consts;->getRO_DEVICE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditFlavor:Landroid/widget/EditText;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getRO_FLAVOR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditModel:Landroid/widget/EditText;

    if-nez v0, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    sget-object v5, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v5}, Lcom/leo/salt/utils/Consts;->getBACKUP_PRODUCT()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v7, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v7}, Lcom/leo/salt/utils/Consts;->getRO_MODEL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/leo/salt/tools/constants/DeviceProductModel;->getBackupProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditProduct:Landroid/widget/EditText;

    if-nez v0, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    sget-object v4, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v4}, Lcom/leo/salt/utils/Consts;->getBACKUP_MODEL()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v6, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v6}, Lcom/leo/salt/utils/Consts;->getRO_PRODUCT()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/leo/salt/tools/constants/DeviceProductModel;->getBackupProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditProductName:Landroid/widget/EditText;

    if-nez v0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v3}, Lcom/leo/salt/utils/Consts;->getBACKUP_NAME()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v5, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v5}, Lcom/leo/salt/utils/Consts;->getRO_PRODUCTNAME()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/leo/salt/tools/constants/DeviceProductModel;->getBackupProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditDevice:Landroid/widget/EditText;

    if-nez v0, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getBACKUP_DEVICE()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v4, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v4}, Lcom/leo/salt/utils/Consts;->getRO_DEVICE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/leo/salt/tools/constants/DeviceProductModel;->getBackupProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditFlavor:Landroid/widget/EditText;

    if-nez v0, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    sget-object v1, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v1}, Lcom/leo/salt/utils/Consts;->getBACKUP_FLAVOR()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    sget-object v3, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v3}, Lcom/leo/salt/utils/Consts;->getRO_FLAVOR()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/leo/salt/utils/Consts;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/leo/salt/tools/constants/DeviceProductModel;->getBackupProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private final splitCodeStr(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^.*@.*@.*@.*@.*$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "@"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditModel:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v1, "mEditModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditProduct:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const-string v1, "mEditProduct"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditProductName:Landroid/widget/EditText;

    if-nez v0, :cond_2

    const-string v1, "mEditProductName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditDevice:Landroid/widget/EditText;

    if-nez v0, :cond_3

    const-string v1, "mEditDevice"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditFlavor:Landroid/widget/EditText;

    if-nez v0, :cond_4

    const-string v1, "mEditFlavor"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private final templateChooser()V
    .locals 6

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object v1, Lcom/leo/script/DialogHelper;->Companion:Lcom/leo/script/DialogHelper$Companion;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1002dd

    invoke-static {v3}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v4, Lcom/leo/salt/tools/constants/DeviceProductModel$templateChooser$1;

    invoke-direct {v4, v0}, Lcom/leo/salt/tools/constants/DeviceProductModel$templateChooser$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    const v5, 0x7f030027

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/leo/salt/tools/constants/DeviceProductModel$templateChooser$2;

    invoke-direct {v3, p0, v0}, Lcom/leo/salt/tools/constants/DeviceProductModel$templateChooser$2;-><init>(Lcom/leo/salt/tools/constants/DeviceProductModel;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    const v0, 0x7f1000bc

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "AlertDialog.Builder(cont\u2026odeStr)\n                }"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/leo/script/DialogHelper$Companion;->animDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final DeviceProductModelInfo()V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.EditText"

    if-eqz v1, :cond_6

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditModel:Landroid/widget/EditText;

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditProduct:Landroid/widget/EditText;

    const v1, 0x7f0900bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditProductName:Landroid/widget/EditText;

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditDevice:Landroid/widget/EditText;

    const v1, 0x7f0900ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->mEditFlavor:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/leo/salt/tools/constants/DeviceProductModel;->getHinit()V

    const v1, 0x7f0900c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz v1, :cond_1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$1;

    invoke-direct {v3, p0}, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$1;-><init>(Lcom/leo/salt/tools/constants/DeviceProductModel;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$2;

    invoke-direct {v2, p0}, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$2;-><init>(Lcom/leo/salt/tools/constants/DeviceProductModel;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/leo/script/DialogHelper;->Companion:Lcom/leo/script/DialogHelper$Companion;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1001c9

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1002e0

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$3;

    invoke-direct {v3, p0}, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$3;-><init>(Lcom/leo/salt/tools/constants/DeviceProductModel;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "leo_slide_meun_help"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$4;

    invoke-direct {v3, p0}, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$4;-><init>(Lcom/leo/salt/tools/constants/DeviceProductModel;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1002db

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$5;

    invoke-direct {v3, p0}, Lcom/leo/salt/tools/constants/DeviceProductModel$DeviceProductModelInfo$5;-><init>(Lcom/leo/salt/tools/constants/DeviceProductModel;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "AlertDialog.Builder(cont\u2026Value()\n                }"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/leo/script/DialogHelper$Companion;->animDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/leo/salt/tools/constants/DeviceProductModel;->loadCurrent()V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/leo/salt/tools/constants/DeviceProductModel;->context:Landroid/content/Context;

    return-void
.end method
