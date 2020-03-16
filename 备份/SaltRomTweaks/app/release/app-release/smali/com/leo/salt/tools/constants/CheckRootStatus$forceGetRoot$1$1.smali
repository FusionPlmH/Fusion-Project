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

    sget-object v0, Lcom/leo/salt/tools/constants/KeepShellPublic;->INSTANCE:Lcom/leo/salt/tools/constants/KeepShellPublic;

    invoke-virtual {v0}, Lcom/leo/salt/tools/constants/KeepShellPublic;->tryExit()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;

    iget-object v1, v1, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1;->this$0:Lcom/leo/salt/tools/constants/CheckRootStatus;

    invoke-virtual {v1}, Lcom/leo/salt/tools/constants/CheckRootStatus;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1001e4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1001e3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1$1;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1$1;-><init>(Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f1001e2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1$2;

    invoke-direct {v1, p0}, Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1$2;-><init>(Lcom/leo/salt/tools/constants/CheckRootStatus$forceGetRoot$1$1;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f1001e1

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
