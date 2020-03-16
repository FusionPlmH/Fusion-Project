.class final Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$deleteAll$1;
.super Ljava/lang/Object;
.source "DialogAppOptions.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;->deleteAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;


# direct methods
.method constructor <init>(Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$deleteAll$1;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget-object v0, Lcom/leo/salt/tools/constants/CheckRootStatus;->Companion:Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;->isMagisk()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/leo/script/MagiskExtend;->moduleInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/leo/salt/tools/constants/CheckRootStatus;->Companion:Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;

    const-string v1, "/system/app"

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;->isTmpfs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/leo/salt/tools/constants/CheckRootStatus;->Companion:Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;

    const-string v1, "/system/priv-app"

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;->isTmpfs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/leo/script/DialogHelper;->Companion:Lcom/leo/script/DialogHelper$Companion;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$deleteAll$1;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;

    invoke-virtual {v2}, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "app_manage_magisk"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "app_manage_magisk_info"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1000bc

    new-instance v3, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$deleteAll$1$1;

    invoke-direct {v3, p0}, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$deleteAll$1$1;-><init>(Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$deleteAll$1;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "AlertDialog.Builder(cont\u2026                        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/leo/script/DialogHelper$Companion;->animDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions$deleteAll$1;->this$0:Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;->access$_deleteAll(Lcom/leo/salt/tweaks/view/widget/DialogAppOptions;)V

    :goto_0
    return-void
.end method
