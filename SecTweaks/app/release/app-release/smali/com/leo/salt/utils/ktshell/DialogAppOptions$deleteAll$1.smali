.class final Lcom/leo/salt/utils/ktshell/DialogAppOptions$deleteAll$1;
.super Ljava/lang/Object;
.source "DialogAppOptions.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/utils/ktshell/DialogAppOptions;->deleteAll()V
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
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/utils/ktshell/DialogAppOptions;


# direct methods
.method constructor <init>(Lcom/leo/salt/utils/ktshell/DialogAppOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/utils/ktshell/DialogAppOptions$deleteAll$1;->this$0:Lcom/leo/salt/utils/ktshell/DialogAppOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->Companion:Lcom/leo/salt/utils/ktshell/CheckRootStatus$Companion;

    invoke-virtual {v0}, Lcom/leo/salt/utils/ktshell/CheckRootStatus$Companion;->isMagisk()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->Companion:Lcom/leo/salt/utils/ktshell/CheckRootStatus$Companion;

    const-string v1, "/system/app"

    invoke-virtual {v0, v1}, Lcom/leo/salt/utils/ktshell/CheckRootStatus$Companion;->isTmpfs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/leo/salt/utils/ktshell/CheckRootStatus;->Companion:Lcom/leo/salt/utils/ktshell/CheckRootStatus$Companion;

    const-string v1, "/system/priv-app"

    invoke-virtual {v0, v1}, Lcom/leo/salt/utils/ktshell/CheckRootStatus$Companion;->isTmpfs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/utils/ktshell/DialogAppOptions$deleteAll$1;->this$0:Lcom/leo/salt/utils/ktshell/DialogAppOptions;

    invoke-virtual {v1}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Magisk \u526f\u4f5c\u7528\u8b66\u544a"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u68c0\u6d4b\u5230\u4f60\u6b63\u5728\u4f7f\u7528Magisk\u4f5c\u4e3aROOT\u6743\u9650\u7ba1\u7406\u5668\uff0c\u5e76\u4e14/system/app\u548c/system/priv-app\u76ee\u5f55\u5df2\u88ab\u67d0\u4e9b\u6a21\u5757\u4fee\u6539\uff0c\u8fd9\u53ef\u80fd\u5bfc\u81f4\u8fd9\u4e9b\u76ee\u5f55\u88abMagisk\u8986\u76d6\u5e76\u4e14\u65e0\u6cd5\u5199\u5165\uff01\uff01"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/leo/salt/utils/ktshell/DialogAppOptions$deleteAll$1$1;

    invoke-direct {v2, p0}, Lcom/leo/salt/utils/ktshell/DialogAppOptions$deleteAll$1$1;-><init>(Lcom/leo/salt/utils/ktshell/DialogAppOptions$deleteAll$1;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/utils/ktshell/DialogAppOptions$deleteAll$1;->this$0:Lcom/leo/salt/utils/ktshell/DialogAppOptions;

    invoke-static {v0}, Lcom/leo/salt/utils/ktshell/DialogAppOptions;->access$_deleteAll(Lcom/leo/salt/utils/ktshell/DialogAppOptions;)V

    :goto_0
    return-void
.end method
