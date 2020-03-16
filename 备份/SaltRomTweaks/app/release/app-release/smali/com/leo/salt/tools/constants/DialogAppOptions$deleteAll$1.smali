.class final Lcom/leo/salt/tools/constants/DialogAppOptions$deleteAll$1;
.super Ljava/lang/Object;
.source "DialogAppOptions.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/constants/DialogAppOptions;->deleteAll()V
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
.field final synthetic this$0:Lcom/leo/salt/tools/constants/DialogAppOptions;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/constants/DialogAppOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/DialogAppOptions$deleteAll$1;->this$0:Lcom/leo/salt/tools/constants/DialogAppOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/leo/salt/tools/constants/CheckRootStatus;->Companion:Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/CheckRootStatus$Companion;->isMagisk()Z

    move-result v0

    if-eqz v0, :cond_1

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
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/DialogAppOptions$deleteAll$1;->this$0:Lcom/leo/salt/tools/constants/DialogAppOptions;

    invoke-virtual {v1}, Lcom/leo/salt/tools/constants/DialogAppOptions;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/leo/salt/tools/constants/DialogAppOptions$deleteAll$1;->this$0:Lcom/leo/salt/tools/constants/DialogAppOptions;

    const-string v2, "app_manage_magisk"

    invoke-virtual {v1, v2}, Lcom/leo/salt/tools/constants/DialogAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tools/constants/DialogAppOptions$deleteAll$1;->this$0:Lcom/leo/salt/tools/constants/DialogAppOptions;

    const-string v2, "app_manage_magisk_info"

    invoke-virtual {v1, v2}, Lcom/leo/salt/tools/constants/DialogAppOptions;->DialogAppTextView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/leo/salt/tools/constants/DialogAppOptions$deleteAll$1$1;

    invoke-direct {v2, p0}, Lcom/leo/salt/tools/constants/DialogAppOptions$deleteAll$1$1;-><init>(Lcom/leo/salt/tools/constants/DialogAppOptions$deleteAll$1;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/tools/constants/DialogAppOptions$deleteAll$1;->this$0:Lcom/leo/salt/tools/constants/DialogAppOptions;

    invoke-static {v0}, Lcom/leo/salt/tools/constants/DialogAppOptions;->access$_deleteAll(Lcom/leo/salt/tools/constants/DialogAppOptions;)V

    :goto_0
    return-void
.end method
