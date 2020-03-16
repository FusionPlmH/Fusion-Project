.class final Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1;
.super Ljava/lang/Object;
.source "CheckRootStatus.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;->run()V
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
.field final synthetic this$0:Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;


# direct methods
.method constructor <init>(Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    invoke-virtual {v0}, Lcom/leo/script/KeepShellPublic;->tryExit()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;

    iget-object v1, v1, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus;

    invoke-virtual {v1}, Lcom/leo/salt/tools/constants/CheckRootStatus;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1000f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1$builder$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1$builder$1;-><init>(Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f1000be

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1$builder$2;->INSTANCE:Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1$builder$2;

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f1000bd

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;

    iget-object v1, v1, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus;

    invoke-static {v1}, Lcom/leo/salt/tools/constants/CheckRootStatus;->access$getSkip$p(Lcom/leo/salt/tools/constants/CheckRootStatus;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    const v1, 0x7f1000bf

    new-instance v2, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1$1;

    invoke-direct {v2, p0}, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1$1;-><init>(Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    sget-object v1, Lcom/leo/script/DialogHelper;->Companion:Lcom/leo/script/DialogHelper$Companion;

    const-string v2, "builder"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/leo/script/DialogHelper$Companion;->animDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    return-void
.end method
