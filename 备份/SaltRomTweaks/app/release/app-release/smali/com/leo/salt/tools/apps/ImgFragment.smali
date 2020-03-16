.class public final Lcom/leo/salt/tools/apps/ImgFragment;
.super Landroid/app/Fragment;
.source "ImgFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016J\"\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u0016J\"\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0017J&\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u001a\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020#2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\u00a8\u0006,"
    }
    d2 = {
        "Lcom/leo/salt/tools/apps/ImgFragment;",
        "Landroid/app/Fragment;",
        "()V",
        "BOOT_IMG_SELECTOR",
        "",
        "getBOOT_IMG_SELECTOR",
        "()I",
        "BOOT_QMG_SELECTOR",
        "getBOOT_QMG_SELECTOR",
        "BOOT_zip_QMG_SELECTOR",
        "getBOOT_zip_QMG_SELECTOR",
        "EFS_IMG_SELECTOR",
        "getEFS_IMG_SELECTOR",
        "RECOVERY_IMG_SELECTOR",
        "getRECOVERY_IMG_SELECTOR",
        "ZIP_IMG_SELECTOR",
        "getZIP_IMG_SELECTOR",
        "AnimationSelect",
        "",
        "GetSDFreeSizeMB",
        "",
        "ImgAppTextView",
        "",
        "STR",
        "createItem",
        "Ljava/util/HashMap;",
        "",
        "title",
        "desc",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
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
.field private final BOOT_IMG_SELECTOR:I

.field private final BOOT_QMG_SELECTOR:I

.field private final BOOT_zip_QMG_SELECTOR:I

.field private final EFS_IMG_SELECTOR:I

.field private final RECOVERY_IMG_SELECTOR:I

.field private final ZIP_IMG_SELECTOR:I

.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->RECOVERY_IMG_SELECTOR:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->EFS_IMG_SELECTOR:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->ZIP_IMG_SELECTOR:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->BOOT_QMG_SELECTOR:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->BOOT_zip_QMG_SELECTOR:I

    return-void
.end method

.method private final AnimationSelect()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "animation_boot_select"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "animation_items"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getCustomArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    sget-object v4, Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$1;->INSTANCE:Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$1;

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$2;

    invoke-direct {v3, p0}, Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$2;-><init>(Lcom/leo/salt/tools/apps/ImgFragment;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "animation_boot_usinghelp"

    invoke-virtual {p0, v2}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$3;

    invoke-direct {v3, p0}, Lcom/leo/salt/tools/apps/ImgFragment$AnimationSelect$3;-><init>(Lcom/leo/salt/tools/apps/ImgFragment;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static final synthetic access$AnimationSelect(Lcom/leo/salt/tools/apps/ImgFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tools/apps/ImgFragment;->AnimationSelect()V

    return-void
.end method


# virtual methods
.method public final GetSDFreeSizeMB()J
    .locals 4

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Environment.getDataDirectory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    const/16 v2, 0x400

    int-to-long v2, v2

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "STR"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Resource.getStringIdentifier(context, STR)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tools/apps/ImgFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Desc"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getBOOT_IMG_SELECTOR()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->BOOT_IMG_SELECTOR:I

    return v0
.end method

.method public final getBOOT_QMG_SELECTOR()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->BOOT_QMG_SELECTOR:I

    return v0
.end method

.method public final getBOOT_zip_QMG_SELECTOR()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->BOOT_zip_QMG_SELECTOR:I

    return v0
.end method

.method public final getEFS_IMG_SELECTOR()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->EFS_IMG_SELECTOR:I

    return v0
.end method

.method public final getRECOVERY_IMG_SELECTOR()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->RECOVERY_IMG_SELECTOR:I

    return v0
.end method

.method public final getZIP_IMG_SELECTOR()I
    .locals 1

    iget v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->ZIP_IMG_SELECTOR:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->RECOVERY_IMG_SELECTOR:I

    const-string v1, "flash_hint"

    const-string v2, "flash_confirm"

    const v3, 0x1040013

    const/high16 v4, 0x1040000

    const/4 v5, -0x1

    const-string v6, "file"

    if-ne p1, v0, :cond_3

    if-ne p2, v5, :cond_d

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "flash_rec"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget-object p3, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$1;->INSTANCE:Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$1;

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v4, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$2;

    invoke-direct {p3, p0, p1}, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$2;-><init>(Lcom/leo/salt/tools/apps/ImgFragment;Ljava/lang/String;)V

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v3, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string p2, "\u6240\u9009\u7684\u6587\u4ef6\u6ca1\u627e\u5230\uff01"

    check-cast p2, Ljava/lang/CharSequence;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->BOOT_IMG_SELECTOR:I

    if-ne p1, v0, :cond_5

    if-ne p2, v5, :cond_d

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_d

    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "flash_boot"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget-object p3, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$3;->INSTANCE:Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$3;

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v4, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$4;

    invoke-direct {p3, p0, p1}, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$4;-><init>(Lcom/leo/salt/tools/apps/ImgFragment;Ljava/lang/String;)V

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v3, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->EFS_IMG_SELECTOR:I

    const-string v7, "flash_efs"

    if-ne p1, v0, :cond_7

    if-ne p2, v5, :cond_d

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_d

    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget-object p3, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$5;->INSTANCE:Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$5;

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v4, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$6;

    invoke-direct {p3, p0, p1}, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$6;-><init>(Lcom/leo/salt/tools/apps/ImgFragment;Ljava/lang/String;)V

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v3, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->ZIP_IMG_SELECTOR:I

    if-ne p1, v0, :cond_9

    if-ne p2, v5, :cond_d

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_d

    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget-object p3, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$7;->INSTANCE:Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$7;

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v4, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$8;

    invoke-direct {p3, p0, p1}, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$8;-><init>(Lcom/leo/salt/tools/apps/ImgFragment;Ljava/lang/String;)V

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v3, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->BOOT_QMG_SELECTOR:I

    const-string v1, "animation_boot_confirm"

    if-ne p1, v0, :cond_b

    if-ne p2, v5, :cond_d

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_d

    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "animation_boot_qmg"

    invoke-virtual {p0, p3}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "animation_boot_confirm_qmg_info"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget-object p3, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$9;->INSTANCE:Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$9;

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v4, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$10;

    invoke-direct {p3, p0, p1}, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$10;-><init>(Lcom/leo/salt/tools/apps/ImgFragment;Ljava/lang/String;)V

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v3, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lcom/leo/salt/tools/apps/ImgFragment;->BOOT_zip_QMG_SELECTOR:I

    if-ne p1, v0, :cond_d

    if-ne p2, v5, :cond_d

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_d

    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/ImgFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "animation_boot_zip"

    invoke-virtual {p0, p3}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "animation_boot_confirm_zip_info"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget-object p3, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$11;->INSTANCE:Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$11;

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v4, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$12;

    invoke-direct {p3, p0, p1}, Lcom/leo/salt/tools/apps/ImgFragment$onActivityResult$builder$12;-><init>(Lcom/leo/salt/tools/apps/ImgFragment;Ljava/lang/String;)V

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, v3, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_d
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c005a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/ImgFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/tools/apps/ImgFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/leo/salt/tweaks/view/widget/DialogView;->SafetyDonateDialogView(Landroid/app/Activity;)V

    :cond_0
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->createSDCardDirimg()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "backup_action_title_boot"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup_action_title"

    invoke-virtual {p0, v2}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Boot"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "backup_action_sumarry"

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v4}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/boot.img"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "restore_action_title_boot"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restore_action_desc_boot"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "backup_action_title_rec"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Recovery"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v4}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/recovery.img"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "restore_action_title_rec"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restore_action_desc_rec"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "backup_action_title_efs"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EFS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leo/salt/utils/Consts;->INSTANCE:Lcom/leo/salt/utils/Consts;

    invoke-virtual {v2}, Lcom/leo/salt/utils/Consts;->getSDCardDirImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/efs.img"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "restore_action_title_efs"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restore_action_desc_efs"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "restore_action_title_zip"

    invoke-virtual {p0, v0}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restore_action_desc_zip"

    invoke-virtual {p0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->ImgAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5f00\u673a\u52a8\u753b"

    const-string v1, "\u81ea\u5b9a\u4e49\u5f00\u673a\u52a8\u753b"

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/tools/apps/ImgFragment;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Ljava/util/List;

    const v4, 0x7f0c001f

    const-string p1, "Title"

    const-string p2, "Desc"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v5

    const/4 p1, 0x2

    new-array v6, p1, [I

    fill-array-data v6, :array_0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    sget p1, Lcom/leo/salt/tweaks/R$id;->img_action_listview:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/apps/ImgFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    const-string p2, "img_action_listview"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget p1, Lcom/leo/salt/tweaks/R$id;->img_action_listview:I

    invoke-virtual {p0, p1}, Lcom/leo/salt/tools/apps/ImgFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/tweaks/view/widget/ScrollListView;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/leo/salt/tools/apps/ImgFragment$onViewCreated$1;-><init>(Lcom/leo/salt/tools/apps/ImgFragment;)V

    check-cast p2, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, p2}, Lcom/leo/salt/tweaks/view/widget/ScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f090013
        0x7f090005
    .end array-data
.end method
